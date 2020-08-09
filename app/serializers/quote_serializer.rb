class QuoteSerializer < ActiveModel::Serializer 
    attributes :content, :category_id
    belongs_to :category  
end 