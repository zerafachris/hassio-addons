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

- [Limnoria](limnoria/) : Limnoria is a robust, full-featured, and user/programmer-friendly Python IRC bot, with many existing plugins. Successor of the well-known Supybot.

<!-- TO DO 
https://docs.linuxserver.io/images/docker-mstream
https://docs.linuxserver.io/images/docker-mylar3
https://docs.linuxserver.io/images/docker-nano-wallet
https://docs.linuxserver.io/images/docker-nntp2nntp
https://docs.linuxserver.io/images/docker-oscam 
-->

- [overseerr](overseerr/) : Overseerr is a request management and media discovery tool built to work with your existing Plex ecosystem.
<!-- TO DO
https://docs.linuxserver.io/images/docker-photoshow
https://docs.linuxserver.io/images/docker-pixapop
https://docs.linuxserver.io/images/docker-pydio-cells
https://docs.linuxserver.io/images/docker-rsnapshot
https://docs.linuxserver.io/images/docker-smokeping
https://docs.linuxserver.io/images/docker-taisun

 -->

[//]: # "ADDONLIST_END"
[smb-shield]: https://img.shields.io/badge/SMB--green?style=plastic.svg
[sql-shield]: https://img.shields.io/badge/SQL-external-orange.svg
[privileged-shield]: https://img.shields.io/badge/privileged-required-orange.svg
[ingress-shield]: https://img.shields.io/badge/ingress--green.svg
[support-shield]: https://img.shields.io/badge/Support-thread-green.svg
[ram-shield]: https://img.shields.io/badge/RAM_min-4Gb-orange.svg
