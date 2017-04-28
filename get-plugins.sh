#!/bin/bash

set -e

mkdir -p plugins

get_plugins() {
  printf "* ${1}"
  if [ -f plugins/${1}.hpi ] || [ -f plugins/${1}.jpi ]; then
    echo " [skipped]"
    return
  fi

  curl -sSL https://updates.jenkins-ci.org/latest/${1}.hpi -o plugins/${1}.hpi
  [ $? -eq 0 ] && echo " [done]" || echo " [fail]"
}

dependencies() {
  for i in plugins/*.hpi; do
    unzip -p ${i} META-INF/MANIFEST.MF         | \
      tr -d '\r' | sed -e ':a;N;$!ba;s/\n //g' | \
      awk '/^Plugin-Dependencies: /{print $2}'
  done | sed -e 's/,/\n/g' -e 's/:.*$//g' | sort | uniq
}

echo "Downloading Plugins"
while read -r plugin; do get_plugins ${plugin}; done < plugins.txt
echo

DEP1="$(mktemp)"
DEP2="$(mktemp)"

echo "Downloading Plugins (Dependencies) #1"
dependencies > "${DEP1}"
cat plugins.txt "${DEP1}" | sort | uniq > "${DEP2}"
for plugin in $(comm --nocheck-order plugins.txt "${DEP1}" -1 -3); do get_plugins ${plugin}; done
echo

# there might have extra dependencies
echo "Downloading Plugins (Dependencies) #2"
dependencies > "${DEP1}"
for plugin in $(comm --nocheck-order "${DEP2}" "${DEP1}" -1 -3); do get_plugins ${plugin}; done
echo

# cleanup
rm -f "${DEP1}" "${DEP2}"
