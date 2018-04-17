#
# Page Title
#
# Write a method that takes a URL and
# returns the website's title.
#
# Examples:
# pageTitle("http://google.com") => "Google"
# pageTitle("http://www.reddit.com") => "reddit: the front page of the internet"
#
# Check your answers by running the tests:
# ruby tests/16_page_title_test.rb
<<<<<<< HEAD

#Long way:
#
# require 'metainspector'
#
# def pageTitle(url)
#   title = []
#   page = MetaInspector.new(url)
#   title = page.title
#   puts title
# end
#
# pageTitle('google.com')

require 'metainspector'

def pageTitle(url)
  return MetaInspector.new(url).title
=======
#

def pageTitle(url)
  # your code here
>>>>>>> ff26f20482783fcc77584a400a0c3cc43f06f6da
end
