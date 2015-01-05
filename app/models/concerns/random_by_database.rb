require 'active_support/concern'

module RandomByDatabase
  extend ActiveSupport::Concern

  class_methods do
    def random_by_database n:
      order("RANDOM()").limit(n)
    end
  end
end
