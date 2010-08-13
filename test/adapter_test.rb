require 'helper'

class AdapterTest < Test::Unit::TestCase
  
  def setup
    CreateTrafficSignals.up
  end
  
  def test_state_is_persisted_and_restored
    t = TrafficSignal.new
    old_state = t.state
    t.cycle!
    new_state = t.state

    #sanity check
    assert_not_equal old_state, new_state

    t.save!
    t = t.reload

    assert_equal t.state, new_state
  end

  def test_new_object_has_default_state
    t=TrafficSignal.new
    assert_equal t.state, TrafficSignal.default_state
    assert_equal t.attributes["state"].to_sym, TrafficSignal.default_state
  end
  
  def teardown
    CreateTrafficSignals.down
  end
end
