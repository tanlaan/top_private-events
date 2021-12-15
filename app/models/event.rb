class Event < ApplicationRecord
  validates :title, :description, :date, :location, presence: true
  belongs_to :creator, class_name: 'User'
  has_and_belongs_to_many :attendees, class_name: 'User'

  scope :past, -> { where('date < ?', Time.now) }
  scope :future, -> { where('date > ?', Time.now) }

  # def self.past
  #   where('date < ?', Time.now)
  # end

  # def self.future
  #   where('date > ?', Time.now)
  # end

end
