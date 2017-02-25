#Write A Method Takes Takes An Array of Integers and An Integer To Search For
	#Should Return The Index Of The Item Or Nil If The Integer Is Not Present
			#Allowed To Use .length And .each

def search_array(array,num)
  counter = 0
  while counter < array.length
    if array[counter] == num
      p counter
    end
    counter = counter + 1
  end
end

#Fibonacci Numbers
	#Add A Method To Generate And Return An Array of Terms
		#Should Work For A Large Number of Terms
			#The Last Number Generated Should Be 218922995834555169026
def fibnum(n)
  fibnum_array  = []
  a = 0
  b = 1
  fibnum_array.push(a)
  n.times do
    temp = a
    a = b
    b = temp + b
    fibnum_array.push(a)
  end
  p fibnum_array
end

fibnum(30)

#Sort An Array
	#We're Not Adventurous. We'll Research Bubble Sort.
		#So, What Is Bubble Sort?
			#The idea - Walk through the list and put two adjacent elements in descending order. 
				#We have to repeatedly walk through the list until all of the list is sorted.

#Here's Our Bubble Sort
	#First We Need Some Integers To Sort
		#And Here's How We Do It
def bubble_sort(array)
  n = array.length
  loop do
    swapped = false #Meaning We're Done

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true #Meaning We Still Need To Do Work
      end
    end

    break if not swapped
  end

  bubble_sort(20, 10, 40, 60, 70)



  array
end

