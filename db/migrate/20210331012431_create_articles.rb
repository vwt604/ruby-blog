# Migration method creates a methods called `change` which will be called when running this migration
# When running this migration, it'll create an articles table and two timestamp fields to track creation and update times

class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
