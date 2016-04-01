class Payment < ActiveRecord::Base
	validates  :card_number, length:{is:16} 
    validates :card_number, :expiration_month, :amount, presence: {message:"Obligatorio"}
    
	 
end
