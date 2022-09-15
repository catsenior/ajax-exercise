class AddFlagToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :flag_at, :datetime
  end
end
