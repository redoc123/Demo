class ReferenceDataController < ApplicationController
  # GET /reference_data
  # GET /reference_data.json
  def index
    @reference_data = ReferenceDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reference_data }
    end
  end

  # GET /reference_data/1
  # GET /reference_data/1.json
  def show
    @reference_datum = ReferenceDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reference_datum }
    end
  end

  # GET /reference_data/new
  # GET /reference_data/new.json
  def new
    @reference_datum = ReferenceDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reference_datum }
    end
  end

  # GET /reference_data/1/edit
  def edit
    @reference_datum = ReferenceDatum.find(params[:id])
  end

  # POST /reference_data
  # POST /reference_data.json
  def create
    @reference_datum = ReferenceDatum.new(params[:reference_datum])

    respond_to do |format|
      if @reference_datum.save
        format.html { redirect_to @reference_datum, notice: 'Reference datum was successfully created.' }
        format.json { render json: @reference_datum, status: :created, location: @reference_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @reference_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reference_data/1
  # PUT /reference_data/1.json
  def update
    @reference_datum = ReferenceDatum.find(params[:id])

    respond_to do |format|
      if @reference_datum.update_attributes(params[:reference_datum])
        format.html { redirect_to @reference_datum, notice: 'Reference datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reference_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reference_data/1
  # DELETE /reference_data/1.json
  def destroy
    @reference_datum = ReferenceDatum.find(params[:id])
    @reference_datum.destroy

    respond_to do |format|
      format.html { redirect_to reference_data_url }
      format.json { head :no_content }
    end
  end
end
