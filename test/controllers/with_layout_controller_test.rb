require 'test_helper'

class WithLayoutControllerTest < ActionController::TestCase
  test 'renders without layout for pjax request' do
    request.env['HTTP_X_PJAX'] = true

    get :index

    assert_match 'with_layout#index', response.body
  end

  test 'renders with layout for regular request' do
    get :index

    assert_match 'layouts/custom with_layout#index', response.body
  end
end
