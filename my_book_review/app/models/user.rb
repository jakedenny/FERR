class User < ActiveRecord::Base
  attr_accessible :age, :email, :first_name, :last_name

  has_many :reviews

  def is_teen?
  	#if age > 12 && age < 19
  	#	return true
  	#else
  	#	return false
  	#end
  	# use short-hand version, below
  	age > 12 && age < 19
  end

  def has_long_name?
  	last_name.length + first_name.length > 10
  end

  def self.all_long_name
  	self.all.select do |user|
  		user.has_long_name?
  	end
  end

  #def all_long_name
  #	if has_long_name = true
  #		then long_name_list = Array.new
  #		return long_name_list
  #	end
  #end
  # fail on the above attempt

end
