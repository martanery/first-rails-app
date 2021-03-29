class PagesController < ApplicationController
    
    def about

    end

    def contact
        search = params[:member]
        @members = [ 'Ben', 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]

        if search.present?
            @members = @members.select { |name| name.downcase == search.downcase}
        end
    end
  
    def home
        @time = Time.now
    end

end
