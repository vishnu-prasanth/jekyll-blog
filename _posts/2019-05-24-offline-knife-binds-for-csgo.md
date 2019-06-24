---
layout: page
title: "Offline knife binds for CSGO"
tags: counter-strike-global-offensive video-games
---

I spend a lot of time offline with bots, practicing aim, surfing etc. And I get bored inspecting just the default knives that come with the vanilla game. Since Valve has provided a way to switch knifes, I thought why not bind it and I did just that! Now I can run around switching knives with just the press of a button. Sweet! <br><br>
 
<!--more-->

There is another way to equip all skins, gloves etc, but that requires running the game in insecure mode which means no connection to Valve's servers. Maybe some other time.<br>

This script <i>should</i> also work when playing online with friends, just need to make sure whoever is hosting the server has `sv_cheats` set to 1 and everyone else joining the server should have the knife script.<br>

Download Link --> <a name="download-link">[knife_binds.zip][1]</a><br><br>

### Quick Setup<br>
- - -

After downloading the files, extract the files to `csgo/cfg`.<br>

The folder structure after extracting should look like this<br>
```
├── cfg  
│   ├── knife_binds.cfg  
│   ├── ...
│   ├── custom  
│   │   ├── knives  
│   │   │   └── m9bayonet.cfg  
│   │   │   └── butterfly.cfg  
│   │   │   └── ...  
```

Go ahead and startup an offline casual game, use `exec knife_binds` to run the script.<br>

The knives I added to the script are my favorite knives as of writing and can be changed by editing the knife_binds.cfg file, try it, its self-explanatory<br>

Although I have only tested on classic casual, it should work on pretty much any other gamemodes except for Death match since we can’t drop weapons on that mode. What a shame, nothing I can do about that.<br>

Read on to see how everything works.<br><br>

### The Basics (for beginners)<br>
- - -
Firstly, create a file in your cfg folder, mine is `"E:\Steam Library\steamapps\common\Counter-Strike Global Offensive\csgo\cfg"`<br>

The filename can be anything you want, just make sure to put a .cfg at the end. I used `knife_binds.cfg`. Open up the file and write `echo Hello World!` and save it.<br>

Now open up CSGO and press `~` to bring up the in-game console. Console is disabled by default, you can enable it from Settings -> Game Settings -> Somewhere Here. <br>

Once the console comes up write `"exec knife_binds"` and press Enter.<br>

If you've done everything correctly it should print out `Hello World!` on to the console.<br><br>

### Adding knife binds<br>
- - -
This is the actual bind!<br>

    give weapon_knife_m9_bayonet;mp_drop_knife_enable 1;ent_fire weapon_knife addoutput "classname weapon_knifegg"

The above line is three console commands chained together, that's why its separated by semi colons and enclosed in double quotes.<br>

This can be directly copied & pasted to the console and it will work.<br>

But I'm not going to type this in console everytime I want to switch my knife. That's where binds come in.<br>

So why don't we just go ahead and bind the damn thing? It's not that simple. Binds don't work if there's double quotes in the command.<br>

So if we write a bind for this, it will look like<br>

    bind "KP_END" "give weapon_knife_m9_bayonet;mp_drop_knife_enable 1; \
                ent_fire weapon_knife addoutput "classname weapon_knifegg""

The bind command takes in two parameters <key> <command>, here the key is KP_END. The string `"classname weapon_knifegg"` is enclosed in double quotes. Hence, the double quote for the actual bind command ends prematurely which will throw an error and as far as reddit know Valve doesn't provide escape characters for cofig commands.<br>

What now?<br><br>

### A simple workaround<br>
- - -

Since the command cannot be bound directly, it can be replaced by a filename and that file will hold the actual command.<br>

Not the best workaround, but it works.<br>

Create a file with the knife bind command and save it as m9bayonet.cfg (I'm using bayonet as an example)<br>

    give weapon_knife_m9_bayonet;mp_drop_knife_enable 1;ent_fire weapon_knife addoutput "classname weapon_knifegg"

Now create an alias for it inside the file that was created earlier (`knife_binds.cfg`)<br>

    alias m9bayonet "exec m9bayonet"

In the next line bind it to a key with the following command
    `bind "KP_END" "use weapon_knife; drop; m9bayonet"`

The `knife_binds.cfg` file should look like this<br>

    alias m9bayonet "exec m9bayonet"
    bind "KP_END" "use weapon_knife; drop; m9bayonet"


Where m9bayonet is the alias to load the command inside the file `m9bayonet.cfg`<br>

Now go in-game start an offline game_mode other than DM, and run `exec knife_binds` from the console. And it should work.<br><br>

### Full script

This is what the finished script looks like<br>

```
sv_cheats 1
mp_items_prohibited 0

// KNIFE HELP
echo ** List of Available Knifes **
echo bayonet, flip, gut, karambit, m9bayonet, tactical, butterfly, falchion, bowie, \
		ursus, jack, stiletto, widomaker

// KNIFE BINDS | OFFLINE
alias bayonet "exec custom/knives/bayonet"
alias m9bayonet "exec custom/knives/m9bayonet"
alias flip "exec custom/knives/flip"
alias gut "exec custom/knives/gut"
alias karambit "exec custom/knives/karambit"
alias tactical "exec custom/knives/tactical"
alias butterfly "exec custom/knives/butterfly"
alias falchion "exec custom/knives/falchion"
alias bowie "exec custom/knives/bowie"
alias ursus "exec custom/knives/ursus"
alias jack "exec custom/knives/jack"
alias stiletto "exec custom/knives/stiletto"
alias widowmaker "exec custom/knives/widowmaker"

bind "KP_END" "use weapon_knife; drop; m9bayonet"
bind "KP_DOWNARROW" "use weapon_knife; drop; butterfly"
bind "KP_PGDN" "use weapon_knife; drop; falchion"
bind "KP_LEFTARROW" "use weapon_knife; drop; gut"
bind "KP_5" "use weapon_knife; drop; karambit"
bind "KP_RIGHTARROW" "use weapon_knife; drop; flip"
bind "KP_HOME" "use weapon_knife; drop; ursus"
bind "KP_UPARROW" "use weapon_knife; drop; stiletto"
bind "KP_PGUP" "use weapon_knife; drop; tactical"

// Debug
echo
echo +++ knife_binds.cfg executed successfully +++
echo
```

PS: The download link at the [top][4] of the article.<br>

[1]:{{ site.url }}/resources/downloads/knife_binds.zip
[2]:{{ site.url }}/2019/05/24/offline-knife-binds-for-csgo.html#the-basics
[3]:{{ site.url }}/2019/05/24/offline-knife-binds-for-csgo.html#quick-setup
[4]:{{ site.url }}/2019/05/24/offline-knife-binds-for-csgo.html#download-link

