class NumViewsAndTimestampComment < ActiveRecord::Migration
  def change
    add_column :comments, :comment_time, :timestamp
    add_column :posts, :num_views, :integer, :default=>0
  end
end
