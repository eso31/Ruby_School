class User < ApplicationRecord
  validates :email, presence:true ,uniqueness: true
  has_and_belongs_to_many :events, -> { distinct }

  def full_name
    first_name + ' ' + last_name 
  end
end
