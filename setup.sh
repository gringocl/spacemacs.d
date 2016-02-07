#!/usr/bin/env bash

[[ -d ~/.spacemacs.d/layers/+TheBB ]] || \
    git clone git@github.com:TheBB/spacemacs-layers.git ~/.spacemacs.d/layers/+TheBB

[[ -d ~/.spacemacs.d/layers/+justbur ]] || \
    git clone git@github.com:justbur/spacemacs-layers.git ~/.spacemacs.d/layers/+justbur
