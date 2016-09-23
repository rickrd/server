# Capernia Datapack: making the ultimate datapack for OTS (Open Tibia Server)[![Build Status](https://img.shields.io/badge/build-buggy-yellow.svg)]()


Capernia Datapack is a project born from the necessity of a serious OTS files.
Its goal is to make sure all new Tibia resources be unified and ready for use on the latest version of Forgotten Server.


![Tibia 10.91 Sample](https://cloud.githubusercontent.com/assets/19177793/15003885/258236d8-1187-11e6-86fd-f83118992146.png)


Capernia Datapack is made using **LUA scripting** language with some **mysql arguments**.

![Latest version!](https://img.shields.io/badge/tfs%20version-1.2-brightgreen.svg)
![There are newer versions!](https://img.shields.io/badge/client%20version-10.93-green.svg)
[![Gitter](https://badges.gitter.im/gordonbay/capernia-ots-datapack.svg)](https://gitter.im/gordonbay/capernia-ots-datapack?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)


Main Conceps
=============

* Analyse and scrap third party datapacks for new userful content
* Update the scripts making them compatible with latest version of Forgotten Server
* Unify all existing datapacks on Capernia datapack
* Help the community



Installation
============


On **Windows**, just extract all contents, change variables on **config.lua** to match your MYSQL settings, import MYSQL database (*.sql) and run the provided binary.

 - Unpack global.rar to same folder:

    > capernia-ots-datapack\data\world\global.rar

 - Edit config.lua settings:
![Lua script](https://img.shields.io/badge/script-lua-blue.svg)
	```lua
	mysqlHost = "127.0.0.1" 
	mysqlUser = "root"
	mysqlPass = "az88231015"
	mysqlDatabase = "servidor"
	```
 - Import `schema.sql`to your mysql database:

    > capernia-ots-datapack\res\schema.sql
    
 - Have fun!


Github Limitations
===========

Because of the `size` limits, the following file had to be compressed.

    capernia-ots-datapack\data\world\global.rar

Map Changes
===========

For obvious reasons we have a diferent protocol for changing the map.

 - Open a issue, using the `Issues` tab
 - Explain the changes needed and if possible, post an image

Datapacks Merges
=============

This list shows the status of third party datapacks **migrations**:

| Name | Last Author Release | Last Capernia Merge | Capernia Merge Status | Location | Report |
| --- | --- | --- | --- | --- | --- |
| Mitisuig | 13/04/2016 | 13/04/2016 | ![Complete!](https://img.shields.io/badge/status-complete-brightgreen.svg) | [TK](http://www.tibiaking.com/forum/topic/36403-global-full-tibiaking-10911092-tfs-12-full-oramond-cast-system-lions-rock-reward-system-equip-hotkey-new-items-news-monster-new-areas-krailos-asura-medusa-town-etc-eventos-sem-missao-v20/) | [Read Report](https://github.com/gordonbay/capernia-ots-datapack/issues/18) |
| Absolute | 03/05/2016 | - | ![Aware of this but nothing done yet!](https://img.shields.io/badge/aware-0%25-red.svg) | [TK](http://www.tibiaking.com/forum/topic/67075-global-full-download-1090-tfs-12ferumbras-questkrailosnew-arenacastrewardeventscasino/) | ![](https://img.shields.io/badge/invitation-pending-red.svg) |
| Lofiv | 02/03/2016 | - | ![Aware of this but nothing done yet!](https://img.shields.io/badge/aware-0%25-red.svg) | [OTLand](https://otland.net/threads/10-90-globalot-full-new-www-new-layout-krailos-tfs-1-2.241083/) | ![](https://img.shields.io/badge/invitation-pending-red.svg) |


Important Wiki Pages
=============

- [capernia-ots-datapack/wiki/Issues](https://github.com/gordonbay/capernia-ots-datapack/wiki/Issues) - Read this before report any issue
