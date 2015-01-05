require 'active_support/concern'

module RandomByIdCache
  extend ActiveSupport::Concern

  class_methods do
    def random_by_id_cache n:
      ids = Rails.cache.fetch "#{name}_id_cache" do
        pluck(:id)
      end
      find(ids.sample(n))
    end
  end

end
