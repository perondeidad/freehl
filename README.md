# FreeHL
Este trabajo esta diseñado para funcionar principalmente con la versión de CD.
La Steam version no funciona es su totalidad.

Hay algunas mejoras en el Netplay , como la predicción tanto de la física del jugador como de la lógica de las armas.

Este es totalmente original, siéntase libre de auditar como tu quieras.
Nada de código de SDK privativos, no como otros proyectos similares.

Necesitaras el motor FTEQW (https://www.fteqw.org) para correlo, este proyecto no esta pesado
para funcionar en otros motores derivados de Id tech 2/2.5 como Darckplaces, Qfusion, Ironwail, ETC... 

![Preview 1](img/preview1.jpg)
![Preview 2](img/preview2.jpg)
![Preview 3](img/preview3.jpg)
![Preview 4](img/preview4.jpg)

## Instación
Para correr esto, Todo lo que necesitas es [FTEQW](https://www.fteqw.org) y [La ultima versión de paquete valve .pk3](https://www.frag-net.com/pkgs/package_valve.pk3), Que guardaras en `Half-Life/valve/`. Y eso es todo. Puedes instalar actualizaciones a través del menu **Configuration > Updates**.

## creación
primero clona el repositorio de Nuclide-SDK

```
$ git clone http://github.com/veravisions/nuclide nuclide-SDK
```

Clone el repositorio valve (no te preocupes, es el mismo que el de aqui con solo algunas modificaciones menores) dentro de Nuclide-SDK y compilalo:

```
$ git clone https://code.idtech.space/fn/valve valve
$ SKIP_UPDATE=1 SKIP_RADIANT=1 ./build_game.sh valve
```
Obviamente, asegúrese de que Nuclide tenga preparado fteqw y fteqcc para compilarlo y tener algun conocimiento en QuakeC

Tambien puedes ir a `make` dentro de `valve/src/`, pero no creara un archivo `entities.def`  para usar con Radiant (una familia de editores de niveles).

## Notas
The engine should automatically detect Half-Life when placed within the game directory, however you may need to pass `-halflife` just in case you have one massive directory with multiple FTE-supported games in it for example.

You can also launch mods like this: `fteqw -halflife -game cstrike`
Useful for development, so you don't always have to use the **Custom Game** menu.

## Communidad

### Matrix
If you're a fellow Matrix user, join the Nuclide Space to see live-updates and more!
https://matrix.to/#/#nuclide:matrix.org

### IRC
Join us on #freecs via irc.libera.chat and talk/lurk or discuss bugs, issues
and other such things. It's bridged with the Matrix room of the same name!

### Otros
We've had people ask in the oddest of places for help, please don't do that.

## Special Thanks (by Eukara)

- Spike for FTEQW and for being the most helpful person all around!
- Xylemon for the hundreds of test maps, verifying entity and game-logic behaviour
- Theuaredead`, preston22, dqus for various patches
- To my supporters on Patreon, who are always eager to follow what I do.
- Any and all people trying it, tinkering with it etc. :)

## Licencia
ISC License

Copyright (c) 2016-2024 Marco Hladik <marco@icculus.org>

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF MIND, USE, DATA OR PROFITS, WHETHER
IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING
OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
