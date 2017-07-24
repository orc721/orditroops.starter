# encoding: utf-8


require 'pp'


## add tools
require 'jekyll'
require 'quik'
require 'mrhyde/tools'
require 'drjekyll'
require 'slideshow'
require 'journaltxt'
require 'pluto'

require 'kramdown'
require 'word-to-markdown'
require 'rouge'


require 'jekyll-import'
require 'jekyll-import/version'   ## note: not auto-loaded with gem

## require 'jekyll-octopod'

### add more jekyll plugins plus jekyll-admin
###   plus add some themes!!!

require 'jekyll-avatar'
require 'jekyll-avatar/version'   ## note: not auto-loaded with plugin
require 'jekyll-feed'



# our own code
require 'officetxt/version'   # note: let version always go first



module Officetxt

def self.about

   puts "Welcome to officetxt/#{Officetxt::VERSION}:"
   puts
   puts "Tool versions installed:"

   puts "  journaltxt/#{Journaltxt::VERSION}"
   puts "  jekyll/#{Jekyll::VERSION}"
   puts "    jekyll-import/#{JekyllImport::VERSION}"
   puts "    jekyll-avatar/#{Jekyll::Avatar::VERSION}"

=begin
    puts "  jekyll-feed/#{Jekyll::Feed::VERSION}"
   no: version in ruby just in gemspec e.g.
   Gem::Specification.new do |spec|
     spec.name          = "jekyll-feed"
     spec.version       = "0.9.2"

     todo: try to get info from gemspec??
=end


=begin
## fix Octopod

puts "  jekyll-octopod/#{Jekyll::Octopod::VERSION}"

C:/prg/ri/v310/Ruby2.1.0/lib/ruby/site_ruby/2.1.0/rubygems/core_ext/kernel_require.rb:68:in `require': C:/prg/ri/v310/Ruby2.1.0/lib/ruby/gems/2.1.0/gems/jekyll-octopod-0.9.0/lib/jekyll/podigee_player_tag.rb:32: void value expression (SyntaxError)
C:/prg/ri/v310/Ruby2.1.0/lib/ruby/gems/2.1.0/gems/jekyll-octopod-0.9.0/lib/jekyll/podigee_player_tag.rb:33: syntax error, unexpected '<', expecting keyword_end
        <script>
         ^
C:/prg/ri/v310/Ruby2.1.0/lib/ruby/gems/2.1.0/gems/jekyll-octopod-0.9.0/lib/jekyll/podigee_player_tag.rb:35: syntax error, unexpected '<'
        </script>
         ^
C:/prg/ri/v310/Ruby2.1.0/lib/ruby/gems/2.1.0/gems/jekyll-octopod-0.9.0/lib/jekyll/podigee_player_tag.rb:37: syntax error, unexpected tSTRING_BEG, expecting keyword_end
...ipts/podigee-podcast-player.js">
...                               ^
C:/prg/ri/v310/Ruby2.1.0/lib/ruby/gems/2.1.0/gems/jekyll-octopod-0.9.0/lib/jekyll/podigee_player_tag.rb:37: unterminated string meets end of file
=end

   puts "  mrhyde/#{MrHyde::VERSION}"
   puts "  drjekyll/#{DrJekyll::VERSION}"

   puts "  slideshow/#{SlideshowCli::VERSION}"   ## note: Slideshow::VERSION is for models

   puts "  pluto/#{PlutoCli::VERSION}"   ## note: Pluto::VERSION is for models


   puts "  rouge/#{Rouge.version}"           ## incl.  rougify
   puts "  kramdown/#{Kramdown::VERSION}"
   puts "  word-to-markdown/#{WordToMarkdown::VERSION}"   # incl. w2m

   puts "  quik/#{Quik::VERSION}"


    ### todo:
    ##  (auto-)issue list commands for:   !!!!!!!!!!
    ##  drjekyll
    ##  mrhyde
    ##  slideshow
    ##  pluto
    ##  quik

    ###
    ##  ## fix:  hexapdf requires Ruby version >= 2.3.
    ## puts "  hexapdf/#{HexaPDF::VERSION}"


end  # method about

end # class Officetxt



# say hello
puts Officetxt.banner    if defined?( $RUBYLIBS_DEBUG )
