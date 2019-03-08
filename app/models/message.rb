class Message
    include ActiveModel::Validations
    include ActiveModel::Conversion
    extend ActiveModel::Naming
    attr_accessor :title, :body
    
    validates :title, :body , presence: true
    validates :title, :length => { :minimum => 2 }
    
    def initialize(attributes = {})
      attributes.each do |name, value|
          send("#{name}=", value)
      end
      
    end

    def persisted?
        false
    end



end