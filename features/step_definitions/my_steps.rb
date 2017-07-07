Given /^carga la pantalla$/ do
  visit '/'
end

Then(/^veo el texto Bingo$/) do
  text = "Bingo"
  last_response.body.should =~ /#{text}/m
end

