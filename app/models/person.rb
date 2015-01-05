class Person < ActiveRecord::Base
  include RandomByDatabase
  include RandomByIdCache

end
