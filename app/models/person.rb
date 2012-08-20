class Person
  include Mongoid::Document

  field :firstname, type: String
  field :lastname, type: String
  field :salary, type: BigDecimal
end
