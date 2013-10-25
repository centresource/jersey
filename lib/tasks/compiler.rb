require 'coffee_script'
require 'erb'
require 'json'
require 'optparse'
require 'pry'
require 'sass'
require 'shellwords'
require 'sprockets'
require 'uglifier'
require 'yaml'
require 'yui/compressor'

class Compiler
  def initialize(opts={})
    @opts = opts
  end

  def compile!(filenames, opts={})
    filenames = [filenames] unless filenames.is_a?(Array)
    opts = @opts.merge(opts)
    environment = Sprockets::Environment.new(opts[:root_dir] || Dir.pwd)
    odir = opts[:output_dir] || "."

    if opts[:paths]
      opts[:paths].each do |path|
        environment.append_path path
      end
    end

    if environment.paths.empty?
      puts "No load paths given"
    end

    environment.js_compressor = opts[:js_compressor] if opts[:js_compressor]
    environment.css_compressor = opts[:css_compressor] if opts[:css_compressor]

    begin
      unless filenames.empty?
        filenames.each do |filename|
          ofile = odir + "/" + environment[filename].logical_path
          puts "Compiling #{opts[:comment] || "assets"} at #{Time.now.to_i}"
          begin
            environment[filename].write_to ofile
          rescue Exception => e
            puts "ERROR ON: #{filename}, #{e}"
          end
        end
      else
        puts "No files to compile"
      end
    rescue Sprockets::FileNotFound => e
      puts "File not found: #{e}"
    rescue ExecJS::RuntimeError => ejs
      puts "Compilation error: #{ejs}#{ejs.sprockets_annotation}"
    rescue Exception => ge
      puts "Error: #{ge}"
    end
  end
end
