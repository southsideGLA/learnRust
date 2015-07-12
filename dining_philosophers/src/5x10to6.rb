threads = []

1_000_000.times do
  threads << Thread.new do
    count = 0

    850_000_000.times do
      count += 1
    end
  end
end

threads.each {|t| t.join }
puts "done!"