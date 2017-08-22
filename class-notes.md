# More Swift

## Get Swifty 🤗 Shit 💩 on the floor its time to get swifty

https://github.com/sam-meech-ward-lighthouse-labs/Swift3-Basics/blob/master/README.md

<https://www.youtube.com/watch?v=4ctK1aoWuqY&list=RD4ctK1aoWuqY#t=0>

## Unwrapping Optionals? Wow!

* Yell at it !!!!!!!
* if let
* guard let `else`

## Initalizers

<https://github.com/sam-meech-ward-lighthouse-labs/Swift3-Interoperability>

## lazy var

* A variable that doesn't get evaluated until it's first used

## Access Control

* open - lets other projects modify our code. Through things like subclassing.
* public - lets other projects access our code.
* internal - is public to the project. This is the default.
* private - keeps things private to a class.
* fileprivate - makes them private to the file.

## Tuples

```swift
let shortPath = (indexPath.section, indexPath.row)
switch shortPath {
case (0, 0):
    cell.textLabel.text = "Twitter"
case (0, 1):
    cell.textLabel.text = "Blog"
case (0, 2):
    cell.textLabel.text = "Contact Us"
default:
    cell.textLabel.text = "¯\\_(ツ)_/¯"
}
```

## Struct

Structs are passed by value, not by reference.

like an object that's a primative.

## Enums

* LIke c enums, but better 🤗
* You can create functions directly in the enum that can  be called on one of the enum's options

## Error Handling



## Custom operators (overloading)

https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AdvancedOperators.html

### Adding objects

```swift
class Vector2D {
    var x = 0.0
    var y = 0.0
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

extension Vector2D: CustomStringConvertible {
    var description: String {
        return "x: \(x), y: \(y)"
    }
}

extension Vector2D {
    static func + (left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y + right.y)
    }
    
    static prefix func - (vector: Vector2D) -> Vector2D {
        return Vector2D(x: -vector.x, y: -vector.y)
    }
}

let vector1 = Vector2D(x: 1, y: 2)
let vector2 = Vector2D(x: 3, y: 5)
let vector3 = vector1 + vector2
let vector4 = -vector3
```

## Generics

https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Generics.html
