# counter = Hash.new(0)
# 100.times do
#   random_number = rand(10)
#   counter[random_number] += 1
# end
# (0..9).each do |num|
#   puts "Number #{num} occurred #{counter[num]} times."
# end

def run_and_print_counts(runs)
    total_counts = Hash.new(0)
  
    runs.times do |run|
      counter = Hash.new(0)
  
      # Run the app 100 times
      100.times do
        random_number = rand(10)
        counter[random_number] += 1
      end
  
      # Accumulate counts for each number across all runs
      counter.each { |num, count| total_counts[num] += count }
  
      # Print the count of each number from 0 to 9 for this run
      puts "Counts for run #{run + 1}:"
      (0..9).each do |num|
        puts "Number #{num} occurred #{counter[num]} times."
      end
      puts "=============================="
    end
  
    # Calculate the average count for each number across all runs
    puts "Average counts across #{runs} runs:"
    (0..9).each do |num|
      average_count = total_counts[num] / runs.to_f
      puts "Number #{num} average count: #{average_count}"
    end
  end
  
  # Run the method with 10 runs
  run_and_print_counts(100)