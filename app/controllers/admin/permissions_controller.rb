class Admin::PermissionsController < Admin::AdminController
  def index
    @admin_permissions = Admin::Permission.paginate(per_page: 20, page: params[:page])
  end

  def new
    @admin_permission = Admin::Permission.new
  end

  def create
    @admin_permission = Admin::Permission.new(params[:admin_permission])

    if @admin_permission.save
      redirect_to @admin_permission, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @admin_permission = Admin::Permission.find(params[:id])
  end

  def show
    @admin_permission = Admin::Permission.find(params[:id])
  end

  def update
    @admin_permission = Admin::Permission.find(params[:id])

    if @admin_permission.update_attributes(params[:admin_permission])
      redirect_to @admin_permission, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @admin_permission = Admin::Permission.find(params[:id])
    @admin_permission.destroy
    redirect_to @admin_permission, notice: 'Successfully deleted.'
  end
end
