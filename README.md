# Pokémon Puzzle Challenge

This is a disassembly of Pokémon Puzzle Challenge.

It uses the following ROM as a base:

- Pokemon Puzzle Challenge (U) [C][!].gbc `sha1: bbf952412250ae511b3b862566e424ce6a672f99`

It also builds the following patch:

- CGBBPNE0.551.patch `sha1: 6e074dc42531f9e6b9cbf6c6287ec42cf54f0d9b`

To assemble, first install [RGBDS](https://github.com/gbdev/rgbds/releases) and put it in your path.  
Then copy the above ROM to this directory as "baserom.gbc".  
Then run `make` in your shell.

This will output a file named "pokepuzzle.gbc".


## See also

- [**Tools**][tools]

You can find us on [Discord (pret, #pokepuzzle)](https://discord.gg/d5dubZ3).

For other pret projects, see [pret.github.io](https://pret.github.io/).

[tools]: https://github.com/pret/gb-asm-tools
