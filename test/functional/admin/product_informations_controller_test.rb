require 'test_helper'

class Admin::ProductInformationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ProductInformation.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ProductInformation.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ProductInformation.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_product_information_url(assigns(:product_information))
  end

  def test_edit
    get :edit, :id => ProductInformation.first
    assert_template 'edit'
  end

  def test_update_invalid
    ProductInformation.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ProductInformation.first
    assert_template 'edit'
  end

  def test_update_valid
    ProductInformation.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ProductInformation.first
    assert_redirected_to admin_product_information_url(assigns(:product_information))
  end

  def test_destroy
    product_information = ProductInformation.first
    delete :destroy, :id => product_information
    assert_redirected_to admin_product_informations_url
    assert !ProductInformation.exists?(product_information.id)
  end
end
