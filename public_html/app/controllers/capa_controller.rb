class CapaController < ApplicationController
	def index
		@folheto = Folheto.last
		@noticias = Post.order('data DESC').where(:kind_of_post_id => "1", inativar: false).all
		apply_meta_tags!
	end
	def createinteresse
		@interesse = Interesse.new(params[:interesse])
		if @interesse.valid?
			if $spam == true
				$teste = false
				redirect_to request.referrer + "#formulario"
			else
				InteresseMailer.interesse(@interesse.nome,@interesse.email,@interesse.mensagem,@interesse.telefone).deliver
				@cliente = Cliente.new
				@cliente.nome = @interesse.nome
				@cliente.email = @interesse.email
				@cliente.mensagem = @interesse.mensagem
				@cliente.telefone = @interesse.telefone
				@cliente.status = "1"
				@cliente.save

				respond_to do |format|
					format.json { head :ok }
					if @cliente.save
						format.html do
							$teste = true
							redirect_to request.referrer + "#formulario"
						end
					end
				end
			end
		else
			$teste = false
			redirect_to request.referrer + "#formulario"
		end
	end

	# redirect_to request.referrer + "#contact"
	def interesse_params
		params.require(:interesse).permit(:nome, :telefone, :mensagem, :email)
	end
end
