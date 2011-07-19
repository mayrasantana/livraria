class EditorasController < InheritedResources::Base
  def create
    create! :notice => 'Editora cadastrada com sucesso'
  end
end

