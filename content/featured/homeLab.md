---
title: "HomeLab"
date: "2024-12-30T02:50:17-08:00"
tags:
  - "HomeLab"
cover:
    image: "/posts/hikeingSelfe.png" # image path/url
    alt: "<alt text>" # alt text
    caption: "<text>" # display caption under cover
    relative: false # when using page bundles set this to true
    hidden: true # only hide on current single page
---

# How to get a home lab?
- Making a homle lab is very simple. All you need is some hardware connected to the internet and running some services.
- There are many sefull videos you can find about this topic and how to start your very own home lab. You can check out the youtube channels mentiond here [[Youtube Blog Post]]

# Docker containers
Docker containers are like virtual mashines but share the same binarys, they just create a new enviroment for the program. [Here is a yt video.](https://www.youtube.com/watch?v=Gjnup-PuquQ)

![alt text](/posts/dockerls.png)

{{< youtube Gjnup-PuquQ >}}

Here is a list of the docker containers I am currently running at the moment
- [Dozzle](https://dozzle.dev/) 
	- Real-time logging and monitoring for Docker in the browser
- [Audio Book Shelf](https://www.audiobookshelf.org/)
	- Self-hosted audiobook and podcast server
- [kavita](https://www.kavitareader.com/)
	- self-hosted digital library server
	- I am unsure If I will keep this rn
- [Portainer](https://www.portainer.io/)
	- Container Management
	- Must have!
- [Ghost](https://ghost.org/docs/)
	- Ghost is an independent platform for publishing online by web and email newsletter.
- [HomePage](https://gethomepage.dev/)
	- A modern, _fully static, fast_, secure _fully proxied_, highly customizable application dashboard
- [Authentik](https://goauthentik.io/)
	- self-hosted, open source identity provider
- [traefik](https://traefik.io/traefik/)
	- The Cloud Native Application Proxy

![alt text](/posts/portainer.png)


**Here are some more docker containers that currently needs some configuring**
- [JellyFin](https://jellyfin.org/) 
	- Jellyfin is the volunteer-built media solution that puts _you_ in control of your media.
- [Guacamole](https://hub.docker.com/r/guacamole/guacamole)
	- a clientless remote desktop gateway. It supports standard protocols like VNC and RDP
- [Syncthing](https://syncthing.net/)
	- File syncing server

This is not a conclusive list, just somethin I came up in a afternoon
#TODO How to check if containers are healthy and implement it into all containers 

# Hypervisors
What operating system should you run bare bones on your server? Windows, Mac linux? Well some people run a type one hypervisor as their main os. 
If you are intrested check out [Proxmox](https://www.proxmox.com/en/)!

**[Wikipedia](https://en.wikipedia.org/wiki/Proxmox_Virtual_Environment)**
deployment and management of virtual machines and containers.

{{< youtube sZcOlW-DwrU >}}