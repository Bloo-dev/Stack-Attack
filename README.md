# Stack-Attack
Stack Attack is a modular Minigame that can be imported into any Minecraft world in the form of a Data Pack. It supports any amount of players and the amount of arenas and lobbies can be adjusted to your liking.

## Setup
To get started drop the datapack into your `datapacks` folder and reload your world.
Stack Attack will bring up a reload message that's clickable - click it to start the setup process. Once clicked you'll presented with 3 options:
- Add new arena
- Add new lobby
- Stack Attack?

The first two execute at your position to add either a lobby or an arena. Click `[Stack Attack?]` in case you're not familiar with the setup process, it'll provide you with a checklist!
You may have any amount of arenas and lobbies.

It is recommended to provide a spawnpoint setter near your Stack Attack area, since players can die in Stack Attack.

## Arenas
An arena is a barrier encased space in the world. Each active game of Stack Attack will be completely contained within it's arena and will not interact with the rest of the world at all. Arenas auto-clear at the end of a match and can be re-used once the previous match is over. No user interaction is required for this re-use cycle.

The floor of an arena slowly rises during the course of a match, whilst blocks keep dropping from the sky. Don't fall onto the black abyss below and don't get hit by the blocks falling from the sky! The last man standing wins.

There are two notable settings regarding arenas:
- Max Players: The amount of players an arena can hold. Defaults to 8. Players that do no fit into the arena will be left in the lobby upon game start.
- Min Players: The amount of players required to start a game in an arena. Defaults to 4. Lower values will work but are not recommended as the arena tends to feel empty with 3 or less players.

Both of these settings may be adjusted via the `/reload` interface: `[Stack Attack?]->[3] Advanced Settings`

## Lobbies
Lobbies consist of a 8 block radius around their creation point. Within this radius the two lobby signs may be relocated.
All lobbies within a world act as one large virtual lobby, that means whenever someone starts a new game waiting players from all lobbies will be joined into the game - any players that do not fit due to the arena being full will be left behind. During this joining process players close to the player who's requested the game start will be joined into the game first - so standing next to your mate when they start the game will make you join with them, acting as a party system.

Upon joining a game each player pays 1 point into a arena-pot (unless they can't pay / they're at 0 points). The value of this pot will be added to the winners points once a game ends.


Whilst in a lobby players are granted saturation and regeneration.
To leave the queue, simply leave the lobby area.
