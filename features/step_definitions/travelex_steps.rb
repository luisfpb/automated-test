Given(/^that I go to Trevelex page$/) do
  @home = Travelex::Home.new
  @home.load
end

When(/^I risize the width of window to (\d+) px$/) do |width|
  height = Capybara.page.driver.browser.manage.window.size[0]
  Capybara.page.driver.browser.manage.window.resize_to(width,height)
end

When(/^I swipe the options left$/) do
  sleep 1
  @home.slider.drag_by(-200,0)
  sleep 1
end

Then(/^I should see the option on possition (\d+)$/) do |possition|
  expect(@home.slider_possition).to eq(possition)
end