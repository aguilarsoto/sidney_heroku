class User < ActiveRecord::Base
   searchable do.
      text :first_name, :last_name, :default_boost => 2
      text :keywords, :multi => true do
        [first_name, last_name, address.state]
      end
      text :state do
         address.state
      end
   end

end
