class NotesController < ApplicationController
  def index
    @notes = Note.all
  end
  
  def show
    @note = Note.find(params[:id])
  end
  
  def new
    @note = Note.new
  end
  
  def create
    @note = Note.create(params_create)
    redirect_to note_index_path
  end
  
  def edit
    @note = Note.find(params[:id])
  end
  
    def update
      @note = Note.find(params[:id])
      @note.title = params[:title]
      @note.content = params[:content]
      @note.save
      redirect_to index_note_path(@note.id)
    end
  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to index_note_path
  end

  
  private
  
  def params_create
    params.require(:note).permit(:title,:content)
  end
end
