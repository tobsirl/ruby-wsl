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

### Writing Loosely Coupled Code

Every dependency is like a little dot of glue that causes your class to stick to the things it touches. A few dots are necessary, but apply too much glue, and your application will harden into a solid block. Reducing dependencies means recognizing and removing the ones you don’t need.

#### Injecting Dependencies

Referring to another class by name is a dependency. Injecting a dependency means passing it in as an argument. This is called dependency injection.
