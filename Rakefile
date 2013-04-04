require "rubygems"
require 'rake'
require 'yaml'
require 'time'
require 'zemanta'

SOURCE = "."
CONFIG = {
  'layouts' => File.join(SOURCE, "_layouts"),
  'posts' => File.join(SOURCE, "_posts")
}

###
# Based on jekyll-bootstrap's Rakefile.
# Thanks, @plusjade
# https://github.com/plusjade/jekyll-bootstrap
###

def get_zemanta_terms(content)
  $stderr.puts "Querying Zemanta..."
  zemanta = Zemanta.new "dh6vfw5lzurid0tq5oq5qqij"
  suggests = zemanta.suggest(content)
  res = []
  suggests['keywords'].each {|k|
    res << k['name'].downcase.gsub(/\s*\(.*?\)/,'').strip if k['confidence'] > 0.02
  }
  res
end

# Usage: rake post title="A Title" [date="2012-02-09"]
desc "Begin a new post in #{CONFIG['posts']}"
task :post do
  abort("rake aborted: '#{CONFIG['posts']}' directory not found.") unless FileTest.directory?(CONFIG['posts'])
  title = ENV["title"] || "new-post"
  slug = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  begin
    date = (ENV['date'] ? Time.parse(ENV['date']) : Time.now).strftime('%Y-%m-%d')
  rescue Exception => e
    puts "Error - date format must be YYYY-MM-DD, please check you typed it correctly!"
    exit -1
  end
  filename = File.join(CONFIG['posts'], "#{date}-#{slug}.md")
  if File.exist?(filename)
    abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
  end

  puts "Creating new post: #{filename}"
  open(filename, 'w') do |post|
    post.puts "---"
    post.puts "layout: post"
    post.puts "title: \"#{title.gsub(/-/,' ')}\""
    post.puts "category: posts"
    post.puts "---"
  end
end # task :post

desc "Launch preview environment"
task :preview do
  system "jekyll --auto --server"
end # task :preview

config_file = '_config.yml'
config = YAML.load_file(config_file)

env = ENV['env'] || 'production'

task :deploy do
  command = "jekyll && rsync -avz --delete "
  command << "-e 'ssh -p #{config['environments'][env]['remote']['port']}' " unless config['environments'][env]['remote']['port'].nil?
  command << "#{config['destination']}/ #{config['environments'][env]['remote']['connection']}:#{config['environments'][env]['remote']['path']}"
  sh command
end # task :deploy

desc "Generate and open your site in your browser"
task :launch do
  sh "open #{config['environments'][env]['url']}"
end # task :launch

desc "Add Zemanta tags to post YAML"
task :add_tags, :post do |t, args|
  file = args.post
  if File.exists?(file)
    # Split the post by --- to extract YAML headers
    contents = IO.read(file).split(/^---\s*$/)
    headers = YAML::load("---\n"+contents[1])
    content = contents[2].strip
    # skip adding tags if it's already been done
    unless headers['tags'] && headers['tags'] != []
      begin
        # retrieve the suggested tags
        tags = get_zemanta_terms(content)
        # insert them in the YAML array
        headers['tags'] = tags
        # Dump the headers and contents back to the post
        File.open(file,'w+') {|file| file.puts YAML::dump(headers) + "---\n" + content + "\n"}
      rescue
        $stderr.puts "ERROR: #{file}"
      end
    else
      puts "Skipped: post already has tags header"
    end
  else
    puts "No such file."
  end
end