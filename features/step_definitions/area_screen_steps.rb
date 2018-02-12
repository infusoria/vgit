Given(/^I land on help popup$/) do
  #puts ("user lands on popup help")
  text("Help")
end

When(/^I click on GOT IT button$/) do
  find_element(id: "button1").click
end

Then(/^I land on Area screen$/) do
  text("Area")
end

When(/^I click on SWAP button$/) do
  find_element(id: "fab").click
end

Then(/^I see "([^"]*)" in FROM header$/) do |value|
 actual_value = find_element(id: "header_text_unit_from").text
 puts("Expected value is #{value}")
 puts("Actual value is #{actual_value}")

end

And(/^I see "([^"]*)" in TO header$/) do |value|
  actual_value = find_element(id: "header_text_unit_to").text
  puts("Expected value is #{value}")
  puts("Actual value is #{actual_value}")
end

And(/^I click on CLEAR button$/) do
  puts("User clicks on CLEAR button")
end

When(/^I enter "([^"]*)" to FROM field$/) do |value|
  puts("User entered value #{value}")
end

Then(/^I get "([^"]*)" in TO field$/) do |value|
  puts("User sees #{value} in result field")
end