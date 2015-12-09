class NotesController < ApplicationController


def new
  @note = Note.new
end

def create
  @note = Note.new(note_params)
  if @note.save!
    params[:notes][:tags].split(',').each do |t|
      to_add = Tag.find_or_initialize_by(name: t.strip)
      @note.tags << to_add
    end
    render json: @notes
  else
    render json: @notes.errors, status: 400
  end
end

def index
  @notes = Note.all
  render json: @notes, status: 400
end

private

def note_params
params.require(:notes).permit(:title, :body)
end


end
