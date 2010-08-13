class CreateTrafficSignals < ActiveRecord::Migration
  def self.up
    create_table :traffic_signals do |t|
      t.string :state
    end
  end

  def self.down
    drop_table :traffic_signals
  end
end
