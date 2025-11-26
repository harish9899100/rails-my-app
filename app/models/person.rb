class Person
  include ActiveModel::AttributeMethods
  attribute_method_suffix "_short?"
  define_attribute_methods :name

  attr_accessor :name

  alias_attribute :full_name, :name
  private
  def attribute_short?(attribute)
    public_send(attribute).length < 5
  end
end
