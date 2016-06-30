#Can replace most of active record behavior
class InMemory
  include ActiveModel::Model

  @@collection = {}
  @@curr_id = 0
  attr_accessor :id
  def initialize
  end


  def save
    return false unless id
    @@collection[id] = self
    return true
  end

  class << self
    def create(attrs={})
      obj = new
      attrs.each_pair do |key, value|
        obj.send(:"#{key}=", value)
      end
      if obj.valid?
        obj.id = next_id
        obj.save
      end
      obj
    end

    def find(key)
      @@collection[key]
    end

    def all
      @@collection.values
    end

    def where(options={})
      @@collection.values.select do|o|
        valid = true
        options.each_pair do |attr, value|
          valid &= o.send(attr) == value
          break unless valid
        end
      end
    end
    private
      def next_id
        @@curr_id += 1
      end
  end
end
