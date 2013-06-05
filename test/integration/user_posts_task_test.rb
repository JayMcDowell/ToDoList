require 'test_helper'

class UserPostsTaskTest < ActionDispatch::IntegrationTest
  test "post tasks" do
  visit '/'
  click_link 'Write Task'
  fill_in 'Title', with: 'My First Task!!'
  click_button 'Submit Task'
  visit '/tasks'
  assert_include page.body, 'My First Task!!'
  end
end
