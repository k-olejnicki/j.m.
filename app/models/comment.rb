class Comment < ActiveRecord::Base
  belongs_to :admin
  validates_inclusion_of :gender, :in => %w( m k M K)
end
