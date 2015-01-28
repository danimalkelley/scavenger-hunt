class CreateMaps < ActiveRecord::Migration
  def change
    create_table    :maps do |t|
      t.references  :user
      t.string      :user_text

      t.timestamps
    end
  end
end
