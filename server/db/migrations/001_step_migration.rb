class StepMigration < ActiveRecord::Migration
  def up
    drop_table :steps if table_exists?(:steps)
    create_table :steps do |t|
      t.timestamps null: true
    end
  end

  def down
    drop_table :steps if table_exists?(:steps)
  end
end
