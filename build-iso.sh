#!/bin/bash
PROJECT=gorillalinuxiso

# TODO: make all changes before build iso
# .
# .
# .

# Make final iso directory
if [ -d "$PROJECT" ]; then rm -Rf $PROJECT; fi
mkdir gorillalinuxiso

# Copy original archiso files to final iso directory
cp -r ./archiso/* ./gorillalinuxiso/

# Copy splash.png to final iso directory
cp ./assets/images/splash.png ./gorillalinuxiso/syslinux/splash.png

# Copy files that should changed compared to the original archiso into final iso directory.
cp -r ./files-to-change-in-iso/* ./gorillalinuxiso/

# Generate iso
sudo mkarchiso -v -w work $PROJECT