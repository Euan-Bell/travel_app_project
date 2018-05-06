require_relative('../db/sql_runner')


class City

def initialize(options)
  @id = options['id'].to_i if options['id']
  @city_name = options['city_name']
end



end
