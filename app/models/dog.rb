class Dog < ActiveRecord::Base
 has_many :walks
 has_many :dog_walkers, through: :walks

    def take_walk(length_in_minutes, dog_walker)
        Walk.create({
            length_in_minutes: length_in_minutes,
            dog_id: self.id,
            dog_walker_id: dog_walker
        })
    end
    
    def print_walk_details
        self.walks.each do |walk_instance|
            puts "#{walk_instance.dog_walker.name} walked #{self.name} for #{walk_instance.length_in_minutes} minutes."
        end
    end

    def self.good_dogs
        self.all.select do |dog_instance|
            dog_instance.good_dog
        end
    end

end