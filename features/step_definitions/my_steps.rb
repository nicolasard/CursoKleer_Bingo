Given /^carga la pantalla$/ do
  visit '/'
end

Then(/^veo el texto Bingo$/) do
  text = "Bingo"
  last_response.body.should =~ /#{text}/m
end

When(/^El usuario ingresa el numero "(.*?)"$/) do |numero|
  fill_in("nroUsuario", :with => numero)
end

When(/^El usuario toca el boton adivinar$/) do
  click_button("Adivinar")
end

Then(/^Veo el numero del usuario "(.*?)"$/) do |numero|
  text = "Número: "+numero
  last_response.body.should =~ /#{text}/m
end

Then(/^Se muestra Adivinaste$/) do
  text = "Adivinaste"
  last_response.body.should =~ /#{text}/m    
end

Then(/^Se muestra No Adivinaste$/) do
  text = "No Adivinaste"
  last_response.body.should =~ /#{text}/m    
end




