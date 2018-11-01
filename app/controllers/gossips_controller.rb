class GossipsController < ApplicationController
  #before_action :set_gossip, only: [:show, :edit, :update, :destroy]

  # GET /gossips
  # GET /gossips.json
  def index
    @gossips = Gossip.all
  end

  # GET /gossips/1
  # GET /gossips/1.json
  def show
    @gossip = Gossip.find(params[:id])
    @comment = @gossip.comments.new
    @comments = Comment.all
  end

  # GET /gossips/new
  def new
    @gossip = Gossip.new
  end

  # GET /gossips/1/edit
  
def edit
  end

  # POST /gossips
  # POST /gossips.json
  def create
    @gossip = Gossip.new(gossip_params)

    respond_to do |format|
      if @gossip.save
        format.html { redirect_to @gossip, notice: 'Gossip was successfully created.' }
        format.json { render :show, status: :created, location: @gossip }
      else
        format.html { render :new }
        format.json { render json: @gossip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gossips/1
  # PATCH/PUT /gossips/1.json
  def update
    respond_to do |format|
      if @gossip.update(gossip_params)
        format.html { redirect_to @gossip, notice: 'Gossip was successfully updated.' }
        format.json { render :show, status: :ok, location: @gossip }
      else
        format.html { render :edit }
        format.json { render json: @gossip.errors, status: :unprocessable_entity }
      end
    end
  end


  # def destroy
  #    @gossip = Gossip.find(params[:id])
  #    @gossip.delete
  #    redirect_to gossips_path , :notice => "Your patient has been deleted"
  # end
  # DELETE /gossips/1
  # DELETE /gossips/1.json
  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.delete
    respond_to do |format|
      format.html { redirect_to gossips_url, notice: 'Gossip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gossip
      @gossip = Gossip.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
   def gossip_params
     params.require(:gossip).permit(:anonymous_gossiper, :content, :id)
   end
end
