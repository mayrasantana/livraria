# coding: utf-8

require 'spec_helper'

feature 'cadastrar editora' do
  scenario 'cadastro normal' do
    visit new_editora_path
    fill_in 'Nome', :with => 'Maio'
    fill_in 'Desconto (%)', :with => '30'
    click_button 'Salvar'
    page.should have_content 'Editora cadastrada com sucesso'
    page.should have_content 'Nome: Maio'
    page.should have_content 'Desconto: 30.0%'
  end
end

