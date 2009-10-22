# Sensei

Sensei runs your dojo for you. You start with a single failing cucumber feature. As you make each feature pass, the next feature is brought into play. While you have failing features, you have the opportunity to write rspec specifications. Sensei will encourage you to refactor at appropriate moments, showing you your [flog](http://blog.zenspider.com/rubysadism/flog/) score as encouragement.

This should replicate an outside-in development style, where the cucumber features represent acceptance/integration tests and the specs are lower level unit tests that help you develop the individual methods and classes.

# Running a dojo

    gem install sensei
    git clone git://github.com/alexscordellis/kata-minesweeper.git (or other dojo repository)
    cd kata-minesweeper
    sensei

Then follow the instructions. Each time you get to green, sensei will make a commit to git. This way you'll have a history of all your implementation and refactorings. You could then push those changes to a github fork of the dojo repository and compare your solution to others'.

## Tips

* Try to write the simplest code that will make the next cucumber scenario pass. Try not to anticipate future requirements.
* If the jump from one scenario to the next is too big, or affects more than one behaviour of your program, consider writing rspec specifications that make smaller steps.
* If the cucumber scenario requires a significant change in the implementation, consider refactoring before implementing the new scenario. Make sure that all the previous scenarios are still passing after your refactoring and before you add support for the new scenario.
* Make sure you refactor each time you get to green, to make sure that you're in a good state for the net scenario. Use the flog score to guide your refactoring - a lower flog score is better.


# Prepared dojos

## Minesweeper

Source is [on github](http://github.com/alexscordellis/kata-minesweeper "Minesweeper source"). This is a simple implementation of the classic Windows minesweeper game. The features currently available specify how the completed board should appear given the size and the mine locations. This is the original dojo from Matt's session.

## Bowling Game

Source is [on github](http://github.com/alexscordellis/sensei-bowling-game "Bowling Game source"). This is an interpretation of Uncle Bob's classic Bowling Game kata.

# Prerequisites

You will need the following gems

* rake
* rspec
* cucumber
* flog

# Preparing your own dojo

Your project must respond to the commands `rake spec` and `cucumber features`, issued from the command line in the root directory. Only code matching `./lib/*.rb` will be included in the flog score.

# Credits

The original idea came from [Matt Wynne](http://blog.mattwynne.net/)'s session at the [September 2009 London Ruby Users Group](http://lrug.org/meetings/2009/09/18/october-2009-meeting/). I've added the rspec part of the workflow and I'm working on the packaging. The features for the minesweeper kata are his.

# Future plans

* Package as a gem
* Provide online repository of known katas
* Add reset functionality (reset current iteration, or reset whole kata).
* Autodetect number of iterations (currently assumes 5).

Ultimately the user should be able to do something like:

    gem install sensei
    sensei init minesweeper (downloads dojo code for minesweeper)
    cd minesweeper
    sensei start