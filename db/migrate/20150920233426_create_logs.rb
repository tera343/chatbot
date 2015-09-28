class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :talk
      t.string :username
      t.string :time

      t.timestamps
    end
  end
end
