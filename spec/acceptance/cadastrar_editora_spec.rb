# coding: utf-8

require 'spec_helper'

feature 'cadastrar editora' do
  scenario 'cadastro normal' do
    visit new_editora_path
    fill_in 'Nome', :with => 'Maio'
    click_button 'Salvar'
    page.should have_content 'Editora cadastrada com sucesso'
    page.should have_content 'Nome: Maio'
  end
end

