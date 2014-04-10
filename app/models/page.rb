class Page < ActiveFedora::Base
  include Hydra::AccessControls::Permissions

  has_metadata 'descMetadata', type: PageMetadata

  belongs_to :book, :property=> :is_part_of

  has_attributes :number, datastream: 'descMetadata', multiple: false
  has_attributes :text, datastream: 'descMetadata', multiple: false

  has_file_datastream "pageContent"
end
