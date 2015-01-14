require 'active_support/concern'

module RandomBySql
  extend ActiveSupport::Concern

  class_methods do
    def random_by_sql n:
      find_by_sql "SELECT * FROM ( SELECT DISTINCT 1 + floor(random() * 5100000)::integer AS id FROM generate_series(1, 1100) g) r JOIN people USING (id) LIMIT #{n}"
    end
  end

end
