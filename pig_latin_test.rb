require 'minitest/autorun'
require 'minitest/pride'
require './pig_latin'

class PigLatinTest < Minitest::Test

  def setup
    @pl = PigLatin.new
  end

  def test_class_exists
    assert PigLatin
  end

  def test_it_checks_for_vowels
    assert @pl.vowels.include?("a")
  end

end
