class LivrosController < InheritedResources::Base
  def create
    create! :notice => 'Livro cadastrado com sucesso'
  end
end

