require_relative('../db/sql_runner')


class Country

  attr_reader :id, :country_name

def initialize(options)
  @id = options['id'].to_i if options['id']
  @country_name = options['country_name']
end

def save()
  sql = "INSERT INTO countries
  (
    country_name
  )
  VALUES
  (
    $1
  )
  RETURNING id"
  values = [@country_name]
  country = SqlRunner.run( sql, values ).first
  @id = country['id'].to_i
end


end
