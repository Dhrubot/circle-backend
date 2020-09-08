class CreateFollowerFollowings < ActiveRecord::Migration[6.0]
  def change
    create_table :follower_followings do |t|
      t.references :follower, null: false
      t.references :following, null: false

      t.timestamps
    end
  end
end
