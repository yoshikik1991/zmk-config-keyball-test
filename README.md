# zmk-config-keyball-test

Edit keymap here https://nickcoutsos.github.io/keymap-editor/

Usage
Local
This project runs as a web application, but there are still options for working with offline ZMK keymaps:

In the editor you can choose the Clipboard keymap source and paste in the contents of your ZMK .keymap file, and if you're using a Chromium-based web browser you can alternatively use the FileSystem source to read and make changes to select .keymap files directly.

Actual firmware builds are outside of the scope of this project, so if you're working on local keymap data it is assumed that you have a local ZMK development environment or some other means of running builds.

Web Integrations
This editor includes a GitHub integration. You can load the web app and grant it access to your public or private zmk-config repos. Changes to your keymap are committed right back to the repository so you only ever need to leave the app to download and flash firmware.

License
The code in this repo is available under the MIT license.

The collection of ZMK keycodes is taken from the ZMK documentation under the MIT license as well.
