class RequestMovieHandler
  require 'themoviedb'
  require_relative '../config/'
  require_relative '../lib/helper_methods'
  include TMBDApiKey

  TMBDApiKey.key 
  
end
