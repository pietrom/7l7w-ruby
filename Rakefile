def project_file_name 
  '.project'
end

def buildpath_file_name
  '.buildpath'
end

def source_dirs()
  ['day1', 'src/main/ruby']
end

def test_dirs()
  ['src/test/ruby']
end
  

task :default => [:test]

task :test do
  lib = ""
  source_dirs.each {|sd| lib = lib + sd + ':'}
  test_dirs.each do |dir|
    test_cases = Dir.glob(dir + '/**/*Test.rb')
    test_cases.each do |test_case|
      puts "Executing test-case '#{test_case}'"
      system "ruby -I #{lib}  #{test_case}"
    end
  end
end

task :eclipse do
  puts 'Creating Eclipse\'s metadata files...'
  create_project_file
  create_buildpath_file
  puts 'Done!' 
end

task :eclipse_clean do
  puts 'Deleting Eclipse\'s metadata files...'
  mdf = [project_file_name, buildpath_file_name]
  mdf.each do |file_name|
    puts "Deleting #{file_name}..."
    File.delete(file_name) if File.exist?(file_name)
  end 
  puts 'Done!'
end

def create_project_file
  puts "Creating #{project_file_name} file..."
  File.open(project_file_name, 'w') do |f|
    f.write(<<project_file_content)
<?xml version="1.0" encoding="UTF-8"?>
<projectDescription>
  <name>ruby</name>
  <comment></comment>
  <projects>
  </projects>
  <buildSpec>
    <buildCommand>
      <name>org.eclipse.dltk.core.scriptbuilder</name>
      <arguments>
      </arguments>
    </buildCommand>
  </buildSpec>
  <natures>
          <nature>org.eclipse.dltk.ruby.core.nature</nature>
  </natures>
</projectDescription>
project_file_content
  end
  puts "File #{project_file_name} created!"
end

def create_buildpath_file
  puts "Creating #{buildpath_file_name} file..."
  File.open(buildpath_file_name, 'w') do |f|
    f.puts('<?xml version="1.0" encoding="UTF-8"?>')
    f.puts('<buildpath>')
    create_src(f, source_dirs)
    create_src(f, test_dirs)
    f.puts("\t<buildpathentry kind=\"con\" path=\"org.eclipse.dltk.launching.INTERPRETER_CONTAINER\"/>")
    f.puts('</buildpath>')
  end
  puts "File #{buildpath_file_name} created!"
end

def create_src(file, entries)
  entries.each {|d| file.puts("\t<buildpathentry kind=\"src\" path=\"#{d}\" />")}
end