class ArtworkSerializer < ActiveModel::Serializer
  attributes :id, :classification, :title, :dated, :medium, :description, :century, :people, :url, :culture
end
