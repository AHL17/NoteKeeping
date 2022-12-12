#table name:note

#id : integer
#title : text
#body : text

class Note < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
