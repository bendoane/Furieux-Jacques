class NotesController < ApplicationController


def new
end

def create
  @note = Note.new
  @note.save
end




end
