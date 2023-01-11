class ApplicationController < ActionController::Base
	def index
        query = params[:query]
        @results = PgSearch.multisearch(query)
   end

end
