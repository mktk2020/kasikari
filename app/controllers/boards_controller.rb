class BoardsController < ApplicationController
    def new
        @board = Board.new
    end

    def index
        @boards = Board.all
    end

    def create
        @board = Board.new(board_params)
        @board.user_id = current_user.id
        if @board.save
            redirect_to boards_path
        else
            render :new
        end
    end

    private
    def board_params
        params.require(:board).permit(:title, :content, :image)
    end
end
