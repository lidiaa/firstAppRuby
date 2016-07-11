class ComentariosController < ApplicationController
   before_filter :autenticacao, :only => [:destroy] # linha adicionada

   def create
    @post = Post.find(params[:post_id])
    @comentario = @post.comentarios.create(com_params)
    redirect_to post_path(@post)
   end
    
   def destroy
    @post = Post.find(params[:post_id])
    @comentario = @post.comentarios.find(params[:id])
    @comentario.destroy
    redirect_to post_path(@post)
  end
    
    def com_params
        params.require(:comentario).permit(:autor, :conteudo)
    end
end