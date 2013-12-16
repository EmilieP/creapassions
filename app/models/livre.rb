class Livre < ActiveRecord::Base
  include LivreConnection
  self.table_name = "livre"
end
