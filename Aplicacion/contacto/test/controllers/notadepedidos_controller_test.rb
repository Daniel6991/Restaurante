require 'test_helper'

class NotadepedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notadepedido = notadepedidos(:one)
  end

  test "should get index" do
    get notadepedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_notadepedido_url
    assert_response :success
  end

  test "should create notadepedido" do
    assert_difference('Notadepedido.count') do
      post notadepedidos_url, params: { notadepedido: { fecha: @notadepedido.fecha, mesa: @notadepedido.mesa, nombre_cliente: @notadepedido.nombre_cliente, platos: @notadepedido.platos, precios: @notadepedido.precios } }
    end

    assert_redirected_to notadepedido_url(Notadepedido.last)
  end

  test "should show notadepedido" do
    get notadepedido_url(@notadepedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_notadepedido_url(@notadepedido)
    assert_response :success
  end

  test "should update notadepedido" do
    patch notadepedido_url(@notadepedido), params: { notadepedido: { fecha: @notadepedido.fecha, mesa: @notadepedido.mesa, nombre_cliente: @notadepedido.nombre_cliente, platos: @notadepedido.platos, precios: @notadepedido.precios } }
    assert_redirected_to notadepedido_url(@notadepedido)
  end

  test "should destroy notadepedido" do
    assert_difference('Notadepedido.count', -1) do
      delete notadepedido_url(@notadepedido)
    end

    assert_redirected_to notadepedidos_url
  end
end
