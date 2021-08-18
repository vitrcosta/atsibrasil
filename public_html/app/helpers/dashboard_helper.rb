module DashboardHelper

  def date_filter_helper(date)
    if date == 'ontem'
      'ao dia anterior'
    elsif date == "7_dias"
      'aos últimos 7 dias'
    else
      'aos últimos 30 dias'
    end
  end

  def date_filter_options(date)
    if date == 'ontem'
        '<p id="30_dias" class="update_index">Últimos 30 dias</p><p id="7_dias" class="update_index">Últimos 7 dias</p><p id="ontem" class="update_index_active">Ontem</p>'.html_safe
    elsif date == "7_dias"
      '<p id="30_dias" class="update_index">Últimos 30 dias</p><p id="7_dias" class="update_index_active">Últimos 7 dias</p><p id="ontem" class="update_index">Ontem</p>'.html_safe
    else
      '<p id="30_dias" class="update_index_active">Últimos 30 dias</p><p id="7_dias" class="update_index">Últimos 7 dias</p><p id="ontem" class="update_index">Ontem</p>'.html_safe
    end

  end

  def dia_analytics(date)
    fixed_date = date[6..7]
    fixed_date
  end


  def mes_analytics(date)
    fixed_date = date[4..5]
    fixed_date
  end



end
