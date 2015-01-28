require 'test_helper'

class WithPjaxLayoutControllerTest < ActionController::TestCase
  test 'renders with custom layout for pjax request' do
    request.env['HTTP_X_PJAX'] = true

    get :index

    assert_match 'layouts/custom with_layout#index', response.body
  end

  test 'renders with default layout for regular request' do
    get :index

    assert_match 'layouts/application with_layout#index', response.body
  end
end
