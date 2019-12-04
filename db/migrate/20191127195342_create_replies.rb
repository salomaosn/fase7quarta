class CreateReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :replies do |t|
      t.references :piu, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
