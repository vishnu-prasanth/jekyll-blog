---
layout: page
title: "Using AHK for Game Automation"
tags: SA-MP video-games
---

This was my first ever actual program that did something useful and from that day on I fell in love with programming. I discovered AutoHotkey while looking for a way to send rapid mouse clicks for an SA-MP gamemode. This was a zombie survival / death match mode and everyone who played the zombie team was using autoclickers to gain an advantage.<br><br>

<!--more-->

AHK is slow, slower when compared to auto clicker programs written in C or C++. So when I opted to use ahk, sending rapid mouse clicks was not only thing I had in mind.<br>

#### Before using AHK scripts

<img class="image image--xs" src="{{ site.url }}/resources/screenshots/using-lsa-for-game-automation_00.bmp" width="100%">
<font size="2px">Me and my friend Arun, after losing a game, his ingame name is coDerus. He's the one standing behind me facing the camera.</font><br>

<img class="image image--xs" src="{{ site.url }}/resources/screenshots/using-lsa-for-game-automation_01.jpg" width="100%">
<font size="2px">We started hanging with high rank players to stay alive long enough to clear some CPs and gain XP.</font><br>

It was around this time when we thought all was lost, I stumbled upon AutoHotKey. At that moment everything changed!<br>

#### After using AHK scripts

<img class="image image--xs" src="{{ site.url }}/resources/screenshots/using-lsa-for-game-automation_02.png" width="100%">
<font size="2px">Me standing confidently playing as a zombie. Note: The blue logs are perk switches</font><br>

<img class="image image--xs" src="{{ site.url }}/resources/screenshots/using-lsa-for-game-automation_03.png" width="100%">
<font size="2px">Me taking down a newbie player, poor guy doesn't stand a chance.</font><br>

Rapid mouse clicks were requried for zombie players to spam bite while running behind human players. Primay attack of zombie players were bites, ranging from healing bites to ravaging ones. I didn't particularly like playing the zombie team, but these scripts made me a zombie god.<br>

<img class="image image--xs" src="{{ site.url }}/resources/screenshots/using-lsa-for-game-automation_04.png" width="100%">
<font size="2px">Standing on top of a building preying on unsuspecting victims</font><br>

What AHK lacked in speed it makes up in versatility. I went from Rank 12 to Rank 16 (higher the value better the rank) in just 2 months. I could quickly switch skills, send reports, and communicate with different groups all the while driving with a dozen zombies behind us.<br>

The scripts are not well written considering I was just starting out, anyway I'm so proud of them.<br><br>

#### Perk Binds
```
	;--------------------------------------------
	;PERK AUTOMATION ( BOTH SURVIVOR AND ZOMBIE )
	;--------------------------------------------

	#IfWinActive, GTA:SA:MP		;This script only works on SA-MP

	;Extra Meds
	*$/::
	SendInput t/setperk 1 2 {Enter}
	return

	;Extra Fuel
	*$,::
	SendInput t/setperk 1 3 {Enter}
	return

	;Extra Oil
	*$.::
	SendInput t/setperk 1 4 {Enter}
	return

	;FlashBang & Hard Bite
	*$x::
	SendInput t/setperk 1 5 {Enter}
	SendInput t/setperk 2 2 {Enter}
	return

	;Digger
	*$7::
	SendInput t/setperk 2 3 {Enter}
	return

	;Less Bite Damage & Screamer
	*$r::
	SendInput t/setperk 1 6 {enter}
	SendInput t/setperk 2 9 {Enter}
	return

	;Dead Sense
	*$6::
	SendInput t/setperk 2 6 {enter}
	return

	;Burst Run
	*$q::
	SendInput t/setperk 1 7 {enter}
	SendInput t/setperk 2 10 {enter}
	return

	;Vomiter
	*$8::
	SendInput t/setperk 2 8 {enter}
	return

	;More Stamina & Thick Skin
	*$3::
	SendInput t/setperk 1 9 {Enter}
	SendInput t/setperk 2 14 {Enter}
	return

	;Zombie Bait & Refreshing Bite
	*$z::
	SendInput t/setperk 1 10 {enter}
	SendInput t/setperk 2 4 {enter}
	return

	;Stinger Bite
	*$4::
	SendInput t/setperk 2 11 {Enter}
	return

	;Surefoot & Stomp
	*$v::
	SendInput t/setperk 1 13 {enter}
	SendInput t/setperk 2 13 {enter}
	return

	;Rocket Boots & Big Jumper
	*$e::
	SendInput t/setperk 1 15 {Enter}
	SendInput t/setperk 2 12 {Enter}
	return

	;God Dig
	*$5::
	SendInput t/setperk 2 15 {Enter}
	return

	;PERK 16 SURVIVOR
	*$b::
	SendInput t/setperk 1 16 {Enter}
	SendInput t/setperk 2 16 {Enter}
	return
```

<br>

#### Chat Binds

```
	;Script for Automating Tasks in Los Santos Apocalypse
	;Author: Vishnu Prasanth ( Infinite-Gaming )

	;This section is used for suspending the autohotkey script while using chat.
	;Pause AHK
	$t::
	Suspend On
	SendInput t
	Hotkey, Enter, On
	Hotkey, Escape, On
	Hotkey, t, Off
	return

	NumpadEnter::
	Enter::
	Suspend Permit
	Suspend Off
	SendInput {Enter}
	Hotkey, t, On
	Hotkey, Enter, Off
	Hotkey, Escape, Off
	return

	Escape::
	Suspend Permit
	Suspend Off
	SendInput {Escape}
	Hotkey, t, On
	Hotkey, Enter, Off
	Hotkey, Escape, Off
	return

	;-----------
	;ONLINE CHAT
	;-----------

	;Premium Chat
	 ------------
	*^1::
	Suspend On
	SendInput t{!}pmc{Space}
	Hotkey, Enter, On
	Hotkey, Escape, On
	Hotkey, t, Off
	return

	;Clan Chat
	 ---------
	*^2::
	Suspend On
	SendInput t@{Space}
	Hotkey, Enter, On
	Hotkey, Escape, On
	Hotkey, t, Off
	return

	;Private Message
	 ---------------
	*$^-::
	Suspend On
	SendInput t/pm{Space}
	Hotkey, Enter, On
	Hotkey, Escape, On
	Hotkey, t, Off
	return

	;Team Private Message
	 --------------------
	*$^=::
	Suspend On
	SendInput t/tpm{Space}
	Hotkey, Enter, On
	Hotkey, Escape, On
	Hotkey, t, Off
	return

	;----------------
	;Report to admins
	;----------------

	*$^p::
	SendInput t/r [SS]Vizkrig Hive Bug! {Enter}
	return

	*$^o::
	SendInput t/r [SS]Vizkrig Bugged! {Enter}
	return
```

<br>

#### Miscellaneous 
```
	;--------------
	;Other Commands
	;--------------

	;SURVIVOR WEAPONS
	^g::
	SendInput t/weapons {Enter}
	return

	;ZOMBIE HIDE
	^h::
	SendInput t/hide {Enter}
	return
```

Cheers.