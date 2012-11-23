class Admin::CompetitionsController < Admin::AdminController
  def index
    @admin_competitions = Admin::Competition.paginate(per_page: 20, page: params[:page])
  end

  def new
    @admin_competition = Admin::Competition.new
  end

  def create
    @admin_competition = Admin::Competition.new(params[:admin_competition])

    if @admin_competition.save
      redirect_to @admin_competition, notice: 'Successfully created.'
    else
      render action: "new"
    end
  end

  def edit
    @admin_competition = Admin::Competition.find(params[:id])
  end

  def show
    @admin_competition = Admin::Competition.find(params[:id])
  end

  def update
    @admin_competition = Admin::Competition.find(params[:id])

    if @admin_competition.update_attributes(params[:admin_competition])
      redirect_to @admin_competition, notice: 'Successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @admin_competition = Admin::Competition.find(params[:id])
    @admin_competition.destroy
    redirect_to @admin_competition, notice: 'Successfully deleted.'
  end
end
