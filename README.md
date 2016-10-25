
# HXElectron

Haxe externs for [electron](http://electron.atom.io/).

The Electron framework lets you write cross-platform desktop applications using JavaScript, HTML and CSS. It is based on Node.js and Chromium and is used in the Atom editor.


## Install

```sh
$ haxelib install electron
```

## Regenerate Externs

Download latest api description file from the electron releases site: https://github.com/electron/electron/releases.

```sh
$ haxelib run electron <electron-api.json>
```



## Get started with Haxe and Electron

Spin up the Haxe Quick Start app to see Electron in action:

```sh
## Clone the Haxe Quick Start repository
$ git clone https://github.com/fponticelli/hxelectron

## Go into the repository
$ cd hxelectron/

## Build javascript with Haxe
$ haxe demo.hxml

## Go into the demo application directory
$ cd demo/

## Install the dependencies and run
$ npm install && npm start
```
