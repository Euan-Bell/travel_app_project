require_relative('../db/sql_runner')


class Country

  attr_reader :id
  attr_accessor :country_name

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

  def self.all()
    sql = "SELECT * FROM countries"
    results = SqlRunner.run( sql )
    return results.map { |country| Country.new( country ) }
  end

  def self.find( id )
    sql = "SELECT * FROM countries
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Country.new( results.first )
  end

  def update()
    sql = 'UPDATE countries
    SET country_name = $1
    WHERE id = $2';
    values = [@country_name, @id]
    country = SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM countries"
    SqlRunner.run(sql)
  end




end
