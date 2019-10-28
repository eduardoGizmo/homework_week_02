class Karaoke

  attr_reader :name, :all_rooms,  :total_revenue, :total_customers

  def initialize (name, all_rooms, total_revenue, total_customers)

    @name = name
    @all_rooms = all_rooms
    @total_revenue = total_revenue
    @total_customers = total_customers

  end


  # Karaoke has rooms

  def number_of_rooms
    @all_rooms.size
  end

  #  Find an available room
  def find_availabe_rooms
     @all_rooms.find_all { |room| room.count_customers == 0}
  end

  


  # def find_availabe_rooms
  #    @all_rooms.find_all { |room| room.count_customers == 0}
  #    @all_rooms.find_all do |room|
  #      if room.count_customers =! 0
  #        return "No available space"
  #    end
  # end






  # Inform there are not available rooms

  # def no_available_rooms
  #    @all_rooms.find_all do |room|
  #       room.count_customers != 0
  #        return "No available space"
  #    end
  # end


  # Check in customers
  # push customers in room
  # def check_in(group)




end
