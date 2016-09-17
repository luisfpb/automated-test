# encoding: utf-8
Feature: Wikipedia search and suggestion
	As a Wikipedia user
	I would like to execute a search and use the suggestion
	Then I will confirm that I can find an article


  Scenario: Wrong search to test the did you mean
  		Given that I go to "https://en.wikipedia.org" page
  		Then  the page title should be "Wikipedia"
  		When  I search for "furry rabbits"
      Then  the did you men suggestion should appear
      And   I click on the suggestion
      And   I click on the first search result
