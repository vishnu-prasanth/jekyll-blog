---
layout: page
title: "Setting up omnisharp-vim for Unity"
tags: unity game-development vim
---

This article is aimed at using omnisharp-vim with Unity and C#. At first glance I felt this would be a walk in the park. But as we all know, first glances can be deceiving, atleast it always is for me.

<!--more-->

 I installed omnisharp-vim with a `PlugInstall` since I use Plug.vim. Afterwards I opened up a C# file for testing, omnisharp-vim immediately detected the file and started its auto config, The first thing it will do is to check if Roslyn is installed. If not, an alert box will pop up asking the user to confirm, once the user confirms, Omnisharp will download and install Roslyn. We can also point it to a manual installation by editing the .vimrc.

For C# auto-completion Omnisharp-vim requires a C# language server and that's where Roslyn comes into play. Roslyn is the program that Visual Studio relies on for its auto-completion, so its pretty awesome. Once we have Roslyn running in the background, we are ready to go. 

In the vim status line, there will see a success message once everything is in place. Afterwards autocompletion can be triggered by pressing [c-x, c-o] (i.e., Ctrl + x, Ctrl + o). Its a weird combination to say the least. Ah well I ignored it since I planned to automate it from the start.

To automate the autocompletion, we need another plugin, there are many out there but I use coc.nvim, ale works just as well. Installing coc or ale is a straight forward process, if you use Plug.vim just add it to the .vimrc and run `PlugInstall`.

Now comes the confusing part, getting omnisharp to detect Unity libraries. 

There are two requirements for this
- .Net framework 4.1
- Visual Studio Tools for Unity 

Both of the above requirements are easily available on the web. .Net can be downloaded from Microsoft's official page and Visual Studio Tools for Unity comes listed in the Visual Studio Installer. 

But there's a caveat to this, somehow omnisharp-vim will only load the Unity library data if the C# file is opened atleast once in Visual Studio. Which basically means I can't take out Visual Studio from the equation just yet. 

And I still haven't got around to why this is the case.

... To be continued ...
