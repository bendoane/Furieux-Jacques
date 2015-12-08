class NotesController < ApplicationController


def new
  @note = Note.new
end

def create
  @note = Note.new
  if @note.save
    render json: @notes
  else
    render json: @notes.errors, status: 400
  end
end

def index
  @notes = Note.all
  render json: @notes, status: 400
end


end
