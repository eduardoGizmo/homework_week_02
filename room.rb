class Room

  attr_reader :room_number, :capacity, :price, :songs, :room_revenue, :customers

  def initialize (room_number, capacity, price, songs, room_revenue, customers)

    @room_number = room_number
    @capacity = capacity
    @price = price
    @songs = songs
    @room_revenue = room_revenue
    @customers = customers

  end

  # Count Songs in room
    def count_songs
      @songs.size
    end

  # Add songs to room
    def add_song(song)
      @songs.push(song)
    end

  # Count Customers
    def count_customers
      @customers.size
    end

    # Add Customers
    def add_customers(customer)
      @customers.push(customer)
    end

end
