desc "Build prototype from source to build"
task :build_docs do
  puts "## Building the kingdom"
  status = system("middleman build --clean")
  puts status ? "OK" : "FAILED"
end

desc "Run the middleman server"
task :view_docs do
  system("middleman server -p 2113")
end

desc "Run a simple server in the build directory"
task :view_static do
  system("cd build && python -m SimpleHTTPServer 8888")
end