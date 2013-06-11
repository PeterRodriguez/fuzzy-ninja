class InboundMessage < ActiveRecord::Base
  attr_accessible :message, :number_range_id, :recipient, :sender, :created_at
  belongs_to :number_range
  validates_presence_of :message, :number_range_id, :sender, :recipient
  validates_numericality_of :sender, :recipient
end
