class DogWalker < ActiveRecord::Base
    has_many :walks
    has_many :dogs, through: :walks

    def give_walk(length_in_minutes, dog)
        Walk.create({
            length_in_minutes: length_in_minutes,
            dog_id: dog,
            dog_walker_id: self.id
        })
    end

    def length_of_all_walks
        self.walks.sum(:length_in_minutes)
    end

    def self.most_walks
        self.all.max_by do |dw_instance|
            dw_instance.walks.count
        end
    end
end

