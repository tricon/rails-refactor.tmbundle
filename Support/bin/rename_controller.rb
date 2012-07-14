require 'rubygems'
require 'fileutils'
require 'text_mate'

# Borrowed from the Rails TM bundle.
ROOT_INDICATORS = %w(app config db)
def rails_root
  return nil unless TextMate.project_directory
  ROOT_INDICATORS.each do |root_indicator|
    return nil unless File.directory?(File.join(TextMate.project_directory, root_indicator))
  end
  return TextMate.project_directory
end

FileUtils.cd rails_root

old_controller = TextMate.input("Old controller name:", "Application")
new_controller = TextMate.input("New controller name:", "MyApplication")

%x(rails_refactor rename #{old_controller}Controller #{new_controller}Controller)

puts "Rename action finished.\n"
