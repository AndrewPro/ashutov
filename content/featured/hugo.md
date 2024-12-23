---
title: "Hugo"
date: "2024-12-23T13:59:23-08:00"
tags:
  - HomeLab
description: Desc Text.
cover:
    image: "<image path/url>" # image path/url
    alt: "<alt text>" # alt text
    caption: "<text>" # display caption under cover
    relative: false # when using page bundles set this to true
    hidden: true # only hide on current single page
---
This site is Powered by [Hugo](https://gohugo.io/) & [PaperMod](https://github.com/adityatelange/hugo-PaperMod/)

# Recreating My Site
Look at the PaperMod [GitHub](https://github.com/adityatelange/hugo-PaperMod/wiki/Installation)

## 1. Create the Hugo Site
```
hugo new site MyFreshWebsite --format yaml
# replace MyFreshWebsite with name of your website
```

## 2. Make the hugo site into a git Repo

```
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:AndrewPro/kshutov.git
git push -u origin main
```
## 3. Add the Theme, [PaperMod](https://github.com/adityatelange/hugo-PaperMod/) as a git submodule
```
git submodule add --depth=1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
git submodule update --init --recursive # needed when you reclone your repo (submodules may not get cloned automatically)
```
!![Image Description](/images/Pasted%20image%2020241221152033.png)
The theme should pop up in the themes directory


## 4. Update the `config.yml`
If this looks complex and you need help going though everything, I recomend using gpt to explain every option.
Please look at the offical  [PaperMod](https://github.com/adityatelange/hugo-PaperMod/) config, In this one I removed some extra configs
``` yml
baseURL: "https://examplesite.com/"
title: ExampleSite
paginate: 5
theme: PaperMod

# for faster page loads
minify:
  disableXML: true
  minifyOutput: true

params:
  env: production # to enable google analytics, opengraph, twitter-cards and schema.
  title: ExampleSite
  description: "ExampleSite description"
  keywords: [Blog, Portfolio, PaperMod]
  author: Me
  # author: ["Me", "You"] # multiple authors
  images: ["<link or path of image for opengraph, twitter-cards>"]
  DateFormat: "January 2, 2006"
  defaultTheme: auto # dark, light
  disableThemeToggle: false


  assets:
    # disableHLJS: true # to disable highlight.js
    # disableFingerprinting: true
    favicon: "<link / abs url>"
    favicon16x16: "<link / abs url>"
    favicon32x32: "<link / abs url>"
    apple_touch_icon: "<link / abs url>"
    safari_pinned_tab: "<link / abs url>"

  label:
    text: "Home"
    icon: /apple-touch-icon.png
    iconHeight: 35


  # home-info mode
  homeInfoParams:
    Title: "Hi there \U0001F44B"
    Content: Welcome to my blog

  socialIcons:
    - name: x
      url: "https://x.com/"
    - name: stackoverflow
      url: "https://stackoverflow.com"
    - name: github
      url: "https://github.com/"

  cover:
    hidden: true # hide everywhere but not in structured data
    hiddenInList: true # hide on list pages and home
    hiddenInSingle: true # hide on single page

  editPost:
    URL: "https://github.com/<path_to_repo>/content"
    Text: "Suggest Changes" # edit text
    appendFilePath: true # to append file path to Edit link

menu:
  main:
    - identifier: categories
      name: categories
      url: /categories/
      weight: 10
    - identifier: tags
      name: tags
      url: /tags/
      weight: 20
    - identifier: example
      name: example.org
      url: https://example.org
      weight: 30

```
## 5. Update the `Page.md` in architipes
This is the heading that every post you make will have
```yml 
---
title: "{{ replace .File.ContentBaseName "-" " " | title }}"
date: "{{ .Date }}"
# weight: 1
# aliases: ["/first"]
tags: ["first"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "Desc Text."
canonicalURL: "https://canonical.url/to/page"
disableHLJS: true # to disable highlightjs
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
ShowWordCount: true
ShowRssButtonInSectionTermList: true
UseHugoToc: true
cover:
    image: "<image path/url>" # image path/url
    alt: "<alt text>" # alt text
    caption: "<text>" # display caption under cover
    relative: false # when using page bundles set this to true
    hidden: true # only hide on current single page
---
```

## Add the archive file
`website/content/archives.md`
```md
---
title: "Archive"
layout: "archives"
url: "/archives/"
summary: archives
---
```

## 6. Make second GitHub repo For Hosting the website
- Hugo generates a static website form your md files in your content direcotry. It spits out the html files to the public directory.
- We need to create another git submodule for the public folder for github pages.
- Warning, you need to add a readme and initulise the main branch first. I beleave you can figure it out :3
- Note I think I can create a seprate branch that will just have the public folder but I am unsure how to do that.

```
git submodule add -b main git@github.com:AndrewPro/kshutov.git public

```

## Add The custom domain 
- In the settings of the repo, you should have an option to set a custom domain. Follow the instructions.
- It is simple, you just add four a records to your domain provider and github aut creates a cname for it to work. 
## 7. Enable GitHub Pages
Go to settings of github repo of the public folder. Activate Page Fucntion 

**Add The custom domain** 
- In the settings of the repo, you should have an option to set a custom domain. Follow the instructions.
- It is simple, you just add four a records to your domain provider and github aut creates a cname for it to work. 

## 6. Add Comments System
I am using [giscus](https://giscus.app/), A comments system powered by GitHub Discussions.
This only works if the repo is public. For private repos I need to find a diffrent solution. 
Please read on how to install this app form the apps documentation. The just of it is:
1. Make the repo public
2. Install the app on the repo
3. Enable Discussions on your repo
This is on the repository that we created in the public folder
4. Go to https://giscus.app/ Enter your repository
5. For the page mapping, I used title of the page. You can set the title of the page in the page header
6. Category I did general
7. Chose Theme 
8. Copy Code 
```html
<script src="https://giscus.app/client.js"
        data-repo="AndrewPro/kshutov"
        data-repo-id="R_kgDONgyWtw"
        data-category="General"
        data-category-id="DIC_kwDONgyWt84ClbfC"
        data-mapping="title"
        data-strict="0"
        data-reactions-enabled="1"
        data-emit-metadata="0"
        data-input-position="bottom"
        data-theme="dark_tritanopia"
        data-lang="en"
        crossorigin="anonymous"
        async>
</script>
```
9. Create `comments.html` file in the `layouts/partials` folder. Files in this folder will override the theme partials 
10. Paste the code into `layouts/partials/comments.html``
Comments should work now

## Create User Image in Home-Info Mode in PaperMod
1. Create a file at `site/layouts/partials/home_info.html`
2. Paste this code there 
```html 
{{- with site.Params.homeInfoParams }}
<article class="first-entry home-info">

    <!-- This div I added for the  profile image -->

    <div class="profile-image">
        {{- if .imageUrl -}}
            <img draggable="false" src="{{ .imageUrl | absURL }}" alt="{{ .imageTitle | default "profile image" }}" 
                 title="{{ .imageTitle }}" height="{{ .imageHeight | default 150 }}" width="{{ .imageWidth | default 150 }}" />
        {{- end }}
    </div>
    
    <header class="entry-header">
        <h1>{{ .Title | markdownify }}</h1>
    </header>
    <div class="entry-content">
        {{ .Content | markdownify }}
    </div>
    <footer class="entry-footer">
        {{ partial "social_icons.html" (dict "align" site.Params.homeInfoParams.AlignSocialIconsTo) }}
    </footer>
</article>
{{- end -}}

```
4.  Add the image details to homeInfoParams in  `hugo.yml`
```yml
  homeInfoParams:
    Title: "Andrew Shutov"
    Content: "Heyo"
    imageUrl: "icons/face_icon_c.png"
    imageWidth: 200
    imageHeight: 200
    imageTitle: Thats Me! :D
```
- Notice how the icon relitive path starts form inside the static folder

## That should be most of it :D
There are tons you can do more, but this should get you started on your way. 
