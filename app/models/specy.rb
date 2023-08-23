class Specy < ApplicationRecord
    validates :name, presence: true, uniqueness: true

    has_and_belongs_to_many :parcels, join_table: :parcels_species, foreign_key: :species_id, association_foreign_key: :parcel_id

    before_create :add_default_description


    private

    def add_default_description
        puts name
        self.description = "Description for #{self.name}" if !description
    end
end


# modifier les migrations pour corriger le species_id dans la table de jointure
# changer le sqm_size en size_sqm dans la table de jointure