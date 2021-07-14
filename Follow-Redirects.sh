#!/bin/bash

# explanation:
# -L : follows redirects
# -s : silent mode, no progressbar
# -o : sends output to the abyss
# -w : output after completion
# %{url_effective} : will be current url after completion
# $1 : arg1 passed into command

curl -Ls -o /dev/null -w %{url_effective} $1

# outputs additional line for readability
printf "\n"
