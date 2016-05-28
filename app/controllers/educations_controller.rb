class EducationsController < ApplicationController
  before_action :set_education, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:index, :show]


  # GET /educations
  # GET /educations.json
  def index
    @educations = Education.all
  end

  # GET /educations/1
  # GET /educations/1.json
  def show
  end

  # GET /educations/new
  def new
    @education = current_admin.educations.build
    @admin = Admin.new
  end

  # GET /educations/1/edit
  def edit
    @admins = Admin.all
    @admin = Admin.new
  end

  # POST /educations
  # POST /educations.json
  def create
    @education = current_admin.educations.build(education_params)

    respond_to do |format|
      if @education.save
        format.html { redirect_to "/admin", notice: 'Pomyślnie dodano edukację.' }
        format.json { render :show, status: :created, location: @education }
      else
        format.html { render :new }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /educations/1
  # PATCH/PUT /educations/1.json
  def update
    respond_to do |format|
      if @education.update(education_params)
        format.html { redirect_to @education, notice: 'Pomyślnie zaktualizowano edukację.' }
        format.json { render :show, status: :ok, location: @education }
      else
        format.html { render :edit }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educations/1
  # DELETE /educations/1.json
  def destroy
    @education.destroy
    respond_to do |format|
      format.html { redirect_to educations_url, notice: 'Education was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education
      @education = Education.find(params[:id])
    end

  def correct_admin
    @education = current_admin.educations.find_by(id: params[:id])
    redirect_to '/login', notice: 'Nie jesteś uprawniony do edycji tej edukacji!'
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def education_params
      params.require(:education).permit(:category, :admin_id, :description)
    end
end
