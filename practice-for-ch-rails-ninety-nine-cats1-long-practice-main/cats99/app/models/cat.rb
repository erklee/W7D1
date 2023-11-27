
class Cat < ApplicationRecord 
    validates :birth_date, :color, :name, :sex, presence: true
   
    
    validate :birth_date_cannot_be_future
    SEX_OPTIONS = ["M", "F"]
    validates_inclusion_of :sex, in: SEX_OPTIONS
    CAT_COLORS = ["white","orange", "black", "gray"]
    validates_inclusion_of :color, in: CAT_COLORS
    
    def birth_date_cannot_be_future
        if self.birth_date > Date.today
            errors.add(:birth_date, "can't be in the future")
        end
    end

    def age
        Date.today.year - self.birth_date.year
    end

end