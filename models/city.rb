require_relative('../db/sql_runner')
require_relative('./country.rb')


class City

  attr_reader :id, :city_name, :country_id

def initialize(options)
  @id = options['id'].to_i if options['id']
  @city_name = options['city_name']
  @country_id = options['country_id']
end

def save()
  sql = "INSERT INTO cities
  (
    city_name, country_id
  )
  VALUES
  (
    $1, $2
  )
  RETURNING id"
  values = [@city_name, @country_id]
  city = SqlRunner.run( sql, values ).first
  @id = city['id'].to_i
end

def self.find( id )
    sql = "SELECT * FROM cities
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return City.new( results.first )
  end

end
