require "om"
class FancyBookMetadata
  include OM::XML::Document

  set_terminology do |t|
    t.root(:path=>"fields")
    t.title {
      t.language(:path=>{:attribute=>"lang"})
    }

    # The underscore is purely to avoid namespace conflicts.
    t.name_ {
      t.family_name(:path=>"familyName")
      t.given_name(:path=>"givenName")
      t.role {
        t.text
        t.code
      }
    }
  end

  # This method is called when you create new XML documents from scratch.
  # It must return a Nokogiri::Document.  Other than that, you can make your "default" documents look however you want.
  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end
end
