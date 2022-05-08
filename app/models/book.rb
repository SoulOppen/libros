class Book < ApplicationRecord
    enum status:[:Estante , :Prestado]
    ransacker :status, formatter: proc {|v| statuses[v]} do |parent|
        parent.table[:status]
      end
end
