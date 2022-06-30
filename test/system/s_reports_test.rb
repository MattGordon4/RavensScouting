require "application_system_test_case"

class SReportsTest < ApplicationSystemTestCase
  setup do
    @s_report = s_reports(:one)
  end

  test "visiting the index" do
    visit s_reports_url
    assert_selector "h1", text: "S reports"
  end

  test "should create s report" do
    visit s_reports_url
    click_on "New s report"

    fill_in "Ht", with: @s_report.ht
    fill_in "Links", with: @s_report.links
    fill_in "Name", with: @s_report.name
    fill_in "Notes", with: @s_report.notes
    fill_in "Pos", with: @s_report.pos
    fill_in "School", with: @s_report.school
    fill_in "Scout", with: @s_report.scout
    fill_in "Wt", with: @s_report.wt
    click_on "Create S report"

    assert_text "S report was successfully created"
    click_on "Back"
  end

  test "should update S report" do
    visit s_report_url(@s_report)
    click_on "Edit this s report", match: :first

    fill_in "Ht", with: @s_report.ht
    fill_in "Links", with: @s_report.links
    fill_in "Name", with: @s_report.name
    fill_in "Notes", with: @s_report.notes
    fill_in "Pos", with: @s_report.pos
    fill_in "School", with: @s_report.school
    fill_in "Scout", with: @s_report.scout
    fill_in "Wt", with: @s_report.wt
    click_on "Update S report"

    assert_text "S report was successfully updated"
    click_on "Back"
  end

  test "should destroy S report" do
    visit s_report_url(@s_report)
    click_on "Destroy this s report", match: :first

    assert_text "S report was successfully destroyed"
  end
end
