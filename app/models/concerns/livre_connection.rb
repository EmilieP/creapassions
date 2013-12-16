module LivreConnection
  extend ActiveSupport::Concern
  included do
    establish_connection "livre_#{Rails.env}"
  end
end

