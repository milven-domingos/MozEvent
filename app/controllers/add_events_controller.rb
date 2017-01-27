class AddEventsController < ApplicationController
  before_action :set_add_event, only: [:show, :edit, :update, :destroy]

  # GET /add_events
  # GET /add_events.json
  def index
    @add_events = AddEvent.all
  end

  # GET /add_events/1
  # GET /add_events/1.json
  def show
  end

  # GET /add_events/new
  def new
    @add_event = AddEvent.new
  end

  # GET /add_events/1/edit
  def edit
  end

  # POST /add_events
  # POST /add_events.json
  def create
    @add_event = AddEvent.new(add_event_params)

    respond_to do |format|
      if @add_event.save
        format.html { redirect_to @add_event, notice: 'Add event was successfully created.' }
        format.json { render :show, status: :created, location: @add_event }
      else
        format.html { render :new }
        format.json { render json: @add_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_events/1
  # PATCH/PUT /add_events/1.json
  def update
    respond_to do |format|
      if @add_event.update(add_event_params)
        format.html { redirect_to @add_event, notice: 'Add event was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_event }
      else
        format.html { render :edit }
        format.json { render json: @add_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_events/1
  # DELETE /add_events/1.json
  def destroy
    @add_event.destroy
    respond_to do |format|
      format.html { redirect_to add_events_url, notice: 'Add event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_event
      @add_event = AddEvent.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_event_params
      params.require(:add_event).permit(:nome_do_event, :local_do_evento, :data_do_evento, :hora_do_event, :descricao_do_evento)
    end
end
