#!/bin/sh

# Set this to the full path of your nimrod compiler
PATH_TO_NIMROD=~/source/Nimrod/bin/nimrod

# Force errors to fail script.
set -e

# If we are running from inside the scripts subdir, get out.
if [ ! -d src ]
then
	cd ..
fi

# Ok, are we out now?
if [ -d src ]
then
	$PATH_TO_NIMROD c --noMain  --app:lib \
		--nimcache:jni --compileOnly jni/*.nim
else
	echo "Uh oh, src directory not found?"
	exit 1
fi
