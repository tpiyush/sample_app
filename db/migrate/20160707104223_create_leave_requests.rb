class CreateLeaveRequests < ActiveRecord::Migration
  def change
    create_table :leave_requests do |t|
      t.integer :user_id
      t.date    :start_date
      t.date    :end_date
      t.text    :reason
      t.timestamps
    end
    add_index :leave_requests, :user_id
  end
end
