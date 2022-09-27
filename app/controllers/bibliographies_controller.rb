class BibliographiesController < ApplicationController
  before_action :set_bibliographies, only: %i[ show update destroy ]

  # GET /bibliographies/1 or /bibliographies/1.json
  def show
  end

  # POST /bibliographies or /bibliographies.json
  def create
    @bibliography = Bibliography.new(bibliography_params)

    respond_to do |format|
      if @bibliography.save
        format.html { redirect_to blog_url(@bibliography.blog), notice: "Se creó la autoevaluación correctamente." }
        format.json { render :show, status: :created, location: @bibliography.blog }
      else
        format.html { redirect_to blog_url(@bibliography.blog), status: :unprocessable_entity }
        format.json { render json: @bibliography.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bibliographies/1 or /bibliographies/1.json
  def update
    respond_to do |format|
      if @bibliography.update(bibliography_params)
        format.html { redirect_to blog_url(@bibliography.blog), notice: "Se editó la autoevaluación correctamente." }
        format.json { render :show, status: :ok, location: @bibliography.blog }
      else
        format.html { redirect_to blog_url(@bibliography.blog), status: :unprocessable_entity }
        format.json { render json: @bibliography.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bibliographies/1 or /bibliographies/1.json
  def destroy
    blog = @bibliography.blog
    @bibliography.destroy

    respond_to do |format|
      format.html { redirect_to blog_url(blog), notice: "Se borró la autoevaluación correctamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bibliographies
      @bibliography = Bibliography.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bibliography_params
      params.require(:bibliography).permit(:author, :title, :year, :city, :publisher, :blog_id)
    end
end
