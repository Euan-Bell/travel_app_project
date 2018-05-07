require_relative('../db/sql_runner')


class Visit

  attr_reader :id, :city_id, :country_id

def initialize(options)
  @id = options['id'].to_i if options['id']
  @city_id = options['city_id']
  @country_id = options['country_id']
end



end
