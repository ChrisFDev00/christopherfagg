class CreateSocialChannels < ActiveRecord::Migration[8.0]
  def change
    create_table :social_channels do |t|
      t.string :name
      t.string :username
      t.string :profile_url

      t.timestamps
    end
  end
end
