# Complete Darkness mod for Arx Fatalis

Turns the levels completely dark by removing hidden lights,
turning off torches and setting pre-calculated lights to black.

![Crypts](screenshots/crypts.png?raw=true "Crypts")

> Author: Lajos Mészáros (m_lajos@hotmail.com)
>
> Support me at: https://www.patreon.com/nodengaming
>
> Version: 1.3

There are 2 different versions:

- `versions/torch-on.zip` - all is dark, but extinguishable torches are left lit
- `versions/torch-off.zip` - all is dark and torches are extinguished

## Disclaimers

### Loading savefiles

Torches will not be turned off, if you reload a savefile and revisit a location, that you have already visited

### Entities will still glow a bit

It's hardcoded into the game, that can't be changed:
https://github.com/arx/ArxLibertatis/blob/7536846851b5682b78c4168a1098b3aad3fe214a/src/scene/Light.cpp#L72

## Installation

Unpack the contents of this zip and add it into your Arx Fatalis/Arx Libertatis game's root folder

## Uninstall

remove the following files from your Arx Fatalis/Arx Libertatis game's root folder:

- all files with an ".llf" extension from the graph folder
- graph/levels/level3/level3.dlf
- graph/levels/level6/level6.dlf
- graph/levels/level11/level11.dlf
- graph/levels/level14/level14.dlf
- graph/levels/level22/level22.dlf
- game/graph/levels/level3/fast.fts
- game/graph/levels/level6/fast.fts
- game/graph/levels/level11/fast.fts
- game/graph/levels/level14/fast.fts
- game/graph/levels/level22/fast.fts

or if you don't have any other mods installed, then just delete the game and graph folders

## External Links

Github: https://github.com/meszaros-lajos-gyorgy/arx-fatalis-complete-darkness

Youtube: https://www.youtube.com/watch?v=Pn_sEgKAJMg

ModDB: https://www.moddb.com/mods/arx-fatalis-complete-darkness

## Gallery

![Intro cinematics](screenshots/intro.png?raw=true "Intro cinematics")
![Greu's place](screenshots/greu.png?raw=true "Greu's place")
![Order of Edurneum](screenshots/snake-women.png?raw=true "Order of Edurneum")
![The Outpost](screenshots/the-outpost.png?raw=true "The Outpost")
![Trolls and Goblins](screenshots/trolls-and-goblins.png?raw=true "Trolls and Goblins")
![Ylside attack in the castle](screenshots/ylside-attack-in-the-castle.png?raw=true "Ylside attack in the castle")
