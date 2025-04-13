class ChangeProfileUrlToUrlInSocialChannel < ActiveRecord::Migration[8.0]
  def change
    rename_column :social_channels, :profile_url, :url
  end
end
