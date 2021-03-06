require_relative('../db/sql_runner')


class Visit

  attr_reader :id, :location_id

def initialize(options)
  @id = options['id'].to_i if options['id']
  @location_id = options['location_id']
end

def save()
  sql = "INSERT INTO visits
  (
    location_id
  )
  VALUES
  (
    $1
  )
  RETURNING id"
  values = [@location_id]
  visit = SqlRunner.run( sql, values ).first
  @id = visit['id'].to_i
end

def self.all()
  sql = "SELECT * FROM visits"
  results = SqlRunner.run( sql )
  return results.map { |visit| Visit.new( visit ) }
end

def delete()
  sql = "DELETE FROM visits
  WHERE id = $1"
  values = [@id]
  SqlRunner.run( sql, values )
end


def self.delete_all()
  sql = "DELETE FROM visits"
  SqlRunner.run(sql)
end

def self.find(id)
  sql = "SELECT * FROM visits
  WHERE id = $1"
  values = [id]
  results = SqlRunner.run( sql, values )
  return Visit.new( results.first )
end



# TODO: changeit to use sql
 def location
   location = Location.find(@location_id)
   return location
 end





end
