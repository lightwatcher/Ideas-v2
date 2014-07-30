class CreateIdeabases < ActiveRecord::Migration
  def change
    create_table :ideabases do |t|
      t.string :idea

      t.timestamps
    end
  end
end
