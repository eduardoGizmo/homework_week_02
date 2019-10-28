require('minitest/autorun')
require('minitest/rg')
require('../room.rb')
require('../song.rb')
require('../customer.rb')

class TestRoom < Minitest::Test

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

      @customers0 = []
      @customers1 = [@customer1, @customer2, @customer3, @customer4]

      @room1 = Room.new( '1', 10, 50, @songs, 0, @customers0)
      @room2 = Room.new( '2', 3, 40, @songs, 0, @customers0)
      @room3 = Room.new( '3', 5, 30, @songs, 0, @customers1)
      @room4 = Room.new( '4', 12, 55, @songs, 0, @customers1)
      @room5 = Room.new( '5', 6, 35, @songs, 0, @customers1)

      @all_rooms = [@room1, @room2, @room3, @room4, @room5]

    end


    def test_has_room_number
      assert_equal('1', @room1.room_number())
    end

    def test_has_capacity
      assert_equal(10, @room1.capacity())
    end

    def test_has_price
      assert_equal(50, @room1.price())
    end

    def test_has_songs
      expected_songs = [ @song1, @song2, @song3, @song4 ]
      result = @room1.songs
      assert_equal(expected_songs, result)
    end

    def test_has_revenue
      assert_equal(0, @room1.room_revenue())
    end

    def test_count_song
      assert_equal(4, @room1.count_songs)
    end

    def test_add_song
      new_song = Song.new('Thriller', 'Michael Jackson', '1982', 'Pop')
      @room1.add_song(new_song)
      assert_equal(5, @room1.count_songs())
    end

    def test_count_customers
      assert_equal(4, @room3.count_customers)
    end

    def test_add_customer
      new_customer = Customer.new('Paula','22',30,'Thriller')
      result = @room3.add_customers(new_customer)
      assert_equal(5, result.size)
    end


end
