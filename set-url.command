#!/bin/bash
# Double-click this AFTER deploying, then paste your live URL when asked.
cd "$(dirname "$0")"
read -p "Paste your live site URL (e.g. https://suhaann-patel.netlify.app): " U
U="${U%/}"
sed -i '' "s|SITE_URL|$U|g" index.html 2>/dev/null || sed -i "s|SITE_URL|$U|g" index.html
echo "Done — index.html now points at $U. Re-upload the folder."
read -p "Press return to close."
