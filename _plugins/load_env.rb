require 'dotenv'

begin
  Dotenv.load
rescue LoadError
  puts "Dotenv gem not installed, proceeding without loading .env file."
end

Jekyll::Hooks.register :site, :pre_render do |site|
  site.config['baseurl'] = ENV['BASEURL'] || ""
  site.config['url'] = ENV['URL'] || "https://tekisolves.github.io"
end