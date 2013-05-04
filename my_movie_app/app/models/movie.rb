class Movie < ActiveRecord::Base
  attr_accessible :genre, :title, :year_released
end
