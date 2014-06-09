class QuestionsQuizzesController < ApplicationController
  before_action :set_questions_quiz, only: [:show, :edit, :update, :destroy]

  # GET /questions_quizzes
  # GET /questions_quizzes.json
  def index
    @questions_quizzes = QuestionsQuiz.all
  end

  # GET /questions_quizzes/1
  # GET /questions_quizzes/1.json
  def show
  end

  # GET /questions_quizzes/new
  def new
    @questions_quiz = QuestionsQuiz.new
  end

  # GET /questions_quizzes/1/edit
  def edit
  end

  # POST /questions_quizzes
  # POST /questions_quizzes.json
  def create
    @questions_quiz = QuestionsQuiz.new(questions_quiz_params)

    respond_to do |format|
      if @questions_quiz.save
        format.html { redirect_to @questions_quiz, notice: 'Questions quiz was successfully created.' }
        format.json { render action: 'show', status: :created, location: @questions_quiz }
      else
        format.html { render action: 'new' }
        format.json { render json: @questions_quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions_quizzes/1
  # PATCH/PUT /questions_quizzes/1.json
  def update
    respond_to do |format|
      if @questions_quiz.update(questions_quiz_params)
        format.html { redirect_to @questions_quiz, notice: 'Questions quiz was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @questions_quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions_quizzes/1
  # DELETE /questions_quizzes/1.json
  def destroy
    @questions_quiz.destroy
    respond_to do |format|
      format.html { redirect_to questions_quizzes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questions_quiz
      @questions_quiz = QuestionsQuiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questions_quiz_params
      params.require(:questions_quiz).permit(:quiz_id, :question_id, :user_answer)
    end
end
