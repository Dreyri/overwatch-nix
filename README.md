# About

This is an attempt to package the game overwatch with nix

Because overwatch and the Battle.net client are self-updating this causes and impurity unwanted
by nix packages. To handle this the contents of the store will simply be the downloaded installer,
a script (`overwatch`) and some other necessary files, such as application icon, desktop entry etc.
The mutable state will be contained outside of the store, probably `/var/cache/overwatch/` to indicate
it's safe to delete this whenever you want.
