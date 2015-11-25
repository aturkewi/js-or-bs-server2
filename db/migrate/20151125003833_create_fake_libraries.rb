class CreateFakeLibraries < ActiveRecord::Migration
  def change
    create_table :fake_libraries do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
