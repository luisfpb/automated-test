Given(/^that I go to Wikipedia page$/) do
  @home = Wikipedia::Home.new
  @home.load
  expect(@home.title.downcase).to include("wikipedia")
end

When(/^I search for "([^"]*)"$/) do |term|
  @home.search.search_field.set term
  @home.search.search_button.click
end

Then(/^the did you men suggestion should appear$/) do
  @search_page = Wikipedia::SearchPage.new
  expect(@search_page).to have_didyoumean
end

When(/^I click on the suggestion$/) do
  @search_page.suggestion.click
end

Then(/^the search result page should have "([^"]*)" articles$/) do |size|
  expect(@search_page.search_results.size).to eq(size.to_i)
end

Then(/^I click on the result with possition "([^"]*)"$/) do |possition|
  @search_page.click_at_posstion(possition.to_i)
  @article_page = Wikipedia::Article.new
  expect(@article_page).to have_article_title
  expect(@article_page).to have_content_table
end