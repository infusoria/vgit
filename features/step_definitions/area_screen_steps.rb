Given(/^I land on help popup$/) do
  puts ("user lands on popup help")
end

When(/^I click on GOT IT button$/) do
  puts("User clicks on GOT IT button")
end

Then(/^I land on Area screen$/) do
  puts("User lands on Area screen")
end
=begin Obsolete!
And(/^I see Sq Kilometre in FROM header$/) do
  puts("user sees Sq Kilometre")
end

And(/^I see Sq Metre in TO header$/) do
  puts("user sees Sq Metre")
end
=end

When(/^I click on SWAP button$/) do
  puts("User clicks SWAP button")
end

Then(/^I see "([^"]*)" in FROM header$/) do |value|
  puts("FROM header values is value " + value)
end

And(/^I see "([^"]*)" in TO header$/) do |value|
  puts("TO header values is #{value}")
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