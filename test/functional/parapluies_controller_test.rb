require 'test_helper'

class ParapluiesControllerTest < ActionController::TestCase
  setup do
    @parapluie = Parapluie.make!
    @parapluie.handles.make!
    binding.pry
    @parapluie_two = Parapluie.make!(:foldable => false)
    @parapluie_three = Parapluie.make!
  end

  test "should get index" do
    get :index
    assert_response 200
    assert_not_nil assigns(:parapluies)
    assert_equal "Dan", assigns(:name)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parapluie" do
    assert_difference('Parapluie.count', 3) do
      post :create, parapluie: { colour: @parapluie.colour, foldable: @parapluie.foldable, handle_type: @parapluie.handle_type }
    end

    assert_redirected_to parapluie_path(assigns(:parapluie))
  end

  test "should show me the new form if I fail validation" do
    assert_difference('Parapluie.count', 0) do
      post :create, parapluie: { colour: "", foldable: @parapluie.foldable, handle_type: @parapluie.handle_type }
    end

    assert_response :success
    assert_template :new
  end

  test "should show parapluie" do
    get :show, id: @parapluie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parapluie
    assert_response :success
  end

  test "should update parapluie" do
    put :update, id: @parapluie, parapluie: { colour: @parapluie.colour, foldable: @parapluie.foldable, handle_type: @parapluie.handle_type }
    assert_redirected_to parapluie_path(assigns(:parapluie))
  end

  test "should not update parapluie and show me the edit page if I fail validation" do
    put :update, id: @parapluie, parapluie: { colour: nil, foldable: @parapluie.foldable, handle_type: @parapluie.handle_type }
    assert_template :edit
  end

  test "should destroy parapluie" do
    assert_difference('Parapluie.count', -1) do
      delete :destroy, id: @parapluie
    end

    assert_redirected_to parapluies_path
  end
end
