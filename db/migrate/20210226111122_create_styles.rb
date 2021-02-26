class CreateStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :styles do |t|
      t.string :title,              null: false
      t.text   :quality,            null: false
      t.text   :item,               null: false
      t.text   :remark,             null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
