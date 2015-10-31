##ARRAYS

#Creating new empty array
```ruby
arrayExample=Array.new
```
#Creating new array filled by different objects
```ruby
arrayExample = [1, "two", 3.0]
```
#Creating new empty array with initial size 3
```ruby
arrayExample=Array.new(3)
```
#Arrays can be filled by different objects (array of arrays, array of hashes)
```ruby
arrayExample=Array.new(4) {Hash.new}
```
#Accessing arrays
```ruby
arr = [1, 2, 3, 4, 5, 6]
arr[2]    #=> 3
arr[100]  #=> nil
arr[-3]   #=> 4
arr[2, 3] #=> [3, 4, 5]
arr[1..4] #=> [2, 3, 4, 5]
arr[1..-3] #=> [2, 3, 4]
```
#First and last element
```ruby
arr.first #=> 1
arr.last  #=> 6
```
#Obtaining Information about an Array
```ruby
arr.first #=> 1
arr.last  #=> 6
```
#Iterating over Arrays
```ruby
arr = [1, 2, 3, 4, 5]
arr.each { |a| print a -= 10, " " }
```
#Comparing Arrays
```ruby
[ "a", "a", "c" ]    <=> [ "a", "b", "c" ]   #=> -1    if first one is less than second
[ 1, 2, 3, 4, 5, 6 ] <=> [ 1, 2 ]            #=> +1    if first one is greater than second
[ 1, 2 ]             <=> [ 1, :two ]         #=> nil   if one of the given examples isn't array
[ "a", "c" ]         == [ "a", "c", 7 ]		 #=> false if arrays aren't identical
[ "a", "c", 7 ]      == [ "a", "c", 7 ]   	 #=> true  if arrays are identical 
```
#Removing all elements
```ruby
a = [ "a", "b", "c", "d", "e" ]
a.clear    #=> [ ]
```
#Removing elements equal to given argument
```ruby
a = [ "a", "b", "b", "b", "c" ]
a.delete("b")                   #=> "b"
a                               #=> ["a", "c"]
a.delete("z")                   #=> nil
a.delete("z") { "not found" }   #=> "not found"
```
#Removing element by given index
```ruby
a = ["ant", "bat", "cat", "dog"]
a.delete_at(2)    #=> "cat"
a                 #=> ["ant", "bat", "dog"]
a.delete_at(99)   #=> nil
```
#Including elements
```ruby
a = [ "a", "b", "c" ]
a.include?("b")   #=> true
a.include?("z")   #=> false
```
#Conversion to string
```ruby
[ "a", "b", "c" ].to_s     #=> "[\"a\", \"b\", \"c\"]"
```



##HASHES

#Creating new hash with default value nil
```ruby
hashExample=Hash.new
```
#Creating new hash with default value 0
```ruby
hashExample=Hash.new(0)
```
#Different ways to create hash
```ruby
Hash = { "Jane Doe" => 10, "Jim Doe" => 6 }
Hash["a", 100, "b", 200]             #=> {"a"=>100, "b"=>200}
Hash[ [ ["a", 100], ["b", 200] ] ]   #=> {"a"=>100, "b"=>200}
Hash["a" => 100, "b" => 200]         #=> {"a"=>100, "b"=>200}
```
#Conversion to hash
```ruby
Hash.try_convert({1=>2})   # => {1=>2}
Hash.try_convert("1=>2")   # => nil
```
#Equality of hashes
```ruby
h1 = { "a" => 1, "c" => 2 }
h2 = { 7 => 35, "c" => 2, "a" => 1 }
h3 = { "a" => 1, "c" => 2, 7 => 35 }
h4 = { "a" => 1, "d" => 2, "f" => 35 }
h1 == h2   #=> false
h2 == h3   #=> true
h3 == h4   #=> false
```
#Obtaining value by given key
```ruby
h = { "a" => 100, "b" => 200 }
h["a"]   #=> 100
h["c"]   #=> nil
```
#Associating value with the given key
```ruby
h = { "a" => 100, "b" => 200 }
h["a"] = 9
h["c"] = 4
h   #=> {"a"=>9, "b"=>200, "c"=>4}
h.store("d", 42) #=> 42
h   #=> {"a"=>9, "b"=>200, "c"=>4, "d"=>42}
```
#Clearing of array
```ruby
h = { "a" => 100, "b" => 200 }   #=> {"a"=>100, "b"=>200}
h.clear                          #=> {}
```
#Deleting elements
```ruby
h = { "a" => 100, "b" => 200 }
h.delete("a")                              #=> 100
h.delete("z")                              #=> nil
h.delete("z") { |el| "#{el} not found" }   #=> "z not found"
```
#Returns array of keys
```ruby
hashExample.keys
```
#Returns array of values
```ruby
h = { "a" => 100, "b" => 200, "c" => 300 }
h.values   #=> [100, 200, 300]
```
#Setting default value
```ruby
h = { "a" => 100, "b" => 200 }
h.default = "Go fish"
h["a"]     #=> 100
h["z"]     #=> "Go fish"
```
#Conversion to string
```ruby
h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_s   #=> "{\"c\"=>300, \"a\"=>100, \"d\"=>400}"
```
#Conversion to array
```ruby
h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_a   #=> [["c", 300], ["a", 100], ["d", 400]]
```
#Checking whether a value exists
```ruby
h = { "a" => 100, "b" => 200 }
h.has_value?(100)   #=> true
h.has_value?(999)   #=> false
```
#Checking whether a key exists
```ruby
h = { "a" => 100, "b" => 200 }
h.has_key?("a")   #=> true
h.has_key?("z")   #=> false
```
#Returns amount of key-value pairs
```ruby
h = { "d" => 100, "a" => 200, "v" => 300, "e" => 400 }
h.length        #=> 4
h.delete("a")   #=> 200
h.length        #=> 3
```
#Returns upcase value
```ruby
hashExample["exampleValue"].upcase!
```
#Convert object into hash, returns nil when object cannot be converted to hash for any reason
```ruby
hashExample.try_convert({1=>2})
```
#Equality of hashes can be checked by double equal sign setted between 2 hash variables, returns true or false
```ruby
hashExample1 == hashExample2
```



##

