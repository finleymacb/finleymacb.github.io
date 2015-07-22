########################################################################
# Basics
########################################################################

set :url_root, 'http://finleymacb.github.io'
set :css_dir, 'stylesheets'
set :images_dir, 'images'
set :partials_dir, 'partials'

########################################################################
# Blog
########################################################################

activate :blog do |blog|

  blog.prefix = "blog"
  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"
  blog.sources = "source/:title.html"
  blog.permalink = "source/{title}.html"
  blog.tag_template = "tag.html"

end

page "/feed.xml", layout: false

page "*", layout: "layout"

########################################################################
# Output
########################################################################

activate :title, site: 'Finley Mac B', separator: ' | '
activate :syntax
activate :livereload

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions',
    'Firefox >= 25',
    'Android >= 4',
    'Explorer >= 9',
    'Opera >= 15',
    'OperaMini >= 7']
  config.cascade  = false
  config.inline   = true
  end

configure :build do

end