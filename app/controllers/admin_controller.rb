class AdminController < ApplicationController
 def index
    @visitors = Visitor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @visitors }
    end
  end

  def indexa
    @student_check_outs = StudentCheckOut.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_check_outs }
    end
  end

  def indexb
    @hisd_employees = HisdEmployee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hisd_employees }
    end
  end
end
