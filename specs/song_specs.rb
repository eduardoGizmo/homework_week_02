require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')


class TestSong < Minitest::Test

  def setup
    @song1 = Song.new('New York, New York', 'Frank Synatra', '1980', 'Jazz')
  end

  def test_has_name
    assert_equal('New York, New York', @song1.title)
  end

  def test_has_author
    assert_equal('Frank Synatra', @song1.author)
  end

  def test_has_year
    assert_equal('1980', @song1.year)
  end

  def test_has_genre
    assert_equal('Jazz', @song1.genre)
  end


end
