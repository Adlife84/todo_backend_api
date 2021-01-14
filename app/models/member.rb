class Member < ApplicationRecord
    # model association
    has_many :tasks, dependent: :destroy

    # validations
    validates_presence_of :img, :first_name, :last_name, :tel, :email, :status
end
