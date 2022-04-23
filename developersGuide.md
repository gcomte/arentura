# Developers Guide

## Run Locally

Prerequisites: 

* https://jekyllrb.com/docs/installation/
* `gem install jekyll-theme-minimal`

```
jekyll serve -w --config _config.yml
```

### NixOS

If you are working on NixOS you can run the following instead:

```shell
nix-shell --command "jekyll serve -w --config _config.yml"
```