#!/bin/bash
set -e

hookDirectory=".git/hooks";
hooks="pre-commit pre-push";


echo "Installing git hooks..."
for hook in $hooks;
do
  if [ ! -f "$hookDirectory/$hook" ]; then
    echo "$hook";
    mkdir -p "$hookDirectory/$hook";
    ln -s "$(readlink -f "./hooks/$hook")" "$(readlink -f "./$hookDirectory/$hook")";
  else
    echo "Skipping install \"$hook\"...";
  fi
done;

echo "Installing library dependencies...";
yarn
