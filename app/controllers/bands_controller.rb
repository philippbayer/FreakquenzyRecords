class BandsController < ApplicationController
  def index
    @bands = Band.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bands }
    end
  end

  def show
    @band = Band.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @band }
    end
  end

  def new
    @band = Band.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @band }
    end
  end

  def edit
    @band = Band.find(params[:id])
  end

  def create
    @band = Band.new(params[:band])

    respond_to do |format|
      if @band.save
        format.html { redirect_to @band, notice: 'Band was successfully created.' }
        format.json { render json: @band, status: :created, location: @band }
      else
        format.html { render action: "new" }
        format.json { render json: @band.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @band = Band.find(params[:id])

    respond_to do |format|
      if @band.update_attributes(params[:band])
        format.html { redirect_to @band, notice: 'Band was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @band.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy

    respond_to do |format|
      format.html { redirect_to bands_url }
      format.json { head :no_content }
    end
  end
end
