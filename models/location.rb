require_relative('../db/sql_runner')
require_relative('./realm.rb')


class Location

  attr_reader :id, :realm_id
  attr_accessor :location_name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @location_name = options['location_name']
    @realm_id = options['realm_id']
  end

  def save()
    sql = "INSERT INTO locations
    (
      location_name, realm_id
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@location_name, @realm_id]
    location = SqlRunner.run( sql, values ).first
    @id = location['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM locations"
    results = SqlRunner.run( sql )
    return results.map { |location| Location.new( location ) }
  end

  def self.find( id )
    sql = "SELECT * FROM locations
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Location.new( results.first )
  end

  def update()
    sql = 'UPDATE locations
    SET location_name = $1
    WHERE id = $2';
    values = [@location_name, @id]
    location = SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM locations
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all()
    sql = "DELETE FROM locations"
    SqlRunner.run(sql)
  end

  def realm()
    return Realm.find(@realm_id)
  end

end
