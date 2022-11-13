# Practical Object-Oriented Design in Ruby

## Managing Dependencies

### Understanding Dependencies

An object depends on another object if, when one object changes, the other might be forced to change in turn.

#### Recognizing Dependencies

An object has a dependency when it knows:

- The name of another class.
- The name of a message that it intends to send to someone other than self.
- The arguments that a message requires.
- The order of those arguments.
