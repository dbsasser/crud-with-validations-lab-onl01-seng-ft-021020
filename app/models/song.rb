class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  # validates :released, inclusion: {in: %w(true false)}
  validates :artist_name, presence: true
  validate :release_year_if_released

  def release_year_if_released
    validates :release_year, presence: true if self.released
  end
end
