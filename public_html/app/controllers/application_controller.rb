class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def apply_meta_tags!
  set_meta_tags :og => {
      :url => root_url,
      :description => 'A ATSI BRASIL é uma empresa gaúcha de pesquisa e consultoria com foco na prestação de serviços para empresas do agronegócio e instituições de pesquisa. Realiza com excelência ensaios de pesquisa experimental e de eficácia e praticabilidade agronômica, além de consultoria acadêmica e empresarial.',
  },
                :title => 'ATSI BRASIL - Pesquisa e Consultoria',
                :description => 'A ATSI BRASIL é uma empresa gaúcha de pesquisa e consultoria com foco na prestação de serviços para empresas do agronegócio e instituições de pesquisa. Realiza com excelência ensaios de pesquisa experimental e de eficácia e praticabilidade agronômica, além de consultoria acadêmica e empresarial.',
                :keywords => 'atsi brasil, pesquisa e consultoria, passo fundo, agricultura, pesquisa, consultoria empresarial, consultoria acadêmica, consultoria especializada, ensaios de eficácia pesquisa agrícola, dr. cristiano piasecki, dra. naymã dias, entomologia, herbologia, fitopatologia, biologia molecular, bioinformática'
end
end
