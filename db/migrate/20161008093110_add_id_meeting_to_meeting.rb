class AddIdMeetingToMeeting < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :ID_meeting, :string
  end
end
