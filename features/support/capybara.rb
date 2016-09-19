case $driver
when "other"
  #cofigure other browser here
else
	$capybara_driver = :chrome

	Capybara.register_driver :chrome do |app|
		caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => [ "--start-maximized" ]})
		Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps})
	end
end

Capybara.default_driver = $capybara_driver
Capybara.default_max_wait_time = 15

module CapybaraExtension
  def drag_by(right_by, down_by)
    base.drag_by(right_by, down_by)
  end
end

module CapybaraSeleniumExtension
  def drag_by(right_by, down_by)
    driver.browser.action.drag_and_drop_by(native, right_by, down_by).perform
  end
end

::Capybara::Selenium::Node.send :include, CapybaraSeleniumExtension
::Capybara::Node::Element.send :include, CapybaraExtension
