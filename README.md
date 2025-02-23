# Mario Party Player Widget

This is a real simple HTML widget that you can add to your stream that shows
who is playing as what character. Supports unlimited amount of players.

## Widget Setup

1. Open `config.js` in Notepad or a similar text editor.
2. Make the various changes that you need to. Every setting is currently documented.
3. Save your file.

EX:

* To change the font size, modify the value of `fontSize` by changing the number.
* To change the game, modify the value of `game` to one of the appropriate options ("mp2", "mp3", "jamboree")
* Adding more players you can just copy the values of the sample in the file, if a character doesn't exist for a game, no character will appear next to the name.

## OBS Setup

1. Add a browser source in OBS.
2. Set the width and height of the browser to 1920 x 1080 (or the output resolution of your stream)
3. Click on the local file option
4. Browse to the `index.html` in this folder.
5. Click the `Unload Browser When Not Visible` option in OBS.
6. Save the new browser source
7. Now you can resize and move around the browser widget as appropriate to wherever you want.

## Adding support for more games

1. Find a sprite sheet for the character profiles somewhere.
2. Create a folder with the game name, it should have no spaces.
3. Paste the individual cut up images of each sprite into this newly created folder.
4. Rename each sprite to the appropriate character name. They should be all lower case, and any spaces should switched to underscore (`_`) characters
4. Run `CreateStyleSheet.bat`
5. A `style.css` file should be created in every folder.