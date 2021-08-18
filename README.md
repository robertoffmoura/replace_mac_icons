# Automatically Replace Mac OS X Icons 

This repository contains a script based on [this article](https://www.sethvargo.com/replace-icons-osx/) to replace app icons with custom ones on Mac.

## Setup
1. Create a folder inside the root directory of this repository with the name of the application whose icon you want replace, e.g., `Google Chrome`.
2. Find out the name of the icon file inside the contents of the app (a file with a .icns extension), e.g.
    ```
    ls /Applications/"Google Chrome".app/Contents/Resources | grep .icns
    ```
    In this case, the icon file we want to change is named `app.icns`.
3. Copy your custom icon and paste it inside the folder created in step `1`, and rename it to the file name from step `2`.
4. Edit the script `replace_icons.sh` and add a line with the name of the app and the name of the icon file, e.g.
    ```
    replace_icons "Google Chrome" "app"
    ```
5. Make the script executable.
    ```
    chmod u+x replace_icons.sh
    ```

## Running
```
./replace_icons.sh
```