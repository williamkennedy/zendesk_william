input = 'aabbbccccaa'

def compress(input)
	input = input.split('')
	outputArr = []

	count = 1

	secondLetter = 1
	firstLetter = 0

	input.each do |l|
	#puts input[secondLetter].inspect
	#puts input[firstLetter].inspect
	puts outputArr.inspect
		if input[secondLetter] == input[firstLetter]
			count += 1
			secondLetter += 1
			firstLetter += 1
		else
			outputArr << input[firstLetter]
			puts "#{input[firstLetter]} #{count}"
			count = 1
			secondLetter +=1
			firstLetter += 1
		end


	end
	count
end

puts compress(input)




