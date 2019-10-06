require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "creating a Profile" do
    visit profiles_url
    click_on "New Profile"

    fill_in "Address", with: @profile.address
    fill_in "Address2", with: @profile.address2
    fill_in "Birthdate", with: @profile.birthdate
    fill_in "City", with: @profile.city
    fill_in "Firstname", with: @profile.firstname
    fill_in "Lastname", with: @profile.lastname
    fill_in "Married", with: @profile.married
    fill_in "Phone", with: @profile.phone
    fill_in "Sex", with: @profile.sex
    fill_in "State", with: @profile.state
    fill_in "User", with: @profile.user_id
    fill_in "Zip", with: @profile.zip
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit profiles_url
    click_on "Edit", match: :first

    fill_in "Address", with: @profile.address
    fill_in "Address2", with: @profile.address2
    fill_in "Birthdate", with: @profile.birthdate
    fill_in "City", with: @profile.city
    fill_in "Firstname", with: @profile.firstname
    fill_in "Lastname", with: @profile.lastname
    fill_in "Married", with: @profile.married
    fill_in "Phone", with: @profile.phone
    fill_in "Sex", with: @profile.sex
    fill_in "State", with: @profile.state
    fill_in "User", with: @profile.user_id
    fill_in "Zip", with: @profile.zip
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
