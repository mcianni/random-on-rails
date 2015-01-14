require 'test_helper'
require 'benchmark'

Benchmark.bm(7) do |x|
  x.report("by database") { Person.random_by_database(n: 4) }
  x.report("by id cache") { Person.random_by_id_cache(n: 4) }
  x.report("by id cache2") { Person.random_by_id_cache2(n: 4) }
  x.report("by sql")      { Person.random_by_sql(n: 4)      }
end
