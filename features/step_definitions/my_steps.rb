Given(/^Empieza el juego$/) do
  visit '/'
end

Then(/^Veo "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

When(/^Jugador "(.*?)" hace click$/) do |arg1|
  click_link("0:0")
end

Then(/^Veo "(.*?)" en la posicion (\d+),(\d+)$/) do |signo, x, y|

  celda = "#{x}:#{y}"

  last_response.should have_xpath( "//td[@id=\"#{celda}\"]") do |td|
    td.should contain( signo )
  end
end

