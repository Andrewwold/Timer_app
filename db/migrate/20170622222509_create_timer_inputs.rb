class CreateTimerInputs < ActiveRecord::Migration[5.0]
  def change
    create_table :timer_inputs do |t|
      t.string :title
      t.integer :set_timer

      t.timestamps
    end
  end
end
