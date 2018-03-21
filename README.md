# Polaroidapp

## Getting Started
We have decompiled the Polaroid apk into this app. For this purpose , we are using the Apktool library

### Prerequisites
---
- Java JDK must be installed 
- Android SDK must be installed.
- Must downliad the Apktool.jar file and add it to you Environment variables

###### It is to be noted that all the guidelines provided here are for windows only.
---
#### Installation of Apktool 
- Is at least Java 1.7 installed?
- Does executing java -version on command line / command prompt return 1.7 or greater?
- If not, please install Java 7+ and make it the default.

Now, download the Apktool

- Download Windows [wrapper script](https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/windows/apktool.bat) (Right click, Save Link As apktool.bat)
- Download apktool-2 ([find newest here](https://bitbucket.org/iBotPeaches/apktool/downloads/))
- Rename downloaded jar to apktool.jar
- Move both files (apktool.jar & apktool.bat) to your Windows directory (Usually C://Windows)
- If you do not have access to C://Windows, you may place the two files anywhere then add that directory to your Environment Variables System PATH variable.
- Try running apktool via command prompt

Now that Apktool is installed we can move on  to decompiling and editing our app.

## Decompiling the Apk
---
The decode option on Apktool can be invoked either from d or decode like shown below.

```
$ apktool d foo.jar
// decodes foo.jar to foo.jar.out folder

$ apktool decode foo.jar
// decodes foo.jar to foo.jar.out folder

$ apktool d bar.apk
// decodes bar.apk to bar folder

$ apktool decode bar.apk
// decodes bar.apk to bar folder

$ apktool d bar.apk -o baz
// decodes bar.apk to baz folder
```

## Converting the smalli files to java src files
---
[follow this link](https://www.youtube.com/watch?v=K35AkvE8ulY)

## Building the app 
---

The build option can be invoked either from b or build like shown below

```
$ apktool b foo.jar.out
// builds foo.jar.out folder into foo.jar.out/dist/foo.jar file

$ apktool build foo.jar.out
// builds foo.jar.out folder into foo.jar.out/dist/foo.jar file

$ apktool b bar
// builds bar folder into bar/dist/bar.apk file

$ apktool b .
// builds current directory into ./dist

$ apktool b bar -o new_bar.apk
// builds bar folder into new_bar.apk

$ apktool b bar.apk
// WRONG: brut.androlib.AndrolibException: brut.directory.PathNotExist: apktool.yml
// Must use folder, not apk/jar file
```
In order to run a rebuilt application. You must resign the application. [Android documentation](https://developer.android.com/studio/publish/app-signing.html#signing-manually) can help with this.


### Contributing Guidelines
- Create an issue
- Start working on it.
- Send a PR :) 

Thank you.

---

