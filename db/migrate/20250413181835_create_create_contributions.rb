class CreateCreateContributions < ActiveRecord::Migration[8.0]
  def change
    create_table :create_contributions do |t|
      t.string :name
      t.string :repository
      t.string :details

      t.timestamps
    end
  end
end
