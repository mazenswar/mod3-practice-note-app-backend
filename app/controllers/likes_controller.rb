class LikesController < ApplicationController

    def create
        like = Like.create(like_params)
        render json: like.note, include: [:likes, :comments]
    end

    private

    def like_params
        params.permit(:note_id)
    end
end
