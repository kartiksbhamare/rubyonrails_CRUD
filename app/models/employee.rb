class Employee < ApplicationRecord
    validates :f_name,presence: true
    validates :m_name,presence: true 
    has_many :documents 
end
