# encoding: utf-8
Feature: Trevelex responsive test
	As a Trevelex user
	I would like to resize the window to 550px width or less
	Then I should be able to navigte on slider

  @travelex
  Scenario: Resize to test the slider
    Given that I go to Trevelex page
    When  I risize the width of window to 540 px
    And   I swipe the options left
    And   I swipe the options left
    Then  I should see the option on possition 3