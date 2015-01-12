This is a contrived demo of a small codebase that could benefit from the null object pattern which goes along with this presentation: http://www.slideshare.net/thehoagie/null-object-pattern-43427862

The scenario is that four friends (instances of the Friend class) order drinks (instances of the Drink class) and toast, and pay their tab. However only three of the four friends order a drink, so there are methods called on `nil` (`null`) objects.

As the refactoring begins in the `toast` method, simple solutions are to include a conditional modifier operating as an existential operator e.g. `if drink`, or the Ruby idiom `try` e.g. `drink.try(:name)`. This can be seen in the `before_null_object_pattern` git tag.

As the pattern of existential checks continues to pollute the code and drive up the complexity by being applied to the `pay` method, the opportunity to apply the null object pattern emerges instead. 

All four friends order drinks this time around, and previously the friend that ordered no drink instead orders a `NullDrink` which is a subclass of the `Drink` abstract class. Now we can remove the existential checks on the friend collaborator for the `drink` property and reduce our code complexity. This can be seen in the `after_null_object_pattern` git tag.
