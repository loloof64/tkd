#tkd
**GUI toolkit for the D programming language**

---

## Overview

Tkd is a fully cross-platform GUI toolkit based on
[Tcl/Tk](http://www.tcl.tk/). Tkd allows you to build GUI applications easily
and with the knowledge of a consistent, native look and feel on every platform.

### Supported platforms

* Windows
* Linux
* Mac OSX

## Why Tcl/Tk

Tkd development was initiated based on the performance and uptake of the
[Tkinter](https://wiki.python.org/moin/TkInter) toolkit distributed as a
standard part of the [Python](https://www.python.org/) programming language.
Tkinter allows developers easy access to GUI programming with very little
learning. Being the _de facto_ GUI toolkit of Python has introduced more
developers to GUI application programming and increased the popularity of the
language as a whole. Tkd is an attempt to provide D with the same resource.

## Examples

There are a few examples in this package which can be built using the
[dub](http://code.dlang.org/about) build tool. Clone this repository and use
the following commands to build the examples to see what is possible.
```
dub --config=example1
dub --config=example2
dub --config=example3
dub --config=example4
dub --config=example5
```
## Notes

### Dependencies

Tkd requires v8.6.1 of the Tcl/Tk libraries or greater installed. This also
means that any application using Tkd must be
[linked](http://en.wikipedia.org/wiki/Linker_(computing)) against those
libraries in some way.

This can be easily achieved by using the [dub](http://code.dlang.org/about)
build tool to compile your application which will pull in all needed D source
code and link to the correct Tcl/Tk libraries. This will work across all
platforms but there notes to consider.

#### Windows

On Windows you can download and install
[ActiveTcl](http://www.activestate.com/activetcl/downloads) from ActiveState
which is a fully supported professional library. This will install all needed
Tcl/Tk DLL's and initialization scripts. Once this is installed, building and
linking with dub will give immediate results. For distribution of your
application ActiveTcl also comes with a [silent
install](http://community.activestate.com/faq/unattended-installation-a) option
if you want to include it as part of an installation.

If however you don't want to install Tcl/Tk and want the application to be
self-contained, you can copy the DLL's and the initialization script library
directory into the root of the finished application. These files can be
conveniently found in the `dist` folder from the
[tcktk](https://github.com/nomad-software/tcltk) repository. Your finished
applications directory would then look something like this:
```
project
├── app.exe
├── tcl86.dll
├── tk86.dll
├── zlib1.dll
└── library
    └── *.tcl files
```
I'm hoping once [this](https://github.com/rejectedsoftware/dub/issues/299) dub
issue is resolved this will become the default option on Windows and dub will
copy all required DLL's and files to the application's directory on every dub
build.

#### Linux/Mac OSX

On Linux and Mac OSX things are a little more easier as both operating systems
both have Tcl/Tk installed by default. If however they do not have the latest
version, the libraries can be installed via their respective package managers
or use ActiveTcl.

### Widgets

#### Canvas

The postscript methods of this widget havn't been implemented yet due to time.
This means no exporting to postscript files or printing is available from this
widget. This can be added in the future if there is need.

#### Text

The extended text editing functionality of this widget has not been implement
because there are better, more modern editor widgets available separately. This
control is not indended to be used as a fully featured text editor.
