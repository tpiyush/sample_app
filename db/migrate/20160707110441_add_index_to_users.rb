class AddIndexToUsers < ActiveRecord::Migration
  def change
    add_column :users, :leave,                 :bool
    add_column :users, :leave_request_id,                     :integer
    add_index  :users,     :leave_request_id
  end
end
