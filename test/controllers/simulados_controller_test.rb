require 'test_helper'

class SimuladosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @simulado = simulados(:one)
  end

  test "should get index" do
    get simulados_url
    assert_response :success
  end

  test "should get new" do
    get new_simulado_url
    assert_response :success
  end

  test "should create simulado" do
    assert_difference('Simulado.count') do
      post simulados_url, params: { simulado: { description: @simulado.description, title: @simulado.title, type: @simulado.type } }
    end

    assert_redirected_to simulado_url(Simulado.last)
  end

  test "should show simulado" do
    get simulado_url(@simulado)
    assert_response :success
  end

  test "should get edit" do
    get edit_simulado_url(@simulado)
    assert_response :success
  end

  test "should update simulado" do
    patch simulado_url(@simulado), params: { simulado: { description: @simulado.description, title: @simulado.title, type: @simulado.type } }
    assert_redirected_to simulado_url(@simulado)
  end

  test "should destroy simulado" do
    assert_difference('Simulado.count', -1) do
      delete simulado_url(@simulado)
    end

    assert_redirected_to simulados_url
  end
end
