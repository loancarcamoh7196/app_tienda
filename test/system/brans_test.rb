require "application_system_test_case"

class BransTest < ApplicationSystemTestCase
  setup do
    @bran = brans(:one)
  end

  test "visiting the index" do
    visit brans_url
    assert_selector "h1", text: "Brans"
  end

  test "creating a Bran" do
    visit brans_url
    click_on "New Bran"

    fill_in "Description", with: @bran.description
    fill_in "Icon", with: @bran.icon
    fill_in "Name", with: @bran.name
    click_on "Create Bran"

    assert_text "Bran was successfully created"
    click_on "Back"
  end

  test "updating a Bran" do
    visit brans_url
    click_on "Edit", match: :first

    fill_in "Description", with: @bran.description
    fill_in "Icon", with: @bran.icon
    fill_in "Name", with: @bran.name
    click_on "Update Bran"

    assert_text "Bran was successfully updated"
    click_on "Back"
  end

  test "destroying a Bran" do
    visit brans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bran was successfully destroyed"
  end
end
