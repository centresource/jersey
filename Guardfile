# A sample Guardfile
# More info at https://github.com/guard/guard#readme
require 'guard/guard'
require "#{File.dirname(__FILE__)}/lib/tasks/compiler"

module ::Guard
  class JsGuard < ::Guard::Guard
    def initialize(*args)
      @compiler = Compiler.new :root_dir => File.dirname(__FILE__)
      super
    end

    def compile!
      @compiler.compile!(["application", "ie8"], {
        :paths => [
          "vendor/assets/javascripts",
          "lib/assets/javascripts",
          "app/assets/javascripts"
        ],
        :output_dir => "#{File.dirname(__FILE__)}/public/assets/javascripts",
        :js_compressor => Uglifier.new,
        :comment => "JavaScripts"
      })
    end

    def run_all
      compile!
    end

    def run_on_changes(paths)
      compile!
    end
  end

  class SassGuard < ::Guard::Guard
    def initialize(*args)
      @compiler = Compiler.new :root_dir => File.dirname(__FILE__)
      super
    end

    def compile!
      @compiler.compile!("screen", {
        :paths => [
          "vendor/assets/stylesheets",
          "lib/assets/stylesheets",
          "app/assets/stylesheets"
        ],
        :output_dir => "#{File.dirname(__FILE__)}/public/assets/stylesheets",
        :css_compressor => YUI::CssCompressor.new,
        :comment => "stylesheets"
      })
    end

    def run_all
      compile!
    end

    def run_on_changes(paths)
      compile!
    end
  end
end

guard :js_guard do
  watch(/^(app|vendor)\/.*\.(js|coffee|hbs)$/)
end

guard :sass_guard do
  watch(/^(app|vendor)\/.*\.(css|scss)$/)
end

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  watch(%r{(app|vendor)/assets/\w+/(.+\.(css|js|html)).*})  { |m| "/assets/#{m[2]}" }
end
