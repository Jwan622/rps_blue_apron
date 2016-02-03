rpsrunner
rpsgame
computerselector
messages
scorekeeper



## Notes
- @computer is polymorphic. Same interface but different underlying computer_strategy
- RpsGame acts like the controller in a Rails app. It dips into the different models.
- scorer and scorekeeper are separate because there might be different scoring mechanisms in the future and keeping score seem like different responsibilities
