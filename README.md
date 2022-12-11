# JSON serialisation and deserialisation with abstract types

This is an example showing how to convert JSON objects into and from an abstract base class.

The `basket` in our example holds a list of abstract `foods` which can a `fruit` or `meat` concretely.
To convert the basket JSON to an instance in our project we extend from the `JsonConverter` in `FoodConverter`.

The key point is having a field (`Food::type`) in our abstract class to determine the actual type of data we have to convert to and from.

There are other options to deal with abstract types in JSON, but this is how it's done this way.