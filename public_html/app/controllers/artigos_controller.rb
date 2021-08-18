class ArtigosController < ApplicationController
  def index
    @noticias = Post.order('id DESC').where(:kind_of_post_id => "1", inativar: false).page(params[:page]).per(100)
    apply_meta_tags!
  end

  def show
    @noticias = Post.where(:kind_of_post_id => "1")
    @noticia = Post.where(:kind_of_post_id => "1").friendly.find(params[:id])
    apply_meta_tags(@noticia)
  end
  private

  def apply_meta_tags(noticia)
    set_meta_tags :og => {
      :url => ActiveSupport::Inflector.transliterate(request.original_url),
      :keywords => noticia.keywords,
      :description => noticia.descricao,
      :title => noticia.titulo,
      :image => [root_url + noticia.foto_principal.url(:original).gsub('/system','system')],
      :locale => "pt_BR",
    },
    :locale => 'pt_BR',
    :description => noticia.descricao,
    :keywords => noticia.keywords,
    :title => noticia.titulo
  end

end
