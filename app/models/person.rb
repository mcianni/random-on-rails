class Person < ActiveRecord::Base
  include RandomByDatabase
  include RandomByIdCache
  include RandomBySql
end
