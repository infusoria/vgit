Given(/^I land on "([^"]*)" popup$/) do |value|
  actual_value = find_element(xpath: "//android.widget.LinearLayout[@text='#{value}']").text
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}")
  end
end

When(/^I click on GOT IT button$/) do
  find_element(id: "button1").click
end

Then(/^I land on "([^"]*)" screen$/) do |value|
  actual_value = find_element(id: "toolbar").find_element(xpath: "//android.widget.TextView[@text='#{value}']").text
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}")
  end
end

When(/^I click on SWAP button$/) do
  find_element(id: "fab").click
end

Then(/^I see "([^"]*)" in FROM header$/) do |value|
 actual_value = find_element(id: "header_text_unit_from").text
 if actual_value != value
   fail("Expected value is #{value}, but actual value was #{actual_value}")
 end
 # puts("Expected value is #{value}")
 # puts("Actual value is #{actual_value}")

end

And(/^I see "([^"]*)" in TO header$/) do |value|
  actual_value = find_element(id: "header_text_unit_to").text
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}")
  end
end

And(/^I click on CLEAR button$/) do
  find_element(id: "menu_clear").click
end

When(/^I enter "([^"]*)" to FROM field$/) do |value|
  find_element(id: "header_value_from").send_keys(value)
  actual_value = find_element(id: "header_value_from").text
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}")
  end
end

Then(/^I get "([^"]*)" in TO field$/) do |value|
  actual_value = find_element(id: "header_value_to").text
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}")
  end
end

When(/^I click on FROM field$/) do
  find_element(id: "header_value_from").click
end

And(/^I press "([^"]*)" on soft keyboard$/) do |value|
  digits= value.split("")
  digits.each do |key|
    digit = Integer(key)
    press_keycode 7 + digit
  end
  actual_value = find_element(id: "header_value_from").text
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}")
  end
end

When(/^I select "([^"]*)" from left column$/) do |value|
  find_element(id: "radio_group_from").find_element(xpath: "//android.widget.RadioButton[@text='#{value}']").click
  actual_value = find_element(id: "radio_group_from").find_element(xpath: "//android.widget.RadioButton[@text='#{value}']").text
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}")
  end
end