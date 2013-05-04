class User < ActiveRecord::Base
  attr_accessible :age, :email, :first_name, :last_name
end
