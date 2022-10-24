# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

#puts a banner in the terminal when running the app
# Use https://fsymbols.com/text-art/ or https://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20
require ::File.expand_path('config/environment', __dir__)

def banner
  %{

    ██╗░░██╗███████╗███╗░░██╗████████╗░█████╗░░██████╗████████╗██╗░█████╗░
    ██║░██╔╝██╔════╝████╗░██║╚══██╔══╝██╔══██╗██╔════╝╚══██╔══╝██║██╔══██╗
    █████═╝░█████╗░░██╔██╗██║░░░██║░░░███████║╚█████╗░░░░██║░░░██║██║░░╚═╝
    ██╔═██╗░██╔══╝░░██║╚████║░░░██║░░░██╔══██║░╚═══██╗░░░██║░░░██║██║░░██╗
    ██║░╚██╗███████╗██║░╚███║░░░██║░░░██║░░██║██████╔╝░░░██║░░░██║╚█████╔╝
    ╚═╝░░╚═╝╚══════╝╚═╝░░╚══╝░░░╚═╝░░░╚═╝░░╚═╝╚═════╝░░░░╚═╝░░░╚═╝░╚════╝░                                                                                                                           
  }
end
  
puts banner

run Rails.application
Rails.application.load_server
