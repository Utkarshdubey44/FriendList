class PersonalDetail < ApplicationRecord
    validates :name, :gender, :phone, presence: true
end
