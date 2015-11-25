##HASHES

Creating new hash with default value nil
```ruby
hash = Hash.new
```
Creating new hash with default value 0
```ruby
hash = Hash.new(0)
```
Different ways to create hash
```ruby
Hash = { "Jane Doe" => 10, "Jim Doe" => 6 }
Hash["a", 100, "b", 200]             #=> {"a"=>100, "b"=>200}
Hash[ [ ["a", 100], ["b", 200] ] ]   #=> {"a"=>100, "b"=>200}
Hash["a" => 100, "b" => 200]         #=> {"a"=>100, "b"=>200}
```
Conversion to hash
```ruby
Hash.try_convert({1=>2})   # => {1=>2}
Hash.try_convert("1=>2")   # => nil
```
Equality of hashes
```ruby
h1 = { "a" => 1, "c" => 2 }
h2 = { 7 => 35, "c" => 2, "a" => 1 }
h3 = { "a" => 1, "c" => 2, 7 => 35 }
h4 = { "a" => 1, "d" => 2, "f" => 35 }
h1 == h2   #=> false
h2 == h3   #=> true
h3 == h4   #=> false
```
Obtaining value by given key
```ruby
h = { "a" => 100, "b" => 200 }
h["a"]   #=> 100
h["c"]   #=> nil
```
Associating value with the given key
```ruby
h = { "a" => 100, "b" => 200 }
h["a"] = 9
h["c"] = 4
h   #=> {"a"=>9, "b"=>200, "c"=>4}
h.store("d", 42) #=> 42
h   #=> {"a"=>9, "b"=>200, "c"=>4, "d"=>42}
```
Clearing of array
```ruby
h = { "a" => 100, "b" => 200 }   #=> {"a"=>100, "b"=>200}
h.clear                          #=> {}
```
Deleting elements
```ruby
h = { "a" => 100, "b" => 200 }
h.delete("a")                              #=> 100
h.delete("z")                              #=> nil
h.delete("z") { |el| "#{el} not found" }   #=> "z not found"
```
Returns array of keys
```ruby
hashExample.keys
```
Returns array of values
```ruby
h = { "a" => 100, "b" => 200, "c" => 300 }
h.values   #=> [100, 200, 300]
```
Setting default value
```ruby
h = { "a" => 100, "b" => 200 }
h.default = "Go fish"
h["a"]     #=> 100
h["z"]     #=> "Go fish"
```
Conversion to string
```ruby
h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_s   #=> "{\"c\"=>300, \"a\"=>100, \"d\"=>400}"
```
Conversion to array
```ruby
h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_a   #=> [["c", 300], ["a", 100], ["d", 400]]
```
Checking whether a value exists
```ruby
h = { "a" => 100, "b" => 200 }
h.has_value?(100)   #=> true
h.has_value?(999)   #=> false
```
Checking whether a key exists
```ruby
h = { "a" => 100, "b" => 200 }
h.has_key?("a")   #=> true
h.has_key?("z")   #=> false
```
Returns amount of key-value pairs
```ruby
h = { "d" => 100, "a" => 200, "v" => 300, "e" => 400 }
h.length        #=> 4
h.delete("a")   #=> 200
h.length        #=> 3
```
Returns upcase value
```ruby
hash["exampleValue"].upcase!
```
Convert object into hash, returns nil when object cannot be converted to hash for any reason
```ruby
hash.try_convert({1=>2})
```
Equality of hashes can be checked by double equal sign setted between 2 hash variables, returns true or false
```ruby
hash1 == hash2
```
