class ApplicationController < ActionController::Base
  require 'objspace'

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    ids = Rails.cache.fetch :people_ids do
      Person.pluck(:id)
    end
    @record_index_size = ObjectSpace.memsize_of(ids)
  end
end
