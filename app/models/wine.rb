class Wine < ActiveRecord::Base
  belongs_to :user

  validates :name, :varietal, :appelation, :vintage, :tasting_notes, presence: true
end
