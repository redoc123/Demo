class WorkSchedulesController < ApplicationController
  # GET /work_schedules
  # GET /work_schedules.json
  def index
    @work_schedules_by_date = WorkSchedule.group(&:date)
    @date = Date.today

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @work_schedules }
    end
  end

  # GET /work_schedules/1
  # GET /work_schedules/1.json
  def show
    @work_schedule = WorkSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @work_schedule }
    end
  end

  # GET /work_schedules/new
  # GET /work_schedules/new.json
  def new
    @work_schedule = WorkSchedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @work_schedule }
    end
  end

  # GET /work_schedules/new
  # GET /work_schedules/new.json
  def newdate(date=Date.today)
    @work_schedule = WorkSchedule.new
    @work_schedule.date = date

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @work_schedule }
    end
  end


  # GET /work_schedules/1/edit
  def edit
    @work_schedule = WorkSchedule.find(params[:id])
  end

  # POST /work_schedules
  # POST /work_schedules.json
  def create
    @work_schedule = WorkSchedule.new(params[:work_schedule])

    respond_to do |format|
      if @work_schedule.save
        format.html { redirect_to @work_schedule, notice: 'Work schedule was successfully created.' }
        format.json { render json: @work_schedule, status: :created, location: @work_schedule }
      else
        format.html { render action: "new" }
        format.json { render json: @work_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /work_schedules/1
  # PUT /work_schedules/1.json
  def update
    @work_schedule = WorkSchedule.find(params[:id])

    respond_to do |format|
      if @work_schedule.update_attributes(params[:work_schedule])
        format.html { redirect_to @work_schedule, notice: 'Work schedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @work_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_schedules/1
  # DELETE /work_schedules/1.json
  def destroy
    @work_schedule = WorkSchedule.find(params[:id])
    @work_schedule.destroy

    respond_to do |format|
      format.html { redirect_to work_schedules_url }
      format.json { head :no_content }
    end
  end
end
