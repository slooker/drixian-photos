# Basic Instructions

## Setup

Everytime you startup these script, it will ask for your root password so that it can kill the PTPCamera service that OS X runs when you plug in a camera.

The first time you start working on this, you need to run `./setup.sh` and it will install Homebrew and Gphoto2.

## Running 

There are three scripts.  You run each of the scripts by typing `./<scriptname.sh>`

* `./detect-cameras.sh` will just detect the cameras connected to the computer.
* `./get-photos.sh` will copy the photos from a *single* connected camera.  It will usually use the camera that was last pulled from.  You can also specify the usb port if you specify it like this: `./get-photos.sh "usb:020,029"`
* `./keep-getting-photos.sh` will loop through the existing cameras and grab all the existing files while skipping the existing ones.  It will run this script repeatedly every 10 seconds until you hit `Ctrl-C`.
