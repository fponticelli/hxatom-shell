#!/usr/bin/env bash

#current=$(git describe --tags --abbrev=0)
current=$(jq  -r '.version' haxelib.json)
latest=$(gh release list --repo electron/electron --limit 1 --exclude-drafts | awk '{print $2}')
prerelease_version=$(echo $latest | awk -F'-' '{print $2}')

if [[ -n "$prerelease_version" ]]; then
    echo "Aborting update since latest version is a pre-release ($latest)"
    exit 1
fi

echo "Updating from $current -> $latest"

if [ ! "$current" = "$latest" ]; then
    echo "Download electron-api.json"
    gh release download "$latest" --clobber -R electron/electron -p electron-api.json
    echo "Building api"
    haxe api.hxml
    echo "Building haxedoc.xml"
    haxe haxedoc.hxml
    echo "Updating haxelib.json"
    cat <<< "$(jq --arg var "$latest" '.version = $var' haxelib.json)" > tmpfile && mv tmpfile haxelib.json
    echo "Updating demo/package.json"
    cd demo || exit 1
    cat <<< "$(jq --arg var "$latest" '.devDependencies.electron = $var' package.json)" > tmpfile && mv tmpfile package.json
    npm install
    cd - || exit 1
    exit 0
else
    echo "No new version available"
    exit 1
fi
