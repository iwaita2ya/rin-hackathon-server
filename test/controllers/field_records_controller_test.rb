require 'test_helper'

class FieldRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @field_record = field_records(:one)
  end

  test "should get index" do
    get field_records_url
    assert_response :success
  end

  test "should get new" do
    get new_field_record_url
    assert_response :success
  end

  test "should create field_record" do
    assert_difference('FieldRecord.count') do
      post field_records_url, params: { field_record: {  } }
    end

    assert_redirected_to field_record_url(FieldRecord.last)
  end

  test "should show field_record" do
    get field_record_url(@field_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_field_record_url(@field_record)
    assert_response :success
  end

  test "should update field_record" do
    patch field_record_url(@field_record), params: { field_record: {  } }
    assert_redirected_to field_record_url(@field_record)
  end

  test "should destroy field_record" do
    assert_difference('FieldRecord.count', -1) do
      delete field_record_url(@field_record)
    end

    assert_redirected_to field_records_url
  end
end
