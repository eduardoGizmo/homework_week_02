require('minitest/autorun')
require('minitest/rg')
require('../karaoke.rb')
require('../room.rb')
require('../song.rb')
require('../customer.rb')

class Test_Karaoke < Minitest::Test

  def setup

    @song1 = Song.new('New York, New York', 'Frank Synatra', '1980', 'Jazz')
    @song2 = Song.new('Imagine', 'John Lennon', '1971', 'Pop')
    @song3 = Song.new('Like A Rolling Stone', 'Bob Dylan', '1965', 'Pop')
    @song4 = Song.new('Bohemian Rhapsody', 'Queen', '1975', 'Pop')

    @songs = [@song1, @song2, @song3, @song4]

    @customer1 = Customer.new('Ed', '40', 50, 'New York, New York')
    @customer2 = Customer.new('Lou', '33', 20, 'Like A Rolling Stone')
    @customer3 = Customer.new('Nick', '21', 30, 'Bohemian Rhapsody')
    @customer4 = Customer.new('Neil', '25', 60, 'New York, New York')
    @customer5 = Customer.new('Paula','22',30,'Thriller')

    # room_number | capacity | price | songs | room_revenue | customers
    @room1 = Room.new( '1', 4, 50, @songs, 0, [])
    @room2 = Room.new( '2', 6, 40, @songs, 0, [@customer1, @customer2, @customer2])
    @room3 = Room.new( '3', 5, 30, @songs, 0, [@customer3, @customer4])
    @room4 = Room.new( '4', 3, 55, @songs, 0, [@customer3, @customer2])
    @room5 = Room.new( '5', 6, 35, @songs, 0, [])

    @all_rooms = [@room1, @room2, @room3, @room4, @room5]

    @karaoke = Karaoke.new('Singing Stars', @all_rooms, 0, 0)

  end


  def test_has_name
    assert_equal('Singing Stars', @karaoke.name)
  end

  def test_total_rooms
    assert_equal(5, @karaoke.number_of_rooms)
  end

  def test_find_available_rooms
    expected_rooms = [@room1, @room5]
    result = @karaoke.find_availabe_rooms
    assert_equal(expected_rooms, result)
  end


  # def test_no_available_space
  #   expected = "No available space"
  #   result = @Karaoke.no_available_rooms
  #   assert_equal(expected, result)
  # end


  # def test_has_total_revenue
  #   assert_equal(0, @karaoke.total_revenue)
  # end
  #
  # def test_has_total_customers
  #   assert_equal(5, @karaoke.total_customers)
  # end
  #



end
