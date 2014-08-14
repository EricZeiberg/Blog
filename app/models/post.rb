class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, :type => String, :default => ""
  field :description, :type => String, :default => ""
  field :contents, :type => String, :default => ""
  field :date, :type => Time, :default => ""

  belongs_to :user
  belongs_to :category

  def get_name
    :name
  end

  def get_user
    :user
  end

end
