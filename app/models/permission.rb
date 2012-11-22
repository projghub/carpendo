class Permission < ActiveRecord::Base

  has_many :permission_users
  has_many :users, through: :permissions_users

  def allow?(current_user, namespace, controller, action, resource = nil)
    if current_user
#logger.info "ALLOW: " + current_user.inspect
#logger.info "NAMESPACE: " + namespace.to_s
#logger.info "CONTROLLER: " + controller.to_s
#logger.info "ACTION: " + action.to_s
      return true if current_user.permissions.where(namespace: namespace, controller: 'full').count == 1
      return true if dashboard?(current_user, namespace, controller, action)
      action = get_action(action.to_s)
#logger.info "ACTION: " + action
      current_user.permissions.where(namespace: namespace, controller: controller, action: action).count == 1
    else
      false
    end
  end

private
  def self.advertiser_scope
    where(namespace: 'advertiser')
    .where('"controller" <> ?', 'application')
    .where('"controller" <> ?', 'full')
  end

  def self.advertiser_whitelist_keys
    where(namespace: 'advertiser')
    .where('"controller" <> ?', 'application')
    .pluck(:id)
  end

  def get_action(action)
    return 'show' if (action == 'show' || action == 'index')
    return 'create' if (action == 'new' || action == 'create')
    return 'update' if (action == 'edit' || action == 'update')
    return 'destroy' if action == 'destroy'
    return 'unknown'
  end

  def dashboard?(current_user, namespace, controller, action)
    return current_user.permissions.where(namespace: namespace, controller: 'application').count == 1 && action == 'dashboard'
  end
end
