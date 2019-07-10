class Landmark
    attr_reader :city, :name
    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all 
        @@all 
    end

    def self.find_by_city(city)
        self.all.select do |landmark|
            landmark.city == city 
        end
    end

    def trips
        Trip.all.select do |trip|
            trip.landmark == self
        end
    end

    def tourists
        self.trips.map do |trip|
            trip.tourist
        end
    end
end
