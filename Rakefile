require 'hoe'
require './lib/officetxt/version.rb'

Hoe.spec 'officetxt' do

  self.version = Officetxt::VERSION

  self.summary = "officetxt (Office.TXT) - the free writer's command line tool suite"
  self.description = summary

  self.urls    = ['https://github.com/officetxt/officetxt']

  self.author  = 'Gerald Bauer'
  self.email   = 'ruby-talk@ruby-lang.org'

  # switch extension to .markdown for gihub formatting
  self.readme_file  = 'README.md'
  self.history_file = 'HISTORY.md'

  self.extra_deps = [
      ['journaltxt'],
      ['jekyll'],
      ['jekyll-import'],
      ['jekyll-avatar'],
      ['mrhyde-tools'],
      ['drjekyll'],
      ['slideshow'],
      ['pluto'],
      ['rouge'],
      ['kramdown'],
      ['word-to-markdown'],
      ['quik']
  ]

  self.licenses = ['Public Domain']

  self.spec_extras = {
   required_ruby_version: '>= 1.9.2'
  }
end
