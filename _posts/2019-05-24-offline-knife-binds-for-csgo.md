---
layout: page
title: "Offline knife binds for CSGO"
tags: counter-strike-global-offensive video-games
---

Are you fed up inspecting the two default knives that come with CSGO? Would you like to run around switching knives with just the press of a button? If you said yes to any or all of the above then you've come to the right place.<br>

You may also want to try this if you're someone like me who spend a lot of time offline with bots, aim maps, KZ or other training maps.<br>

<!--more-->

This will also work when you play online with friends, just make sure that whoever is hosting the server should enable `sv_cheats` and everyone else should have the keybinds.<br>

If you are someone who is comfortable setting up cfg scripts then go with the [Quick Setup][3] otherwise take the long route starting at the [The Basics][2]<br>

Download Link --> <a name="download-link">[knife_binds.zip][1]</a><br><br>

### Quick Setup<br>
- - -

After you finish downloading, extract the downloaded zip to your `csgo/cfg` folder.<br>

Folder structure after extracting should be something like this<br>
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

Once you extract everything just open up a casual game with bots and do `exec knife_binds` by bringing up the console. Try out the knives by pressing the keypad buttons. Enjoy!<br>

This does not work with DMs since we can't drop weapons. I have only tested it on classic casual although it should work on pretty much other modes as well.

If you want to know how everything works, then read on.<br><br>

### The Basics<br>
- - -
Firstly you'll have to create a file in you cfg folder. `"E:\Steam Library\steamapps\common\Counter-Strike Global Offensive\csgo\cfg"`<br>

I'll name mine `knife_binds.cfg`. You can name the file anything you want, make sure to put a .cfg at the end. Open up the file and write `echo Hello World!` and save it.<br>

Now open up CSGO and press `~` to bring up the in-game console<br>

Once the console comes up write `"exec knife_binds"`.<br>
If you've done everything correctly it should print out `Hello World!` on to the console.<br>

(if it doesn't come up you haven't enabled it, you can enable console from the game settings)<br><br>

### Adding knife binds<br>
- - -
Here is the actual bind!<br>

	`give weapon_knife_m9_bayonet;mp_drop_knife_enable 1;ent_fire weapon_knife addoutput "classname weapon_knifegg"`

The above line is three console commands chained together, that's why its separated by semi colons and enclosed in double quotes.<br>

This can be directly copy pasted to the console and it will work. Go ahead try it! Copy the above line to the console like you did before and press enter.<br>

See it worked! But let's just be practical here, nobody is going to type this in console everytime they want to switch their knife. That's why we have scripts and binds.<br>

For example:<br>
	`bind "KP_END" "Say Hello"`<br>

In the above case we will say hello in global chat if we press Numpad 1<br>

So why don't we just go ahead and bind the damn thing?<br>
We can't! Because normal binds don't work if there's double quotes in the command.<br>

So if we write a bind for this, it will look like<br>

	bind "KP_END" "give weapon_knife_m9_bayonet;mp_drop_knife_enable 1; \ 
				ent_fire weapon_knife addoutput "classname weapon_knifegg""

The bind command takes in two parameters <key> <command>, here the key is KP_END and the actuall command starts at `give` and ends at `classname weapon_knifegg` which as you can see has to be enclosed in double quotes. Hence the double quote for the actuall bind command ends prematurely which will throw an error when we try to run this and as far as I know Valve doesn't provide escape characters in scripts.<br>

What now?<br><br>

### A simple workaround<br>
- - -

Since we cannot bind the command directly as we identified in the previous section, we can replace the command with a filename and set an alias to `exec` it.<br>

Create a file with the knife bind command and save it as m9bayonet.cfg<br>

	`give weapon_knife_m9_bayonet;mp_drop_knife_enable 1;ent_fire weapon_knife addoutput "classname weapon_knifegg`

Now create an alias for it inside the file you created earlier (`knife_binds.cfg`)<br>

	`alias m9bayonet "exec m9bayonet"`

In the next line bind it to a key with the following command
	`bind "KP_END" "use weapon_knife; drop; m9bayonet"`

Your `knife_binds.cfg` file should looke like this<br>

	`alias m9bayonet "exec m9bayonet"`
	`bind "KP_END" "use weapon_knife; drop; m9bayonet"`

Now go in-game start an offline game_mode other than DM, and `exec knife_binds`.<br>
See if it works by pressing Numpad1. You should know hold an m9bayonet.<br>

### Full script

This is how the finished script looks like<br>

```
sv_cheats 1
mp_items_prohibited 0

// KNIFE HELP
echo ** List of Available Knifes **
echo bayonet, flip, gut, karambit, m9bayonet, tactical, butterfly, falchion, bowie, ursus, jack, stiletto, widomaker

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

PS: You can download all files using the download link at the [top][4] of the article.<br>

Hope you found this article useful.<br>

Cheers


[1]:{{ site.url }}/downloads/knife_binds.zip
[2]:{{ site.url }}/2019/05/24/offline-knife-binds-for-csgo.html#the-basics
[3]:{{ site.url }}/2019/05/24/offline-knife-binds-for-csgo.html#quick-setup
[4]:{{ site.url }}/2019/05/24/offline-knife-binds-for-csgo.html#download-link
