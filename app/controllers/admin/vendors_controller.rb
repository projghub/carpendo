class Admin::VendorsController < Admin::AdminController
  def index
    @admin_vendors = Admin::Vendor.paginate(per_page: 20, page: params[:page])
  end

  def new
    @admin_vendor = Admin::Vendor.new
  end

  def create
    @admin_vendor = Admin::Vendor.new(params[:admin_vendor])

    if @admin_vendor.save
      redirect_to @admin_vendor, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @admin_vendor = Admin::Vendor.find(params[:id])
  end

  def show
    @admin_vendor = Admin::Vendor.find(params[:id])
  end

  def update
    @admin_vendor = Admin::Vendor.find(params[:id])

    if @admin_vendor.update_attributes(params[:admin_vendor])
      redirect_to @admin_vendor, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @admin_vendor = Admin::Vendor.find(params[:id])
    @admin_vendor.destroy
    redirect_to @admin_vendor, notice: 'Successfully deleted.'
  end
end
