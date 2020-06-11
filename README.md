![Desktop Screenshot](https://mzdr.github.io/macos/screenshot.jpg)  

# Installation

Run the command below in your terminal and the installation will start *automatically*.

Just follow the prompts and you’ll be fine. 👌

```shell
git clone https://github.com/mzdr/macOS.git ~/.macOS && ~/.macOS/install
```

# What will I get?

1. A super 🔥 **Terminal**…

    ![iTerm2 Screenshot](https://mzdr.github.io/macos/iTerm2.jpg)  

    Which is [iTerm2] with

    - [Z-Shell] \(zsh)
    - [CamingoCode] \(13pt) as font
    - Anonymice [Powerline] \(14pt) as non-ASCII font
    - [Prezto] with [garrett prompt]
    - [Seti] color scheme

#  

2. A ridiculously fast 🚓 💨 **web development** setup that maps any `{directory}.{user}.test` request automatically.

    - [Apache]
    - [MySQL]
    - [PHP7]
    - [dnsmasq]
    
    <sub>Dnsmasq will resolve all `*.test` requests to `localhost` and apache will look in `~/Sites/.alias/{directory}` for the actual files. Use symlinks for full power.</sub>

#  

3. A nice stack of (coding optimized 👀) **fonts**…

    - [FiraCode]
    - [CamingoCode]
    - [Anonymous Pro]
    - [Inconsolata]

    <sub>See [`.stack/fonts`](.stack/fonts) for the full list of fonts that will be installed. Adjust it to your personal taste.</sub>

#  

4. A set of (my) relevant 🍧 **desktop apps**…

    - [Google Chrome]
    - [Firefox]
    - [Slack]
    - [Harvest]
    - [Dropbox]
    - [VLC]
    - [Rectangle]
    - [Alfred]
    - [1Password]
    - [TablePlus]

    <sub>See [`.stack/desktop`](.stack/desktop) for the full list of desktop app that will be installed. Adjust it to your personal taste.</sub>

#    

<p align="center">
    <a href="https://sebastianprein.com/">sebastianprein.com</a> ・
    <a href="https://twitter.com/_mzdr">@_mzdr</a>
</p>

<!-- Terminal -->
[Z-Shell]: http://www.zsh.org/
[iTerm2]: https://github.com/gnachman/iTerm2
[Prezto]: https://github.com/sorin-ionescu/prezto
[garrett prompt]: https://github.com/chauncey-garrett/zsh-prompt-garrett
[Seti]: https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes
[Powerline]: https://github.com/powerline/fonts

<!-- Desktop apps -->
[Google Chrome]: https://www.google.de/chrome/
[Firefox]: https://www.mozilla.org/de/firefox/
[Slack]: https://slack.com/
[Harvest]: https://www.getharvest.com/
[Dropbox]: https://www.dropbox.com/downloading
[VLC]: https://www.videolan.org/vlc/
[Rectangle]: https://rectangleapp.com/
[1Password]: https://1password.com/
[TablePlus]: https://tableplus.com/
[Alfred]: https://www.alfredapp.com/

<!-- Web development -->
[apache]: https://httpd.apache.org/
[MySQL]: https://www.mysql.com/
[PHP7]: https://secure.php.net/
[dnsmasq]: http://www.thekelleys.org.uk/dnsmasq/doc.html

<!-- Fonts -->
[FiraCode]: https://github.com/tonsky/FiraCode
[CamingoCode]: http://www.janfromm.de/typefaces/camingomono/camingocode/
[Anonymous Pro]: http://www.marksimonson.com/fonts/view/anonymous-pro
[Inconsolata]: http://levien.com/type/myfonts/inconsolata.html