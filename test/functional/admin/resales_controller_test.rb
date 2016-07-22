require 'test_helper'

class Admin::ResalesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Resale.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Resale.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Resale.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_resale_url(assigns(:resale))
  end

  def test_edit
    get :edit, :id => Resale.first
    assert_template 'edit'
  end

  def test_update_invalid
    Resale.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Resale.first
    assert_template 'edit'
  end

  def test_update_valid
    Resale.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Resale.first
    assert_redirected_to admin_resale_url(assigns(:resale))
  end

  def test_destroy
    resale = Resale.first
    delete :destroy, :id => resale
    assert_redirected_to admin_resales_url
    assert !Resale.exists?(resale.id)
  end
end
