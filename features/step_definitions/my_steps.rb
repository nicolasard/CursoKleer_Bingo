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

When(/^El usuario toca el boton enviar$/) do
  click_button("enviar")
end

Then(/^Veo el numero del usuario "(.*?)"$/) do |numero|
  text = "Numero: "+numero
  last_response.body.should =~ /#{text}/m
end

