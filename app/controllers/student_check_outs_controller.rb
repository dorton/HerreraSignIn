class StudentCheckOutsController < ApplicationController
  # GET /student_check_outs
  # GET /student_check_outs.json
  def index
    @student_check_outs = StudentCheckOut.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_check_outs }
    end
  end

  # GET /student_check_outs/1
  # GET /student_check_outs/1.json
  def show
    @student_check_out = StudentCheckOut.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_check_out }
    end
  end

  # GET /student_check_outs/new
  # GET /student_check_outs/new.json
  def new
    @student_check_out = StudentCheckOut.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_check_out }
    end
  end

  # GET /student_check_outs/1/edit
  def edit
    @student_check_out = StudentCheckOut.find(params[:id])
  end

  # POST /student_check_outs
  # POST /student_check_outs.json
  def create
    @student_check_out = StudentCheckOut.new(params[:student_check_out])

    respond_to do |format|
      if @student_check_out.save
        format.html { redirect_to @student_check_out, notice: 'Student check out was successfully created.' }
        format.json { render json: @student_check_out, status: :created, location: @student_check_out }
      else
        format.html { render action: "new" }
        format.json { render json: @student_check_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_check_outs/1
  # PUT /student_check_outs/1.json
  def update
    @student_check_out = StudentCheckOut.find(params[:id])

    respond_to do |format|
      if @student_check_out.update_attributes(params[:student_check_out])
        format.html { redirect_to @student_check_out, notice: 'Student check out was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_check_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_check_outs/1
  # DELETE /student_check_outs/1.json
  def destroy
    @student_check_out = StudentCheckOut.find(params[:id])
    @student_check_out.destroy

    respond_to do |format|
      format.html { redirect_to student_check_outs_url }
      format.json { head :no_content }
    end
  end
end
