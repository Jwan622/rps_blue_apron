## Notes
- Abiding by SOLID principles as best as I can in this coding project, especially SRP and open-closed principle.
- @computer is polymorphic. Same interface but different underlying computer_strategy
- RpsGame acts like the controller in a Rails app. It dips into the different models.
- scorer and scorekeeper are separate because there might be different scoring mechanisms in the future and keeping score seem like different responsibilities
- Coding to an interface is an integral part of SOLID Principles, namely the open-closed principle. I do this in the computer_strategies with the make_decision method... that allows the rps_game class to be closed for modification but open for extension.
