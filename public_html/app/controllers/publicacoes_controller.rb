class PublicacoesController < ApplicationController
  def index
    @entomologia = Post.order('id ASC').where(:kind_of_post_id => "2",:category_id => "1", inativar: false).page(params[:page]).per(100)
    @herbologia = Post.order('id ASC').where(:kind_of_post_id => "2",:category_id => "2", inativar: false).page(params[:page]).per(100)
    @agronomia = Post.order('id ASC').where(:kind_of_post_id => "2",:category_id => "3", inativar: false).page(params[:page]).per(100)
    apply_meta_tags!
  end
end
