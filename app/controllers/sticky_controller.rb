class StickyController < ApplicationController
    def index
        @notes = StickyNote.all
    end

    def create
        @note = StickyNote.new
        @note.body = params["body"]
        words = @note.body.split
        words[0] = words[0].capitalize
        @note.body = words.join(" ")
        @note.save
        redirect_to "/"
    end

    def destroy
        @note = StickyNote.find(params[:id])
        @note.destroy
        redirect_to "/"
    end
end
