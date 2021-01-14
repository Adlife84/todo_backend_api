class Task < ApplicationRecord
  # model association
  belongs_to :member

   # validation
   validates_presence_of :title
end
