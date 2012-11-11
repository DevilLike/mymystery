class LiteraturesController < ApplicationController
  # GET /literatures
  # GET /literatures.json
  def index
    @literatures = Literature.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @literatures }
    end
  end

  # GET /literatures/1
  # GET /literatures/1.json
  def show
    @literature = Literature.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @literature }
    end
  end

  # GET /literatures/new
  # GET /literatures/new.json
  def new
    @literature = Literature.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @literature }
    end
  end

  # GET /literatures/1/edit
  def edit
    @literature = Literature.find(params[:id])
  end

  # POST /literatures
  # POST /literatures.json
  def create
    @literature = Literature.new(params[:literature])

    respond_to do |format|
      if @literature.save
        format.html { redirect_to @literature, notice: 'Literature was successfully created.' }
        format.json { render json: @literature, status: :created, location: @literature }
      else
        format.html { render action: "new" }
        format.json { render json: @literature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /literatures/1
  # PUT /literatures/1.json
  def update
    @literature = Literature.find(params[:id])

    respond_to do |format|
      if @literature.update_attributes(params[:literature])
        format.html { redirect_to @literature, notice: 'Literature was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @literature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /literatures/1
  # DELETE /literatures/1.json
  def destroy
    @literature = Literature.find(params[:id])
    @literature.destroy

    respond_to do |format|
      format.html { redirect_to literatures_url }
      format.json { head :no_content }
    end
  end
end
