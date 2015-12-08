class NotesController < ApplicationController


def new
  @note = Note.new
end

def create
  @note = Note.new(note_params)
  if @note.save!
    params.tags.split(',')
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
