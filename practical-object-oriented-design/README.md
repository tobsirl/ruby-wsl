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

#### Coupling Between Objects (CBO)

Coupling *creates* a dependency. The more Gear knows about Wheel, the more tightly coupled they are. The more tightly coupled two objects are, the more they behave like a single entity.

Changing one object requires changing the other. This is a dependency.

When two (or three or more) objects are so tightly coupled that they behave as a unit, it’s impossible to reuse just one. Changes to one object force changes to all. Left unchecked, unmanaged dependencies cause an entire application to become an entangled mess. A day will come when it’s easier to rewrite everything than to change anything.
