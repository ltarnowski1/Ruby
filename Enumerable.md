##Enumerable

Passes each element of the collection to the given block. Returns true only when all of elements are if the black never
returns false or nil
```ruby
%w[ant bear cat].all? { |word| word.length >= 3 } #=> true
%w[ant bear cat].all? { |word| word.length >= 4 } #=> false
[nil, true, 99].all?                              #=> false
```

Counts and returns the the number of elements yielding true value 
```ruby
ary.count{ |x| x%2==0 } #=> 3
```

Passes each element of the collection to the given block.
The method returns true if the block ever returns a value other than false or nil.
```ruby
%w[ant bear cat].any? { |word| word.length >= 3 } #=> true
%w[ant bear cat].any? { |word| word.length >= 4 } #=> true
[nil, true, 99].any?                              #=> true
```

Returns a new array with the results of running block once for every element in enum.
If no block is given, an enumerator is returned instead.
```ruby
(1..4).map { |i| i*i }      #=> [1, 4, 9, 16]
(1..4).collect { "cat"  }   #=> ["cat", "cat", "cat", "cat"]
```

Passes each entry in enum to block. Returns the first for which block is not false.
If no object matches, calls ifnone and returns its result when it is specified, or returns nil otherwise.
If no block is given, an enumerator is returned instead.
Warning: Detect and Find are different names for the same method
```ruby
(1..10).detect   { |i| i % 5 == 0 and i % 7 == 0 }   #=> nil
(1..100).find    { |i| i % 5 == 0 and i % 7 == 0 }   #=> 35
```

Iterates the given block for each slice of <n> elements. If no block is given, returns an enumerator.
```ruby
(1..10).each_slice(3) { |a| p a }
# outputs below
[1, 2, 3]
[4, 5, 6]
[7, 8, 9]
[10]
```

Calls block with two arguments, the item and its index, for each item in enum.
Given arguments are passed through to each().
If no block is given, an enumerator is returned instead.
```ruby
hash = Hash.new
%w(cat dog wombat).each_with_index { |item, index|
  hash[item] = index
}
hash   #=> {"cat"=>0, "dog"=>1, "wombat"=>2}
```
