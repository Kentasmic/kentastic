class CreateRailsTips < ActiveRecord::Migration[7.0]
  def change
    create_table :rails_tips do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
