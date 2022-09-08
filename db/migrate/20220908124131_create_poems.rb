class CreatePoems < ActiveRecord::Migration[6.1]
  def change
    create_table :poems do |t|
      t.string "title"
      t.text "lines"
      t.integer "author_id"
      t.integer "linecount"
  end
  end
end
