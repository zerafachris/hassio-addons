# Home assistant add-on: taisun

[![Donate][donation-badge]](https://www.buymeacoffee.com/zerafachris)

[donation-badge]: https://img.shields.io/badge/Buy%20me%20a%20coffee-%23d32f2f?logo=buy-me-a-coffee&style=flat&logoColor=white

![Supports 
 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield] ![Supports armhf Architecture][armhf-shield] ![Supports armv7 Architecture][armv7-shield]
![Supports smb mounts][smb-shield]

_Thanks to everyone having starred my repo! To star it click on the image below, then it will be on top right. Thanks!_

[![Stargazers repo roster for @zerafachris/hassio-addons](https://reporoster.com/stars/zerafachris/hassio-addons)](https://github.com/zerafachris/hassio-addons/stargazers)
[![Forkers repo roster for @zerafachris/hassio-addons](https://reporoster.com/forks/zerafachris/hassio-addons)](https://github.com/zerafachris/hassio-addons/network/members)

## About

---

[taisun](https://www.taisun.io/) is an application for a Docker enabled device with an emphasis on providing a web based interface for managing a single server. Taisun allows you to:
* Deploy and manage web based virtual desktops.
* Deploy Taisun specific stacks of applications
* Browse available images on popular Docker repositories
* Import a Docker project from any git repository and start developing on your choice of web based IDE or full Linux desktop
* Spinup a developer container based on popular frameworks and work from a web based IDE
* Single click remote server access to Taisun and your Docker applications

This addon is based on the docker image https://docs.linuxserver.io/images/docker-taisun.

## Installation

---

The installation of this add-on is pretty straightforward and not different in comparison to installing any other add-on.

1. Add my add-ons repository to your home assistant instance (in supervisor addons store at top right, or click button below if you have configured my HA)
   [![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fzerafachris%2Fhassio-addons)
1. Install this add-on.
1. Click the `Save` button to store your configuration.
1. Set the add-on options to your preferences
1. Start the add-on.
1. Check the logs of the add-on to see if everything went well.
1. Open the webUI and adapt the software options

## Configuration

---

Webui can be found at <http://your-ip:PORT>.
The default username/password : described in the startup log.
Configurations can be done through the app webUI, except for the following options

```yaml
GUID: user
GPID: user
TZ: timezone
```

## Support

Create an issue on github

## Illustration

---

![illustration](https://external-preview.redd.it/HH7OEY0nnI7XANspScn-5unGmuxjIr4ORUtnX2Ydj40.jpg?auto=webp&s=00728243b7336589a0a3699b289f50e4f235c9c7)

[repository]: https://github.com/zerafachris/hassio-addons
[smb-shield]: https://img.shields.io/badge/smb-yes-green.svg
[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
