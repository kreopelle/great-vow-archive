# frozen_string_literal: true

class DharmaTalksController < ApplicationController
  before_action :set_dharma_talk, only: %i[show edit update destroy]

  # GET /dharma_talks or /dharma_talks.json
  def index
    @dharma_talks = DharmaTalk.all
  end

  # GET /dharma_talks/1 or /dharma_talks/1.json
  def show; end

  # GET /dharma_talks/new
  def new
    @dharma_talk = DharmaTalk.new
  end

  # GET /dharma_talks/1/edit
  def edit; end

  # POST /dharma_talks or /dharma_talks.json
  def create
    @dharma_talk = DharmaTalk.new(dharma_talk_params)

    respond_to do |format|
      if @dharma_talk.save
        format.html { redirect_to @dharma_talk, notice: 'Dharma talk was successfully created.' }
        format.json { render :show, status: :created, location: @dharma_talk }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dharma_talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dharma_talks/1 or /dharma_talks/1.json
  def update
    respond_to do |format|
      if @dharma_talk.update(dharma_talk_params)
        format.html { redirect_to @dharma_talk, notice: 'Dharma talk was successfully updated.' }
        format.json { render :show, status: :ok, location: @dharma_talk }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dharma_talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dharma_talks/1 or /dharma_talks/1.json
  def destroy
    @dharma_talk.destroy
    respond_to do |format|
      format.html { redirect_to dharma_talks_url, notice: 'Dharma talk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dharma_talk
    @dharma_talk = DharmaTalk.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def dharma_talk_params
    params.require(:dharma_talk).permit(:title, :description, :speaker_id, :location_id, :date)
  end
end
