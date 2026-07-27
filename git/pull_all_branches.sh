#! /usr/bin/env bash

# Set up local branches that track all remote branches
#
# See: Stack Overflow: "How do I fetch all Git branches?"
#        https://stackoverflow.com/a/10312587

git branch -r \
  | grep -v '\->' \
  | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" \
  | while read remote; do \
      git branch --track "${remote#origin/}" "$remote"; \
    done

#git fetch --all
#git pull --all
