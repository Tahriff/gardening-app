class Specy < ApplicationRecord
    validates :name, presence: true, uniqueness: true

    before_create :add_default_description


    private

    def add_default_description
        puts name
        self.description = "Description for #{self.name}" if !description
    end
end