require 'test_helper'

class StudentSubjectControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_subject_index_url
    assert_response :success
  end

  test "should get show" do
    get student_subject_show_url
    assert_response :success
  end

  test "should get new" do
    get student_subject_new_url
    assert_response :success
  end

  test "should get create" do
    get student_subject_create_url
    assert_response :success
  end

  test "should get edit" do
    get student_subject_edit_url
    assert_response :success
  end

  test "should get update" do
    get student_subject_update_url
    assert_response :success
  end

  test "should get destroy" do
    get student_subject_destroy_url
    assert_response :success
  end

end
