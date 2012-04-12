class Admin::CodesController < Admin::AdminController
  def index
    @codes = Code.search(params[:q], page, 10)
  end

  def show
    @code = Code.find(params[:id])
  end

  def new
    @code = Code.new
  end

  def edit
    @code = Code.find(params[:id])
  end

  def create
    @code = Code.new(params[:code])
    if @code.save
      redirect_to(admin_code_path(@code))
    else
      render :action => :new
    end
  end

  def update
    @code = Code.find(params[:id])

    if @code.update_attributes(params[:code])
      redirect_to(admin_code_path(@code), :notice => "Code was successfully updated.")
    else
      render :action => :edit
    end
  end

  def destroy
    @code = Code.find(params[:id])
    @code.destroy
    redirect_to(admin_codes_path)
  end

  private

  def page
    params[:page] || 1
  end
end
