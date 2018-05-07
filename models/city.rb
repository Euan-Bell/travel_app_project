require_relative('../db/sql_runner')
require_relative('./country.rb')


class City

  attr_reader :id, :country_id
  attr_accessor :city_name

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

def self.all()
    sql = "SELECT * FROM cities"
    results = SqlRunner.run( sql )
    return results.map { |city| City.new( city ) }
  end

def self.find( id )
    sql = "SELECT * FROM cities
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return City.new( results.first )
  end

  def update()
  sql = 'UPDATE cities
  SET city_name = $1
  WHERE id = $2';
  values = [@city_name, @id]
  city = SqlRunner.run(sql, values)
end

def self.delete_all()
 sql = "DELETE FROM cities"
 SqlRunner.run(sql)
end

end
