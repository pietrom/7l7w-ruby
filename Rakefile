task :default => [:test]

task :test do
  test_cases = Dir.glob('day2/*Test.rb')
  test_cases.each do |test_case|
    puts "Executing test-case '#{test_case}'"
    ruby test_case
  end
end