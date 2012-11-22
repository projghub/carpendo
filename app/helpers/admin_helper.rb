module AdminHelper
  def permission_namespaces
    [
      ['Admin', 'admin'],
      ['Advertiser', 'advertiser']
    ]
  end

  def permission_controllers
    [
      ['Application', 'application'],
      ['Full', 'full'],
      ['Admin::Users', 'admin/users']
    ]
  end

  def permission_actions
    [
      ['Show/Index', 'show'],
      ['New/Create', 'create'],
      ['Edit/Update', 'update'],
      ['Destroy', 'destroy']
    ]
  end
end
