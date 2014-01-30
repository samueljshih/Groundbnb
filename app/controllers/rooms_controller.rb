class RoomsController < ApplicationController


	before_action :authenticate_user!, :only => [:new, :create, :rooms, :image]


	def index
		@rooms = Room.all
	end

	def about
	end

	def contact
	end

	def rooms
		@rooms = Room.all
	end

	def show
		@room = Room.find(params[:id])
	end

	def new
		@room = Room.new
	end

	def edit
		@room = Room.find(params[:id])
	end

	def create
		@room = Room.new(safe_room_params)
		@room.user = current_user

		if @room.save
			redirect_to rooms_path
		else
			render :new
		end
	end

	def destroy
		@room = Room.find(params[:id])
		@room.destroy
		redirect_to rooms_path
	end

	private

	def safe_room_params

		return params.require(:room).permit(:title, :location, :image)

	end


end
