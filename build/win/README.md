Compile Google V8 on Windows (Strawberry Perl)
==============================================

Collection of batch files to compile V8 via MinGW/Msys.

We will use the mingw compiler that comes with strawberry perl.
Perl is and the V8 binding will be compiled by the same compiler,
therefore we can avoid any linkage headache!

V8 needs a more sophisticated build system than distributed with
strawberry perl. V8 uses GYP (Google's Generate Your Project build
chain). The whole source plus toolchain will take up approx 1GB.


Prerequisites
=============

Versions and archs are only indicating what I have tested.
There's no "obvious" reason why it shouldn't work for others.

[x] Install Strawberry Perl (v 5.18.2.2 - 32bit)
[x] Install Tortoise SVN (1.8.8.25755 - 32bit)
    (Select to install command line client tools)
[x] Install MinGW msys (base only, no compilers!)
    (Use default location: C:\MinGW\msys\1.0)

Put the scripts to use
======================

If everything is installed in default locations and you're lucky
everything should work from your file explorer.

Checkout repositories
```
01-fetch.bat
```

Open msys shell
```
02-mingw-shell.bat
```

Execute inside msys shell
Use the same arch as perl
```
sh 03-mingw-compile.x64.sh
sh 03-mingw-compile.ia32.sh
```

Execute in cmd or perl shell
```
05-perl-compile.bat
06-perl-install.bat
```

Open a new perl shell
```
perl -MJavaScript::V8 -e "print $JavaScript::V8::VERSION"
```

If everything went ok it should print out a Version string (0.07).