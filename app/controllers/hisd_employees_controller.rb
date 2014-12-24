class HisdEmployeesController < ApplicationController
  # GET /hisd_employees
  # GET /hisd_employees.json
  def index
    @hisd_employees = HisdEmployee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hisd_employees }
    end
  end

  # GET /hisd_employees/1
  # GET /hisd_employees/1.json
  def show
    @hisd_employee = HisdEmployee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hisd_employee }
    end
  end

  # GET /hisd_employees/new
  # GET /hisd_employees/new.json
  def new
    @hisd_employee = HisdEmployee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hisd_employee }
    end
  end

  # GET /hisd_employees/1/edit
  def edit
    @hisd_employee = HisdEmployee.find(params[:id])
  end

  # POST /hisd_employees
  # POST /hisd_employees.json
  def create
    @hisd_employee = HisdEmployee.new(params[:hisd_employee])

    respond_to do |format|
      if @hisd_employee.save
        format.html { redirect_to @hisd_employee, alert: 'Hisd employee was successfully created.' }
        format.json { render json: @hisd_employee, status: :created, location: @hisd_employee }
      else
        format.html { render action: "new" }
        format.json { render json: @hisd_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hisd_employees/1
  # PUT /hisd_employees/1.json
  def update
    @hisd_employee = HisdEmployee.find(params[:id])

    respond_to do |format|
      if @hisd_employee.update_attributes(params[:hisd_employee])
        format.html { redirect_to @hisd_employee, notice: 'Hisd employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hisd_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hisd_employees/1
  # DELETE /hisd_employees/1.json
  def destroy
    @hisd_employee = HisdEmployee.find(params[:id])
    @hisd_employee.destroy

    respond_to do |format|
      format.html { redirect_to hisd_employees_url }
      format.json { head :no_content }
    end
  end
end
