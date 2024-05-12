# FORK NOTE : Improving and upgrading il2mod
This fork attempts to impove il2mod, by adding a luau environnement, in game imgui executor, various utilities such as widget system , and xmake build system. 
This is a W.I.P and not suitable for use yet !

TODO : use unity resolve instead of il2mod.h
# il2mod

il2cpp scripting and hooking framework via LUA.

## Usage

- Install polyhook2 with vcpkg and compile the dll
- Create `scripts` folder in the game root dir, then create test.lua
- Inject the dll in the game using your favourite dll injector

- For usage examples look at [scripts folder](./scripts/)

## Limitations

- JIT Calls params has to be size of void* (0x8) as it's hardcoded

- No clear way to differnciate the hook functions in the JIT stub so your LUA code has to make sure the params are correct.