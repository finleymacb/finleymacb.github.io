<<<<<<< HEAD
########################################################################
# Basics
########################################################################

set :url_root, 'http://finleymacb.github.io'
set :css_dir, 'stylesheets'
set :images_dir, 'images'
set :partials_dir, 'partials'

page "*", layout: "layout"
page "/source/*", layout: "blog_layout"

activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = 'gh-pages'
  deploy.build_before = true
end


########################################################################
# Blog
########################################################################

activate :blog do |blog|

  blog.prefix = "blog"
  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"
  blog.sources = "source/:title.html"
  blog.permalink = "/{title}.html"
  blog.tag_template = "tag.html"

end

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

=======
###
# Blog settings
###

# Time.zone = "UTC"

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  # blog.prefix = "blog"

  # blog.permalink = "{year}/{month}/{day}/{title}.html"
  # Matcher for blog source files
  # blog.sources = "{year}-{month}-{day}-{title}.html"
  # blog.taglink = "tags/{tag}.html"
  # blog.layout = "layout"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  # blog.default_extension = ".markdown"

  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

  # Enable pagination
  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/{num}"
end

page "/feed.xml", layout: false

###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", layout: false
#
# With alternative layout
# page "/path/to/file.html", layout: :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
>>>>>>> c2a1fe96a893e375fa51e82228110cf5a14196a0
end