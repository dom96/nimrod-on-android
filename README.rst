=================
Nimrod on Android
=================

:author: Grzegorz Adam Hankiewicz <gradha@imap.cc> & Dominik Picheta <morfeusz8@gmail.com

.. contents::

.. section-numbering::

.. raw:: pdf

   PageBreak oneColumn

General
=======

This project may be compiles using the Nimrod compiler which can be found on
or at http://nimrod-code.org/. This example is a tweak of @gradha's work.
I am still puzzled as to why his original example did not work, the advice given
on the forum (http://forum.nimrod-code.org/t/61) is correct and it pretty much
worked out of the box for me. The only reason I changed the C & Nimrod code is
because I wanted to see the output of that ``myAdd`` function, and I did not
feel like figuring out how to concatenate a string and a long or even how to
output that long so I just did it all in Nimrod.

I have included the ``ant`` build.xml to make getting this to work easier,
i'm not sure why the original did not include this. The steps to get this to
work are as follows:

1. Download and install the ndk tools for android. (This can be done very easily
on Arch Linux - there is a android-ndk package in the AUR)

2. Download and install the android SDK (platform-)tools, (I pretty much installed
just about everything related to Android from the AUR heh)

3. Set up a AVD for the emulator. This can be done by executing `android` which
is a GUI tool. The rest of the process should be fairly self explanatory. I
have also installed the Android 4.1 (API 16) from within that GUI tool.

4. Compile the Nimrod backend by executing: nimrod c jni/backend.nim

5. Execute ``ndk-build NDK_DEBUG=1``. Should work without that DEBUG option, 
but since I have only confirmed that it works with it, better try building with
that option.

6. Execute ``ant debug``. Everything should compile successfully into a .apk file
in the bin/ directory.

7. You can then run your emulator and install the .apk package using
``adb install hello-jni-debug.apk``.

After that succeeds you should see a "HelloJni" app in your "Phone's" menu in
the emulator. 

The output should be "Some addition: 13".

