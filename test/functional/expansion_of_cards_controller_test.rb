require 'test_helper'

class ExpansionOfCardsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expansion_of_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expansion_of_card" do
    assert_difference('ExpansionOfCard.count') do
      post :create, :expansion_of_card => { }
    end

    assert_redirected_to expansion_of_card_path(assigns(:expansion_of_card))
  end

  test "should show expansion_of_card" do
    get :show, :id => expansion_of_cards(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => expansion_of_cards(:one).id
    assert_response :success
  end

  test "should update expansion_of_card" do
    put :update, :id => expansion_of_cards(:one).id, :expansion_of_card => { }
    assert_redirected_to expansion_of_card_path(assigns(:expansion_of_card))
  end

  test "should destroy expansion_of_card" do
    assert_difference('ExpansionOfCard.count', -1) do
      delete :destroy, :id => expansion_of_cards(:one).id
    end

    assert_redirected_to expansion_of_cards_path
  end
end
