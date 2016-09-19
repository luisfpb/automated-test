# automated-test

##In this project I used:
  - Cucumber: as a BDD framework to make the test easy to read and organized
  - Capybara: to comunicate with the browser
  - Site Prism: I'm using Page Object Pattern, so site prism make the code readable in the pages and easy to modify

##Setup:
- ruby must be instaled (I've used 2.3.0)
- bundler gem (to install dependency): gem install bundler
- cucumber gem: gem install cucumber
- Goggle Chrome (Version I used:  53.0.2785.89)

##Run: 
  In root folder of the project run
  PS: Sometimes the travelex feature fails on swipe. I didn't have time to investigate!
   ```
   $bundle (to install dependency)
   $cucumber features (to run all features)
   $cucumber features -t @wikipedia (to run wikipedia features)
   $cucumber features -t @travelex (to run travelex features)
  ```
