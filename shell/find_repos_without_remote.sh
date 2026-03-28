#! /usr/bin/env bash

errcho() { >&2 echo -e "\e[96m${@}\e[0m"; }

errcho "Searching \$HOME for git repositories"

found_repos=$( \
  gfind "${HOME}" -type d       \
    \(                          \
      -name "Dropbox" -prune -o \
      -name ".cache"  -prune -o \
      -name ".local"  -prune -o \
      -name "Library" -prune    \
    \) -o                       \
    -name ".git"                \
)

errcho "Filtering repos"
repo_filter_no_dotgit=$(echo "${found_repos}" | grep -v ".git")
filtered_repos_1=$(echo "${found_repos}" | grep ".git")
errcho "\nFiltered: no .git"
errcho "${repo_filter_no_dotgit}"

repo_filter_simplifi=$(echo "${filtered_repos_1}" | grep "simplifi")
filtered_repos_2=$(echo "${filtered_repos_1}" | grep -v "simplifi" | grep -v ".tgenv")
errcho "\nFiltered: simplifi"
errcho "${repo_filter_simplifi}"

trimmed_repos=$(echo "${filtered_repos_2}" | sed 's|/.git||g')

#errcho "\nFound repositories"
#echo "${trimmed_repos}"

no_remote=()
while IFS= read -r repo; do
  # Can't pass a directory to `git remote`, so `cd` into the repo dir.
  cd "${repo}"

  # Check if there's a remote or not. If not, add it to the array.
  remote=$(git remote)
  errcho "Checking: '${remote}': ${repo}"
  if [[ -z "${remote}" ]]; then
    no_remote+=("${repo}")
  fi
done <<< "${trimmed_repos}"

for repo in "${no_remote[@]}"; do
  echo "${repo}"
done

#echo -e "${no_remote[@]}"
