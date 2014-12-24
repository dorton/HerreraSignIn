class HomeController < ApplicationController
  def index
    @visitor = Visitor.new
    @student_check_out = StudentCheckOut.new
    @hisd_employee = HisdEmployee.new
  end

  def new
    @visitor = Visitor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @visitor }
    end
  end

  def new
    @student_check_out = StudentCheckOut.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_check_out }
    end
  end

  def new
    @hisd_employee = HisdEmployee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hisd_employee }
    end
  end

end
