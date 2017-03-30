def if_2_to_add_1 array
arr1 = []
arr1 = array[0..array.size]
	arr1.each do |item|
		if item == 4
			array.unshift(1)
			array.unshift(1)
			array.unshift(1)
		elsif  item == 3
			array.unshift(1)
			array.unshift(1)
		elsif  item == 2
			array.unshift(1)
		end
	end
end

def if_11_to_replace_2 array
x = 0
	while x < array.size + 1
		if  	array[x] == 1 && array[x + 1] == 1 && array[x + 2] == 1 && array[x + 3] == 1 && array[x + 4] == 1 && array[x + 5] == 1
				array.delete_at(x)
				array.delete_at(x)
				array.delete_at(x)
				array.delete_at(x)
				array.delete_at(x)
				array.delete_at(x)
				array.insert(x, 4)
		elsif	  array[x] == 1 && array[x + 1] == 1 && array[x + 2] == 1 && array[x + 3] == 1
				array.delete_at(x)
				array.delete_at(x)
				array.delete_at(x)
				array.delete_at(x)
				array.insert(x, 3)
		elsif  	array[x] == 1 && array[x + 1] == 1
				array.delete_at(x)
				array.delete_at(x)
				array.insert(x, 2)
		end
	x = x + 1
	end
end

def add_1 array
	array.push(1)
	array.each do |item|
		print item
	end
	puts
end

arr = []
x = 1

print "Введите количество шагов последовательности: "
y = gets.to_i

while x <= y do
	if (x % 2 == 1) && x != 3
		if_11_to_replace_2 arr
		if_2_to_add_1 arr
	else
		if_2_to_add_1 arr
		if_11_to_replace_2 arr
	end
	add_1 arr
	x = x + 1
end
