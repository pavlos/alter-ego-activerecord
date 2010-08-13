require 'helper'

class AdapterTest < Test::Unit::TestCase

  def setup
    CreateTrafficSignals.up
  end
    
  def test_state_stored_in_attributes
    t = TrafficSignal.new
    assert_not_nil t.attributes["state"]
    t.state = :caution
    assert_equal "caution", t.attributes["state"]
  end

  def test_state_stored_as_string
    t = TrafficSignal.new
    assert_equal String, t.attributes["state"].class
  end

  def test_state_returned_as_symbol
    t = TrafficSignal.new
    assert_equal Symbol, t.state.class
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

  def test_yaml
    require 'yaml'
    t= TrafficSignal.new
    t.cycle!
    yaml = YAML::dump t
    t2 = YAML::load yaml
    assert_equal t.state, t2.state    
  end

  def test_json
    t = TrafficSignal.new
    t.cycle!
    json = t.to_json
    t2 = TrafficSignal.new
    t2.from_json json
    assert_equal t.state, t2.state
  end

  def test_xml
    t = TrafficSignal.new
    t.cycle!
    xml = t.to_xml
    t2 = TrafficSignal.new
    t2.from_xml xml
    assert_equal t.state, t2.state
  end
  
  def teardown
    CreateTrafficSignals.down
  end
end
