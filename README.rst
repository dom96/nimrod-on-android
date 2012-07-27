=================
Nimrod on Android
=================

:author: Grzegorz Adam Hankiewicz <gradha@imap.cc>

.. contents::

.. section-numbering::

.. raw:: pdf

   PageBreak oneColumn

General
=======

Nimrod is a programming language (find it at http://nimrod-code.org/) which
compiles down to portable C/C++/ObjC code. This small example tries to show how
you can build an iOS application calling the nimrod code from your objective-c
code. However, it fails. The process I got so far:

1. Download and install the ndk tools for android and verify they work.
2. Checkout this example.
3. Run scripts/nimbuild.sh to generate the C code for the nimrod code.
4. Run ndk-build to generate the dynamic library later to be used by java.
5. Open the project in eclipse and try to build and run.

The project doesn't work unless you remove the call to NimMain() and related,
which defeats the point of running nimrod on Android. For further information
see http://forum.nimrod-code.org/t/61.
