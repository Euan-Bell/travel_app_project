require_relative('../db/sql_runner')


class Country

  attr_reader :id, :country_name

def initialize(options)
  @id = options['id'].to_i if options['id']
  @country_name = options['country_name']
end



end
