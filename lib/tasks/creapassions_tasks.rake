namespace :creapassions do
  desc "Explaining what the task does"
  task :import_livres => :environment do

    raise "ATTENTION !! => IDS parameters needed, example: IDS=1,2,3" unless ENV["IDS"]
    ids = ( ENV["IDS"] ).split(",").collect { |n| n.to_i }

    Book.destroy_all

    ids.each do |id|
      livre   = Livre.find(id)
      book    = Book.new
      book.id             = livre.id_livre
      book.title          = livre.titre
      book.subtitle       = livre.sous_titre
      book.page_count     = livre.nb_page

      book.save
    end
  end
end


