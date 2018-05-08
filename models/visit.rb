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



end
