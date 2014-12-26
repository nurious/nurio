class DepartmentsController < ApplicationController
  before_action :set_department, only: [:update, :destroy, :edit, :show]
  before_action :set_organization, only: [:create, :new, :index]

  # GET /departments
  # GET /departments.json
  def index
    # @departments = Department.all
  end

  # GET /departments/1
  # GET /departments/1.json
  def show
    @positions = @department.positions.all
  end

  # GET /departments/new
  def new
    @department = Department.new
    # @organization = @department.organization.find(params[:id])
  end

  # GET /departments/1/edit
  def edit
  end

  # POST /departments
  # POST /departments.json
  def create
    # @department = Department.new(department_params)
    @department = @organization.departments.new(department_params)
    # @position = @department.positions.new(position_params)

    respond_to do |format|
      if @department.save
        format.html { redirect_to organization_departments_path, notice: 'Department was successfully created.' }
        format.json { render :show, status: :created, location: @department }
      else
        format.html { render :new }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departments/1
  # PATCH/PUT /departments/1.json
  def update
    respond_to do |format|
      if @department.update(department_params)
        format.html { redirect_to @department, notice: 'Department was successfully updated.' }
        format.json { render :show, status: :ok, location: @department }
      else
        format.html { render :edit }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departments/1
  # DELETE /departments/1.json
  def destroy
    @department.destroy
    respond_to do |format|
      format.html { redirect_to organization_departments_url(:organization_id), notice: 'Department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department
      @department = Department.find(params[:id])
    end

    def set_organization
      @organization = Organization.find(params[:organization_id])
    end   

    # Never trust parameters from the scary internet, only allow the white list through.
    def department_params
      params.require(:department).permit(:name, :organization_id)
    end
end
