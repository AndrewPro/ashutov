---
title: "Working_with_hugo"
date: "2024-12-29T23:57:53-08:00"
tags:
  - "HomeLab"
description: Desc Text.
cover:
    image: "<image path/url>" # image path/url
    alt: "<alt text>" # alt text
    caption: "<text>" # display caption under cover
    relative: false # when using page bundles set this to true
    hidden: true # only hide on current single page
---
# This is a testing enviroment for hugo

{{< figure src="static/icons/face3_c.png" attr="lolp" align=center link="" target="" >}}

![asd](saxaphone_icon.jpg)

![Alt Text](/icons/saxaphone_icon.jpg)

# shortcodes
Super useful!
- You can create a file in the `layouts/shortcodes/` folder, such as `youtube.html` or `tweet.html`. to over ride theme shortcodes

{{ < youtube dQw4w9WgXcQ >}}

{{< inTextImg url="face3_c.png" height="20" alt="An example image" >}}

