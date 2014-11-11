class Post < ActiveRecord::Base
  belongs_to :user

  include Garage::Representer
  include Garage::Authorizable

  property :id
  property :title
  property :body
  property :published_at
  property :user, selectable: true

  def self.build_permissions(perms, other, target)
    perms.permits! :read
    perms.permits! :write
  end

  def build_permissions(perms, other)
    perms.permits! :read if published_at? || user == other
    perms.permits! :write
  end
end
