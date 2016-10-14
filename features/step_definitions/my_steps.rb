Given(/^Empieza el juego$/) do
  visit '/'
end

Then(/^Veo "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

When(/^Jugador "(.*?)" hace click$/) do |arg1|
  click_link("10")
end


