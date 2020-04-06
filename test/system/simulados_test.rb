require "application_system_test_case"

class SimuladosTest < ApplicationSystemTestCase
  setup do
    @simulado = simulados(:one)
  end

  test "visiting the index" do
    visit simulados_url
    assert_selector "h1", text: "Simulados"
  end

  test "creating a Simulado" do
    visit simulados_url
    click_on "New Simulado"

    fill_in "Description", with: @simulado.description
    fill_in "Question", with: @simulado.question
    fill_in "Subject", with: @simulado.subject
    fill_in "Title", with: @simulado.title
    click_on "Create Simulado"

    assert_text "Simulado was successfully created"
    click_on "Back"
  end

  test "updating a Simulado" do
    visit simulados_url
    click_on "Edit", match: :first

    fill_in "Description", with: @simulado.description
    fill_in "Question", with: @simulado.question
    fill_in "Subject", with: @simulado.subject
    fill_in "Title", with: @simulado.title
    click_on "Update Simulado"

    assert_text "Simulado was successfully updated"
    click_on "Back"
  end

  test "destroying a Simulado" do
    visit simulados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Simulado was successfully destroyed"
  end
end
