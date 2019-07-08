# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.greenerfamilyliving.co.uk"
SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new(
  fog_provider: 'AWS',
  aws_access_key_id: ENV["S3_ACCESS_KEY"],
  aws_secret_access_key: ENV["S3_SECRET_KEY"],
  fog_directory: ENV["S3_BUCKET"],
  fog_region: 'us-east-2')

SitemapGenerator::Sitemap.public_path = 'tmp/'
SitemapGenerator::Sitemap.sitemaps_host = ENV["S3_HOST"]
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.ping_search_engines('http://www.greenerfamilyliving.co.uk/sitemap')

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  add posts_path, :priority => 0.7, :changefreq => 'daily'
  
  # Add all posts:

  Post.find_each do |post|
      add post_path(post), :lastmod => post.updated_at, :changefreq => 'daily'
  end
end
