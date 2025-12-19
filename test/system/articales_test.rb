require "application_system_test_case"

class ArticalesTest < ApplicationSystemTestCase
  setup do
    @articale = articales(:one)
  end

  test "visiting the index" do
    visit articales_url
    assert_selector "h1", text: "Articales"
  end

  test "should create articale" do
    visit articales_url
    click_on "New articale"

    click_on "Create Articale"

    assert_text "Articale was successfully created"
    click_on "Back"
  end

  test "should update Articale" do
    visit articale_url(@articale)
    click_on "Edit this articale", match: :first

    click_on "Update Articale"

    assert_text "Articale was successfully updated"
    click_on "Back"
  end

  test "should destroy Articale" do
    visit articale_url(@articale)
    click_on "Destroy this articale", match: :first

    assert_text "Articale was successfully destroyed"
  end
end
