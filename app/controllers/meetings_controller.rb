class MeetingsController < ApplicationController
	def index
		@meetings = Meeting.all
	end
	def show
		@meeting = Meeting.find(params[:id])
	end
	def new
	end
	def create
		@meeting = Meeting.new(meeting_params)
		@meeting.save
		redirect_to @meeting
	end
	def destroy
		@meeting = Meeting.find(params[:id])
		@meeting.destroy
		redirect_to meetings_path
	end
	private
	def meeting_params
		params.require(:meeting).permit(:date, :location, :participants)
	end
end
