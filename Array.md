##ARRAYS

Creating new empty array
```ruby
arr = Array.new
```
Creating new array filled by different objects
```ruby
arr = [1, "two", 3.0]
```
Creating new empty array with initial size 3
```ruby
arr = Array.new(3)
```
Arrays can be filled by different objects (array of arrays, array of hashes)
```ruby
arr = Array.new(4) {Hash.new}
```
Accessing arrays
```ruby
arr = [1, 2, 3, 4, 5, 6]
arr[2]    #=> 3
arr[100]  #=> nil
arr[-3]   #=> 4
arr[2, 3] #=> [3, 4, 5]
arr[1..4] #=> [2, 3, 4, 5]
arr[1..-3] #=> [2, 3, 4]
```
First and last element
```ruby
arr.first #=> 1
arr.last  #=> 6
```
Obtaining Information about an Array
```ruby
arr.first #=> 1
arr.last  #=> 6
```
Iterating over Arrays
```ruby
arr = [1, 2, 3, 4, 5]
arr.each { |a| print a -= 10, " " }
```
Comparing Arrays
```ruby
[ "a", "a", "c" ]    <=> [ "a", "b", "c" ]   #=> -1    if first one is less than second
[ 1, 2, 3, 4, 5, 6 ] <=> [ 1, 2 ]            #=> +1    if first one is greater than second
[ 1, 2 ]             <=> [ 1, :two ]         #=> nil   if one of the given examples isn't array
[ "a", "c" ]         == [ "a", "c", 7 ]		 #=> false if arrays aren't identical
[ "a", "c", 7 ]      == [ "a", "c", 7 ]   	 #=> true  if arrays are identical 
```
Removing all elements
```ruby
a = [ "a", "b", "c", "d", "e" ]
a.clear    #=> [ ]
```
Removing elements equal to given argument
```ruby
a = [ "a", "b", "b", "b", "c" ]
a.delete("b")                   #=> "b"
a                               #=> ["a", "c"]
a.delete("z")                   #=> nil
a.delete("z") { "not found" }   #=> "not found"
```
Removing element by given index
```ruby
a = ["ant", "bat", "cat", "dog"]
a.delete_at(2)    #=> "cat"
a                 #=> ["ant", "bat", "dog"]
a.delete_at(99)   #=> nil
```
Including elements
```ruby
a = [ "a", "b", "c" ]
a.include?("b")   #=> true
a.include?("z")   #=> false
```
Conversion to string
```ruby
[ "a", "b", "c" ].to_s     #=> "[\"a\", \"b\", \"c\"]"
```
