class Competition < ActiveRecord::Base
  include ActiveModel::Serialization
  enum status: [:running, :finished]
  validates :status, presence: true
  validates :name, presence: true

  def self.types
    @types ||= Competition.descendants.collect{|d| d.name.underscore}
  end

#  def attributes
#    {
#      id: nil,
#      name: nil,
#      competition_type: nil,
#      status: nil,
#      url: nil
#    }
#  end
#  def competition_type
#    type.underscore
#  end
#  def url
#    "/competitions/#{id}"
#  end
end
