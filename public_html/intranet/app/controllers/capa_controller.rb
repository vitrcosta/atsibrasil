class CapaController < ApplicationController
	def index
		@folheto = Folheto.last
		@noticias = Post.order('data DESC').where(:kind_of_post_id => "1", inativar: false).page(params[:page]).per(3)
	end

	def createinteresse
		@interesse = Interesse.new(params[:interesse])
		if @interesse.valid?
			# if verify_recaptcha(model: @contato) --recap
			InteresseMailer.interesse(@interesse.nome,@interesse.email,@interesse.mensagem,@interesse.telefone).deliver
			@cliente = Cliente.new
			@cliente.nome = @interesse.nome
			@cliente.email = @interesse.email
			@cliente.mensagem = @interesse.mensagem
			@cliente.telefone = @interesse.telefone
			@cliente.interesse = @interesse.interesse
			@cliente.status = "1"
			@cliente.save

			respond_to do |format|
				format.json { head :ok }
				if @cliente.save
					format.html do
						redirect_to '/capa'
						$teste = true
					end
				end
			end
			# else --recap
			redirect_to '/capa'
			$testeerro = true
			# end --recap
			# redirect_to novos_index_path, notice: "Message sent!"
		else
			render 'index', alert: 'Please make sure all required fields are filled out correctly.'
		end
	end


	def interesse_params
		params.require(:interesse).permit(:nome, :telefone, :mensagem, :email)
	end

end
