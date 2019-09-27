class NotesController < ApplicationController
    def index
        notes = Note.all
        render json: notes, include: [:comments, :likes]
    end

    def show
        note = Note.find(params[:id])
        render json: note, include: [:comments, :likes]
    end

    def create
        note = Note.create(note_params)
        render json: note, include: [:comments, :likes]
    end

    private

    def note_params
        params.permit(:title, :content)
    end
end
