#!/bin/bash

# Version dosyasını oku
current_version=$(cat version.json | grep -o '"version": [0-9]*' | grep -o '[0-9]*')
new_version=$((current_version + 1))

# Yeni tarih
current_date=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

# Version dosyasını güncelle
cat > version.json << EOF
{
  "version": $new_version,
  "lastUpdate": "$current_date",
  "description": "MindAR Monster Experience - Version tracking"
}
EOF

echo "Version $current_version -> $new_version güncellendi!"
echo "Tarih: $current_date" 