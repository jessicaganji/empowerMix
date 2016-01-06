class AddSocialToUsers < ActiveRecord::Migration
  def change
    add_column :users, :facebook_link, :string
    add_column :users, :youtube_link, :string
    add_column :users, :instagram_link, :string
    add_column :users, :twitter_link, :string
    add_column :users, :spotify_link, :string
    add_column :users, :soundcloud_link, :string
  end
end
