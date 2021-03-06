# == Schema Information
#
# Table name: refinery_page_parts
#
#  id               :integer          not null, primary key
#  refinery_page_id :integer
#  title            :string(255)
#  body             :text
#  position         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

module Refinery
  class PagePart < Refinery::Core::BaseModel

    attr_accessible :title, :content, :position, :body, :refinery_page_id
    belongs_to :page, :foreign_key => :refinery_page_id

    validates :title, :presence => true, :uniqueness => {:scope => :refinery_page_id}
    alias_attribute :content, :body

    translates :body if respond_to?(:translates)

    def to_param
      "page_part_#{title.downcase.gsub(/\W/, '_')}"
    end

    def body=(value)
      super

      normalise_text_fields
    end

    self.translation_class.send :attr_accessible, :locale if self.respond_to?(:translation_class)

  protected
    def normalise_text_fields
      if body.present? && body !~ %r{^<}
        self.body = "<p>#{body.gsub("\r\n\r\n", "</p><p>").gsub("\r\n", "<br/>")}</p>"
      end
    end

  end
end
