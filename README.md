# Bingo-Lottery-Simulation
The following MATLAB code was made to simulate a large number of attempts of a workshopped "bingo lottery" game, and generate probability plots based on how likely someone is to win, and on which day since the game starts. The game works this way:

1. The player is allocated 5 random values from 1-59. These are put in their "deck"
2. Every day, a random bingo ball is pulled and removed from a collection. If the play has that value, they can remove it from their deck.
3. If the player has no more "cards" remaining, they win.

There are two files contained. "no_repeats.m" follows the game shown previously, whereas "with_repeats" means that no "bingo balls" are removed from the master collection. This means that games can become much longer.

The following plots show the percentage chance of having won by a certain day.

No repeats:
![Percentage plot no repeats](https://github.com/user-attachments/assets/3be77f44-6056-49b4-91e4-0420ff372bbe)

With repeats:
![Percentage plot with repeats](https://github.com/user-attachments/assets/eca63045-7a89-469a-b0d1-49d7eaf2e17c)


As you can see, the "no repeats" game allows for short term games (1-2 months approx), whereas the "with repeats" game would be better for 1-2 year runs.
