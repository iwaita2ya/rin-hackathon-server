require 'test_helper'

class FieldRecordDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @field_record_detail = field_record_details(:one)
  end

  test "should get index" do
    get field_record_details_url
    assert_response :success
  end

  test "should get new" do
    get new_field_record_detail_url
    assert_response :success
  end

  test "should create field_record_detail" do
    assert_difference('FieldRecordDetail.count') do
      post field_record_details_url, params: { field_record_detail: {  } }
    end

    assert_redirected_to field_record_detail_url(FieldRecordDetail.last)
  end

  test "should show field_record_detail" do
    get field_record_detail_url(@field_record_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_field_record_detail_url(@field_record_detail)
    assert_response :success
  end

  test "should update field_record_detail" do
    patch field_record_detail_url(@field_record_detail), params: { field_record_detail: {  } }
    assert_redirected_to field_record_detail_url(@field_record_detail)
  end

  test "should destroy field_record_detail" do
    assert_difference('FieldRecordDetail.count', -1) do
      delete field_record_detail_url(@field_record_detail)
    end

    assert_redirected_to field_record_details_url
  end
end
