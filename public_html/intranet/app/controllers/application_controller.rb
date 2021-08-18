class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def apply_meta_tags!
  set_meta_tags :og => {
      :url => root_url,
      :description => 'Descrição',
  },
                :title => 'Titulo',
                :description => 'Descrição',
                :keywords => 'Keywords'
end
end
