class CreateTrafficSignals < ActiveRecord::Migration

  def self.up
    create_table :traffic_signals do |t|
      t.string :state
    end
  end

  def self.down
    drop_table :traffic_signals
  end

  # redirect output so running tests doesn't display a bunch of migration info
  def self.puts *args
    log = File.new "test/migrations.log", 'a+'
    args.each {|a| log << a.to_s; log << "\n"}
    log.close
  end
end
