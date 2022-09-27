class ApunSelfEvaluationsController < ApplicationController
  before_action :set_apun_self_evaluation, only: %i[ show update destroy ]

  # GET /apun_self_evaluations/1 or /apun_self_evaluations/1.json
  def show
  end

  # POST /apun_self_evaluations or /apun_self_evaluations.json
  def create
    @apun_self_evaluation = ApunSelfEvaluation.new(apun_self_evaluation_params)

    respond_to do |format|
      if @apun_self_evaluation.save
        format.html { redirect_to blog_url(@apun_self_evaluation.blog), notice: "Se creó la autoevaluación correctamente." }
        format.json { render :show, status: :created, location: @apun_self_evaluation.blog }
      else
        format.html { redirect_to blog_url(@apun_self_evaluation.blog), status: :unprocessable_entity }
        format.json { render json: @apun_self_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apun_self_evaluations/1 or /apun_self_evaluations/1.json
  def update
    respond_to do |format|
      if @apun_self_evaluation.update(apun_self_evaluation_params)
        format.html { redirect_to blog_url(@apun_self_evaluation.blog), notice: "Se editó la autoevaluación correctamente." }
        format.json { render :show, status: :ok, location: @apun_self_evaluation.blog }
      else
        format.html { redirect_to blog_url(@apun_self_evaluation.blog), status: :unprocessable_entity }
        format.json { render json: @apun_self_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apun_self_evaluations/1 or /apun_self_evaluations/1.json
  def destroy
    blog = @apun_self_evaluation.blog
    @apun_self_evaluation.destroy

    respond_to do |format|
      format.html { redirect_to blog_url(blog), notice: "Se borró la autoevaluación correctamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apun_self_evaluation
      @apun_self_evaluation = ApunSelfEvaluation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apun_self_evaluation_params
      params.require(:apun_self_evaluation).permit(:answer1, :answer2, :answer3, :answer4, :answer5, :answer6, :answer7, :answer8, :answer9, :answer10, :answer11, :answer12, :answer13, :answer14, :blog_id)
    end
end
