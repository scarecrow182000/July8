class CreateCompletedAssignments < ActiveRecord::Migration
  def change
    create_table :completed_assignments do |t|
      t.refrences :user, index: true
      t.refrences :assignment, index: true
      t.boolean :on_time
      t.string :github_url

      t.timestamps
    end
  end
end
