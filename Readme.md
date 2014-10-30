================================
Coffeescript - pixi.js - testapp
================================


Getting Started
===============


sencha cmd
----------
Download sencha cmd and extract it to ~/develop/js
Download sencha cmd SDK and extract it to ~/develop/js/Cmd


sencha cmd chooser
------------------
Different projects depend on different sencha cmd versions.
But normaly when typing sencha it always uses the latest version.
So we have to replace the normal sencha cmd with our own that allows us to choose between the different verisons.

Download and replace sencha in your ~/bin

Now when you type **sencha** in your terminal, you get to choose one out of three versions.

You can set a version for your project so you don't have to always choose when you type **sencha**. Just type **source setenv.sh** and you're good to go.


sencha touch
------------
Download sencha touch and extract it to ~/develop/js/
npm install -g cordova
brew install android-sdk


Build native app
----------------
cd static
sencha cordova init
sencha app build -run native
