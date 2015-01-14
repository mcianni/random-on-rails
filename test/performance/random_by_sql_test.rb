require 'test_helper'
require 'rails/performance_test_help'

class RandomBySql < ActionDispatch::PerformanceTest
  # Refer to the documentation for all available options
  # self.profile_options = { runs: 5, metrics: [:wall_time, :memory],
  #                          output: 'tmp/performance', formats: [:flat] }

  test "1 random" do
    Person.random_by_sql(n: 1)
  end

  test "10 random" do
    Person.random_by_sql(n: 10)
  end

  test "100 random" do
    Person.random_by_sql(n: 100)
  end

end
