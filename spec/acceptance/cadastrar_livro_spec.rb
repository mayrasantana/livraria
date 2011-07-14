# coding: utf-8

require 'spec_helper'

feature 'cadastrar livro' do
  scenario 'cadastro normal' do
    visit new_livro_path
    fill_in 'Título', :with => 'O Pequeno Príncipe'
    fill_in 'Autor', :with => 'Antoine de Saint-Exupery'
    fill_in 'Editora', :with => 'Mundo Louco'
    fill_in 'Preço', :with => '9.9'
    click_button 'Salvar'
    page.should have_content 'Livro cadastrado com sucesso'
    page.should have_content 'Título: O Pequeno Príncipe'
    page.should have_content 'Autor: Antoine de Saint-Exupery'
    page.should have_content 'Editora: Mundo Louco'
    page.should have_content 'Preço: R$ 9,90'
  end
end

