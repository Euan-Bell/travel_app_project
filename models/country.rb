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

  def self.find( id )
    sql = "SELECT * FROM countries
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Country.new( results.first )
  end

end
