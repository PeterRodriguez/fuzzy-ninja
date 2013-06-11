class NumberRange < ActiveRecord::Base
  attr_accessible :user_id, :range_end, :range_start, :name
  belongs_to :user
  has_many :inbound_messages
  validates :name, :uniqueness => true
  validates_presence_of :user_id, :range_end, :range_start, :name
  validates_numericality_of :range_end, :greater_than => Proc.new { |r| r.range_start.to_i }

  def display_name
    self.name
  end
end
