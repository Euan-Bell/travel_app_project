require_relative('../db/sql_runner')


class City

  attr_reader :id, :city_name, :country_id 

def initialize(options)
  @id = options['id'].to_i if options['id']
  @city_name = options['city_name']
  @country_id = options['country_id']
end



end
