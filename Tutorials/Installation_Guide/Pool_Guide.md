---
title: Using PADrend at the University Pools
permalink: pool_guide
category: Installation Guide
author: Sascha Brandt
license: cc-by-sa 4.0
last_updated: May 28, 2019
order: 2
---

For the CS Department Computer Pools at Paderborn University and Heinz Nixdorf Institute there is a simple install script for PADrend available, so you don't have to build it yourself (currently linux only).

To get started, simply run the script located at `/upb/groups/fg-madh/public/share/padrend/padrend_base/setup.sh`.

The script will first ask for a destination folder (default: `~/padrend`) where it will put configuration files, symbolic links to required folders, and an example project which you can use to start developing you own plugins.

To run PADrend, open a terminal, navigate to `~/padrend` (or whatever folder name you chose) and run `./padrend.sh`.
