class Employee < ApplicationRecord
    validates :f_name,presence: true
    validates :date_of_birth,presence: true 
    has_many :documents 
end
