#!/bin/bash

# Controleer of een bestandspad is opgegeven
if [ -z "$1" ]; then
  echo "Gebruik: $0 <pad naar xml bestand>"
  exit 1
fi

# Lees het bestandspad
bestand="$1"

# Gebruik sed om de aanpassing te doen
sed -i 's/name="\([^"]*\) \([^"]*\)"/name="\1_\2"/g' "$bestand"

echo "Spaties zijn vervangen door underscores in de name-tag in $bestand"