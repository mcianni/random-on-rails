class ApplicationController < ActionController::Base
  require 'objspace'

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    #@record_index_size = ObjectSpace.memsize_of(ids)
    @records1 = Person.random_by_database(n: 4)
    @records2 = Person.random_by_id_cache(n: 4)
    @records3 = Person.random_by_sql(n: 4)
  end
end
