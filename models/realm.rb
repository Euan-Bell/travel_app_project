require_relative('../db/sql_runner')


class Realm

  attr_reader :id
  attr_accessor :realm_name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @realm_name = options['realm_name']
  end

  def save()
    sql = "INSERT INTO realms
    (
      realm_name
    )
    VALUES
    (
      $1
    )
    RETURNING id"
    values = [@realm_name]
    realm = SqlRunner.run( sql, values ).first
    @id = realm['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM realms"
    results = SqlRunner.run( sql )
    return results.map { |realm| Realm.new( realm ) }
  end

  def self.find( id )
    sql = "SELECT * FROM realms
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Realm.new( results.first )
  end

  def update()
    sql = 'UPDATE realms
    SET realm_name = $1
    WHERE id = $2';
    values = [@realm_name, @id]
    realm = SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM realms"
    SqlRunner.run(sql)
  end




end
