# Home assistant add-on: zerafachris

[![Donate][donation-badge]](https://www.buymeacoffee.com/zerafachris)
![update-badge]

[donation-badge]: https://img.shields.io/badge/Buy%20me%20a%20coffee-%23d32f2f?logo=buy-me-a-coffee&style=flat&logoColor=white
[update-badge]: https://img.shields.io/github/last-commit/zerafachris/hassio-addons?label=last%20update

_Thanks to everyone having starred my repo! To star it click on the image below, then it will be on top right. Thanks!_

[![Stargazers repo roster for @zerafachris/hassio-addons](https://reporoster.com/stars/zerafachris/hassio-addons)](https://github.com/zerafachris/hassio-addons/stargazers)
[![Forkers repo roster for @zerafachris/hassio-addons](https://reporoster.com/forks/zerafachris/hassio-addons)](https://github.com/zerafachris/hassio-addons/network/members)

## About

My home assistant addon repository.
In case of issue, create an issue in the repository and reference the full log from supervisor (all red or white text).

<!-- - ![smb][smb-shield] : allows accessing smb shares, or a local external disk
- ![ingress][ingress-shield] : supports Ingress
- ![sql][sql-shield] : requires an external sql database server
- ![privileged][privileged-shield] : requires protection mode off to run
- ![ram][ram-shield] : a minimum of 4gb of RAM is recommended to avoid crashing the system -->

## Installation

Adding this add-ons repository to your Home Assistant instance is
pretty easy. Follow [the official instructions](https://home-assistant.io/hassio/installing_third_party_addons) on the
website of Home Assistant, and use the following URL:

```
https://github.com/zerafachris/hassio-addons
```

[//]: # "ADDONLIST_START"

## &#10003; Add-ons:

- [airsonic](airsonic/) : Airsonic is a free, web-based media streamer, providing ubiquitous access to your music. Use it to share your music with friends, or to listen to your own music while at work. You can stream to multiple players simultaneously, for instance to one player in your kitchen and another in your living room.

- [deluge](deluge/) : Deluge is a lightweight, Free Software, cross-platform BitTorrent client.

- [digikam](digikam/) : Digikam is a Professional Photo Management with the Power of Open Source.

- [EmbyStat](embystat/) is a personal web server that can calculate all kinds of statistics from your (local) Emby or Jellyfin server. Just install this on your server and let him calculate all kinds of fun stuff.

- [Filezilla](filezilla/) : Filezilla is a fast and reliable cross-platform FTP, FTPS and SFTP client with lots of useful features and an intuitive graphical user interface.

- [Fleet](fleet/) : Fleet provides an online web interface which displays a set of maintained images from one or more owned repositories.

<!-- - [freqtrade](freqtrade/) : Freqtrade is a free and open source crypto trading bot written in Python. It is designed to support all major exchanges and be controlled via Telegram. It contains backtesting, plotting and money management tools as well as strategy optimization by machine learning. -->


- [Limnoria](limnoria/) : Limnoria is a robust, full-featured, and user/programmer-friendly Python IRC bot, with many existing plugins. Successor of the well-known Supybot.

- [mStream](mstream/) : mStream is a personal music streaming server. You can use mStream to stream your music from your home computer to any device, anywhere. There are mobile apps available for both Android and iPhone.

- [Mylar3](mylar3/) : mylar3 is an automated Comic Book downloader (cbr/cbz) for use with NZB and torrents written in python. It supports SABnzbd, NZBGET, and many torrent clients in addition to DDL.

- [nano-wallet](nano-wallet/) : nano-wallet is a digital payment protocol designed to be accessible and lightweight, with a focus on removing inefficiencies present in other cryptocurrencies. With ultrafast transactions and zero fees on a secure, green and decentralized network, this makes Nano ideal for everyday transactions. This is a nginx wrapper for the light wallet located [here](https://github.com/linuxserver/nano-wallet). You will need to pass a valid RPC host when accessing this container.

- [oscam](oscam/) : oscam is an Open Source Conditional Access Module software used for descrambling DVB transmissions using smart cards. It's both a server and a client.

- [overseerr](overseerr/) : Overseerr is a request management and media discovery tool built to work with your existing Plex ecosystem.

- [photoshow](photoshow/) : Photoshow is gallery software at its easiest, it doesn't even require a database.

- [pixapop](pixapop/) : Pixapop is an open-source single page application to view your photos in the easiest way possible.

<!-- - [Rsnapshot](rsnapshot/) : Rsnapshot is a filesystem snapshot utility based on rsync. rsnapshot makes it easy to make periodic snapshots of local machines, and remote machines over ssh. The code makes extensive use of hard links whenever possible, to greatly reduce the disk space required. -->

- [smokeping](smokeping/) : Smokeping keeps track of your network latency. For a full example of what this application is capable of visit UCDavis.

- [taisun](taisun/) : Taisun is an application for a Docker enabled device with an emphasis on providing a web based interface for managing a single server.

[//]: # "ADDONLIST_END"
[smb-shield]: https://img.shields.io/badge/SMB--green?style=plastic.svg
[sql-shield]: https://img.shields.io/badge/SQL-external-orange.svg
[privileged-shield]: https://img.shields.io/badge/privileged-required-orange.svg
[ingress-shield]: https://img.shields.io/badge/ingress--green.svg
[support-shield]: https://img.shields.io/badge/Support-thread-green.svg
[ram-shield]: https://img.shields.io/badge/RAM_min-4Gb-orange.svg
