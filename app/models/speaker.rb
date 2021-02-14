class Speaker < ApplicationRecord
    def name_role
        "#{name}, #{role}"
    end
end
