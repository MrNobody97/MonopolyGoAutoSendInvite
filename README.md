# Monopoly Go Auto Send Invite
## What do you need?
An emulatore, this batch work on [LDPlayer](https://www.ldplayer.net/) or anyone have default browser.
Set adb path.

### Windows
Download the [Android SDK Platform Tools.zip](https://dl.google.com/android/repository/platform-tools-latest-windows.zip) file for Windows.
Extract the contents of this .zip file into an easily accessible folder, such as C:\platform-tools
After you install Android Studio or the platform tools .zip file, add the path to the Platform Tools directory in your environment variables so that the adb command can be run from anywhere.

Go to Start > Control Panel > System > Advanced System Settings > Environment Variables
Select the Path variable in the User Variables section, then select Edit
In the Edit environment variables window, select New
For Android Studio add the following path to the environment variables:
%USERPROFILE%\AppData\Local\Android\sdk\platform-tools

If you are using the platform tools zip, add the path to environment variables that points to the directory that contains the zips extracted files.
C:\platform-tools

Close all of the command line windows (if any open).
Reopen cmd and type adb devices. It should respond with List of devices attached. If it does not, restart your PC.
