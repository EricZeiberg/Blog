class Category
    include Mongoid::Document

    field :name, :type => String, :default => ""
    field :description, :type => String, :default => ""
    field :order, :type => Integer, :default => 0

    has_many :posts

end
