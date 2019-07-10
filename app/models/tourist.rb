class Tourist
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all 
    end

    def self.find_by_name(name)
        Tourist.all.find do |tourist|
            tourist.name == name
        end
    end

    def self.select_by_name(name)
        Tourist.all.select do |tourist|
            tourist.name == name
        end
    end

    def trips
        Trip.all.select do |trip|
            trip.tourist == self
        end
    end

    def landmarks
        self.trips.collect do |trip|
            trip.landmark
        end
    end

    def landmark_names
        self.landmarks.map do |landmark|
            landmark.name
        end
    end

    def landmark_cities
        self.landmarks.map do |landmark|
            landmark.city
        end
    end

    def visit_landmark(landmark)
        Trip.new(self, landmark)
    end
end