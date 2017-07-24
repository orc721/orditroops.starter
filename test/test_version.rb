# encoding: utf-8

###
#  to run use
#     ruby -I ./lib -I ./test test/test_version.rb


require 'helper'


class TestVersion < MiniTest::Test


  def test_version

    puts Officetxt::VERSION

    puts "  jekyll/#{Jekyll::VERSION}"
    puts "    jekyll-import/#{JekyllImport::VERSION}"
    puts "    jekyll-avatar/#{Jekyll::Avatar::VERSION}"

    puts "    jekyll-planet/#{JekyllPlanet::VERSION}"

=begin
    puts "  jekyll-feed/#{Jekyll::Feed::VERSION}"
   no: version in ruby just in gemspec e.g.
   Gem::Specification.new do |spec|
     spec.name          = "jekyll-feed"
     spec.version       = "0.9.2"

     todo: try to get info from gemspec??
=end


    puts "  octopod/#{Jekyll::Octopod::VERSION::STRING}"


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

    puts "  quik/#{Quik::VERSION}"
    puts    Quik.banner

    puts "  mrhyde/#{MrHyde::VERSION}"
    puts    MrHyde.banner

    puts "  drjekyll/#{DrJekyll::VERSION}"
    puts    DrJekyll.banner

    puts "  slideshow/#{SlideshowCli::VERSION}"   ## note: Slideshow::VERSION is for models
    puts    SlideshowCli.banner

    puts "  journaltxt/#{Journaltxt::VERSION}"
    puts    Journaltxt.banner

    puts "  pluto/#{PlutoCli::VERSION}"   ## note: Pluto::VERSION is for models
    puts    PlutoCli.banner


    puts "  rouge/#{Rouge.version}"           ## incl.  rougify
    puts "  kramdown/#{Kramdown::VERSION}"
    puts "  word-to-markdown/#{WordToMarkdown::VERSION}"


    ###
    ##  ## fix:  hexapdf requires Ruby version >= 2.3.
    ## puts "  hexapdf/#{HexaPDF::VERSION}"

    Officetxt.about


    assert true
    ## assume everything ok if get here
  end

end # class TestVersion
