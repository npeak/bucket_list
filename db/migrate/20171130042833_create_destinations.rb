class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :title     
      t.belongs_to :list, foreign_key: true

      t.timestamps
    end
  end
end
