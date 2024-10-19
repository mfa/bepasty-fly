## bepasty setup for fly.io

This is my personal bepasty setup running on [fly.io](https://fly.io).
[bepasty](https://github.com/bepasty/bepasty-server) is a pastebin that supports not only text but nearly every filetype.

Steps to install:
- copy ``bepasty.conf.template`` to ``bepasty.conf`` and **edit it**
- run ``fly launch`` and config the app for your account (don't overwrite the Procfile!)
- create a volume with ``flyctl volumes create bepasty_data --size 1``
- and then deploy for real: ``flyctl deploy``
