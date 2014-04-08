class Book < ActiveFedora::Base
  has_many :pages, :property=> :is_part_of

  has_metadata 'descMetadata', type: BookMetadata

  has_attributes :title, datastream: 'descMetadata', multiple: false
  has_attributes :author, datastream: 'descMetadata', multiple: false

end
