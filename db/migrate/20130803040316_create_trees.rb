class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.string :title
      t.string :picture
      t.string :tree_type
      t.references :user, index: true

      t.timestamps
    end
  end
end
