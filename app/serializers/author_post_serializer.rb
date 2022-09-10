class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags
  belongs_to :author
  def short_content
    short = self.object.content[0, 40] + '...'
  end
end
