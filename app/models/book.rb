class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    enum status:[:Estante , :Prestado]
    ransacker :status, formatter: proc {|v| statuses[v]} do |parent|
        parent.table[:status]
      end
end
