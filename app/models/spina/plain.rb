module Spina
  class Plain < ApplicationRecord
    self.table_name = "spina_texts"

    extend Mobility

    translates :content

    has_many :page_parts, as: :page_partable
    has_many :layout_parts, as: :layout_partable
    has_many :structure_parts, as: :structure_partable
  end
end
