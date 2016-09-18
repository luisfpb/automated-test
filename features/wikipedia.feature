# encoding: utf-8
Feature: Wikipedia search and suggestion
	As a Wikipedia user
	I would like to execute a search and use the suggestion
	Then I will confirm that I can find an article

  @wikipedia
  Scenario: Wrong search to test the did you mean
  		Given that I go to Wikipedia page
  		When  I search for "furry rabbits"
      Then  the did you men suggestion should appear
      When  I click on the suggestion
      Then  the search result page should have "20" articles
      And   I click on the result with possition "1"
