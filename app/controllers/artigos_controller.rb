class ArtigosController < ApplicationController
 before_filter :authenticate_admin!, except: [ :new, :show, :create]

  before_action :set_artigo, only: [ :show, :update, :destroy]

  # GET /artigos
  # GET /artigos.json
 

  # GET /artigos/1
  # GET /artigos/1.json
  
  def show
  end

  # GET /artigos/new
  def new
    @artigo = Artigo.new
  end

  # GET /artigos/1/edit
 

  # POST /artigos
  # POST /artigos.json
  def create
    @artigo = Artigo.new(artigo_params)

    respond_to do |format|

      
        if @artigo.save
          ArtigoMailer.test_confirmation(@artigo).deliver
          format.html { redirect_to @artigo,  notice: "Artigo enviado com sucesso." }
          format.json { render action: 'new', status: :ok, location: @artigo }
        else
          format.html { render action: 'new' }
          format.json { render json: @artigo.errors, status: :unprocessable_entity }
        end
     end
  end

  # PATCH/PUT /artigos/1
  # PATCH/PUT /artigos/1.json
  def update
    
    respond_to do |format|
      if @artigo.update(artigo_params)
        format.html { redirect_to @artigo, notice: 'Artigo alterado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @artigo.errors, status: :unprocessable_entity }
      end
    
  end
  end

  # DELETE /artigos/1
  # DELETE /artigos/1.json
  def destroy
    
    @artigo.destroy
    respond_to do |format|
      format.html { redirect_to artigos_url }
      format.json { head :no_content }
    end
  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artigo
      @artigo = Artigo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artigo_params
      params.require(:artigo).permit(:titulo, :autor, :pdf)
    end
end
