class User < ActiveRecord::Base
  attr_accessible :contact_info, :login, :password, :state
  
  state_machine initial: :unpublished do
    event :unpublish do
      transition all => :unpublished
    end

    event :publish do
      transition all => :published
    end

    event :delete do
      transition all => :deleted
    end
  end
  
end
