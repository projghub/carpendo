class Admin::CategoriesController < Admin::AdminController
  def index
    @admin_categories = Admin::Category.paginate(:page => params[:page])
  end

  def new
    @admin_category = Admin::Category.new
  end

  def create
    @admin_category = Admin::Category.new(params[:admin_category])

    if @admin_category.save
      redirect_to @admin_category, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @admin_category = Admin::Category.find(params[:id])
  end

  def show
    @admin_category = Admin::Category.find(params[:id])
  end

  def update
    @admin_category = Admin::Category.find(params[:id])

    if @admin_category.update_attributes(params[:admin_category])
      redirect_to @admin_category, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @admin_category = Admin::Category.find(params[:id])
    @admin_category.destroy
    redirect_to @admin_category, notice: 'Successfully deleted.'
  end
end
