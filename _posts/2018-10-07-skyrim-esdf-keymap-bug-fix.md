---
layout: page
title: "Skyrim Keymap Bug Fixes for ESDF Users"
tags: skyrim video-games
---

Skyrim is one of the best games I've ever played, but the way the devs hard coded the menu keys is just game breaking for me and probably many others as well, maybe its their tight deadlines or maybe they were lazy. In any case I haven't found an easy fix for this other than some mods/workarounds.<br><br>

<!--more-->

The problem started when I switched to ESDF keys in 2016. Till then I used the default WASD keys and was quite happy with the way things worked. After the switch I opened up Skyrim expecting menu navigation to be bound to the same keys I used for player movement (ESDF), but it wasn't the case. Menu navigation was hardcoded to WASD and there was no option to change it.<br>

Take a look at the screenshots below<br>

<img class="image image--xs" src="{{ site.url }}/resources/screenshots/skyrim-esdf-keymap-bug-fix_01.png" width="100%"><br>

Not only the E key but also the F key as well which is used to Favorite items or for Finding locations in the world map.<br><br>

### Fix #1 - Skyrim Key Helper<br>
This mod is available from <a href="https://steamcommunity.com/sharedfiles/filedetails/?id=8639">crazy-g's steam workshop</a>.<br>

Just subscribe to the mod and wait 2 minutes for the files to download.<br>

Afterwards just make sure to enable the mod via the Skyrim launcher as shown below<br>

<img class="image image--xs" src="{{ site.url }}/resources/screenshots/skyrim-esdf-keymap-bug-fix_02.png" width="100%"><br>

Once that's done the keys work as expected but the UI still displays the same way, for fixing the inventory we can use SKUI.<br><br>

### Fix #2 - SKUI

SKUI is a mod that improves the UI of player Inventory and it depends on a program called SKSE.<br>

Download links for both <a href="https://store.steampowered.com/app/365720/Skyrim_Script_Extender_SKSE/">SKSE</a> & <a href="https://www.nexusmods.com/skyrim/mods/3863">SKUI</a><br>

Its easier to use <a href="https://www.nexusmods.com/about/vortex/">Vortex</a> (previously Nexus Mod Manager) for installing mods.<br>

After installing SKUI just make sure to load it along side Skyrim Key Helper. (screenshot below)<br>

<img class="image image--xs" src="{{ site.url }}/resources/screenshots/skyrim-esdf-keymap-bug-fix_03.png" width="100%"><br>

It still leaves the map and book UI displaying the wrong keys. But since it doesn't interfere with the gameplay I'll ignore it for now.<br><br>