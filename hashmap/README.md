---
moonbit : true
---
# HashMap

A mutable hash map based on a Robin Hood hash table.

# Usage

## Create

You can create an empty map using `new()` or construct it using `from_array()`.

```moonbit
test {
  let _map2 : @hashmap.T[String, Int] = @hashmap.new()
}
```

## Set & Get

You can use `set()` to add a key-value pair to the map, and use `get()` to get a value.

```moonbit
test {
  let map : @hashmap.T[String, Int] = @hashmap.new()
  map.set("a", 1)
  println(map.get("a")) // Some(1)
  println(map.get_or_default("a", 0)) // 1
  println(map.get_or_default("b", 0)) // 0
  map.remove("a")
  println(map.contains("a")) // false
}
```

## Remove

You can use `remove()` to remove a key-value pair.

```moonbit
test {
    let map = @hashmap.of([("a", 1), ("b", 2), ("c", 3)])
    map.remove("a")
    println(map) // of([("c", 3), ("b", 2)])
}
```

## Contains

You can use `contains()` to check whether a key exists.

```moonbit
test {
    let map = @hashmap.of([("a", 1), ("b", 2), ("c", 3)])
    println(map.contains("a")) // true
    println(map.contains("d")) // false
}    
```

## Size & Capacity

You can use `size()` to get the number of key-value pairs in the map, or `capacity()` to get the current capacity.

```moonbit
test {
    let map = @hashmap.of([("a", 1), ("b", 2), ("c", 3)])
    println(map.size()) // 3
    println(map.capacity()) // 8
}    
```

Similarly, you can use `is_empty()` to check whether the map is empty.

```moonbit
test {
    let map: @hashmap.T[String, Int] = @hashmap.new()
    println(map.is_empty()) // true
}
```

## Clear

You can use `clear` to remove all key-value pairs from the map, but the allocated memory will not change.

```moonbit
test {
   let map = @hashmap.of([("a", 1), ("b", 2), ("c", 3)])
    map.clear()
    println(map.is_empty()) // true
}
```

## Iteration

You can use `each()` or `eachi()` to iterate through all key-value pairs.

```moonbit
test {
   let map = @hashmap.of([("a", 1), ("b", 2), ("c", 3)])
    map.each(fn(k, v) { println("key: \{k}, value: \{v}") })
    map.eachi(fn(i, k, v) { println("index: \{i}, key: \{k}, value: \{v}") })
}
```

Or use `iter()` to get an iterator of hashmap.

```moonbit
test {
  let map = @hashmap.of([("a", 1), ("b", 2), ("c", 3)])
  println(map.iter())
}
```
