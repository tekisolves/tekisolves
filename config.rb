require 'dotenv'
Dotenv.load

Jekyll::Hooks.register :site, :pre_render do |site|
  site.config['baseurl'] = ENV['BASEURL'] || ""
  site.config['url'] = ENV['URL'] || "https://tekisolves.github.io"
end