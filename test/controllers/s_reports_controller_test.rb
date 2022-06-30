require "test_helper"

class SReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @s_report = s_reports(:one)
  end

  test "should get index" do
    get s_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_s_report_url
    assert_response :success
  end

  test "should create s_report" do
    assert_difference("SReport.count") do
      post s_reports_url, params: { s_report: { ht: @s_report.ht, links: @s_report.links, name: @s_report.name, notes: @s_report.notes, pos: @s_report.pos, school: @s_report.school, scout: @s_report.scout, wt: @s_report.wt } }
    end

    assert_redirected_to s_report_url(SReport.last)
  end

  test "should show s_report" do
    get s_report_url(@s_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_s_report_url(@s_report)
    assert_response :success
  end

  test "should update s_report" do
    patch s_report_url(@s_report), params: { s_report: { ht: @s_report.ht, links: @s_report.links, name: @s_report.name, notes: @s_report.notes, pos: @s_report.pos, school: @s_report.school, scout: @s_report.scout, wt: @s_report.wt } }
    assert_redirected_to s_report_url(@s_report)
  end

  test "should destroy s_report" do
    assert_difference("SReport.count", -1) do
      delete s_report_url(@s_report)
    end

    assert_redirected_to s_reports_url
  end
end
