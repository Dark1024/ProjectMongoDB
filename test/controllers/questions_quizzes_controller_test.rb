require 'test_helper'

class QuestionsQuizzesControllerTest < ActionController::TestCase
  setup do
    @questions_quiz = questions_quizzes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions_quizzes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questions_quiz" do
    assert_difference('QuestionsQuiz.count') do
      post :create, questions_quiz: { question_id: @questions_quiz.question_id, quiz_id: @questions_quiz.quiz_id, user_answer: @questions_quiz.user_answer }
    end

    assert_redirected_to questions_quiz_path(assigns(:questions_quiz))
  end

  test "should show questions_quiz" do
    get :show, id: @questions_quiz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questions_quiz
    assert_response :success
  end

  test "should update questions_quiz" do
    patch :update, id: @questions_quiz, questions_quiz: { question_id: @questions_quiz.question_id, quiz_id: @questions_quiz.quiz_id, user_answer: @questions_quiz.user_answer }
    assert_redirected_to questions_quiz_path(assigns(:questions_quiz))
  end

  test "should destroy questions_quiz" do
    assert_difference('QuestionsQuiz.count', -1) do
      delete :destroy, id: @questions_quiz
    end

    assert_redirected_to questions_quizzes_path
  end
end
