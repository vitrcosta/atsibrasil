class Folheto < ActiveRecord::Base

  has_attached_file :imagem_folheto, :styles =>{ :thumb =>"158x69#", :medium =>"#754x" }
  do_not_validate_attachment_file_type :imagem_folheto

  def remover_imagem_folheto(remover)
    self.imagem_folheto.destroy if remover
  end


end
