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

Returns true if any member of enum equals obj. Equality is tested using ==
```ruby
IO.constants.include? :SEEK_SET          #=> true
IO.constants.include? :SEEK_NO_FURTHER   #=> false
```

Passes each element of the collection to the given block. The method returns true if the block returns true exactly once. If the block is not given, one? will return true only if exactly one of the collection members is true.
```ruby
%w{ant bear cat}.one? { |word| word.length == 4 }  #=> true
%w{ant bear cat}.one? { |word| word.length > 4 }   #=> false
%w{ant bear cat}.one? { |word| word.length < 4 }   #=> false
[ nil, true, 99 ].one?                             #=> false
[ nil, true, false ].one?                          #=> true
```

Returns two arrays, the first containing the elements of enum for which the block evaluates to true, the second containing the rest.
If no block is given, an enumerator is returned instead.
```ruby
(1..6).partition { |v| v.even? }  #=> [[2, 4, 6], [1, 3, 5]]
```
