class Serializer

  def initialize(resource_klass, options ={})
    @resource_klass = resource_klass
    @serializer = JSONAPI::ResourceSerializer.
      new(resource_klass, base_url: options[:base_url].to_s)
  end

  def serialize(obj)
    @serializer.serialize_to_hash(@resource_klass.new(obj, nil))
  end
end
