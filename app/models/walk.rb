class Walk < ActiveRecord::Base
    belongs_to :dog_walker
    belongs_to :dog

    def happy_walker?
        self.dog.breed == self.dog_walker.favorite_breed
    end

    def print_details
        puts "#{self.dog_walker.name} walked #{self.dog.name} for #{self.length_in_minutes} minutes."
    end

end