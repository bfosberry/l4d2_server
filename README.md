l4d2_server
===========

A standard l4d2 docker server compatible with the gamekick project

This is based off of the steam_base repo and contains

* A metadata.json file, showing actions, provided info, and configuration parameters
* A game_server_action script, responding to the standard, and metadata defined actions
* A game_server_online script returning the status of the game server based on portscan
* A steam update script
* A script to write the configuration to the requried l4d2 config files (server.cfg)
* A start script (templated) usable by the steam_base init.d script

This repo uses confd to write configuration files based on etcd values