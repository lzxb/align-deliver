#!/bin/sh
set -eu

# Optional argument: parent directory in which to install the skill.
skills_dir=${1:-"$HOME/.agents/skills"}
destination="$skills_dir/align-deliver"
if [ -e "$destination" ] || [ -L "$destination" ]; then
  printf '%s\n' "Already exists: $destination. Back it up or choose another parent directory."
  exit 1
fi
for program in curl unzip; do
  command -v "$program" >/dev/null 2>&1 || { printf '%s\n' "Required command not found: $program" >&2; exit 1; }
done
temporary_dir=$(mktemp -d)
trap 'rm -rf "$temporary_dir"' EXIT HUP INT TERM
curl --fail --location --retry 3 --connect-timeout 20 --max-time 180 \
  'https://github.com/lzxb/align-deliver/releases/download/v2026.10.24-bc853b1/align-deliver-bc853b1.zip' -o "$temporary_dir/skill.zip"
if command -v sha256sum >/dev/null 2>&1; then
  actual_digest=$(sha256sum "$temporary_dir/skill.zip" | cut -d ' ' -f 1)
elif command -v shasum >/dev/null 2>&1; then
  actual_digest=$(shasum -a 256 "$temporary_dir/skill.zip" | cut -d ' ' -f 1)
else
  printf '%s\n' 'Required: sha256sum or shasum' >&2
  exit 1
fi
if [ "$actual_digest" != 'b9f2c783528bd380209124370127b41e09a0debe00174390867587155b7d7557' ]; then
  printf '%s\n' 'SHA-256 mismatch; nothing installed.' >&2
  exit 1
fi
unzip -q "$temporary_dir/skill.zip" -d "$temporary_dir"
test -s "$temporary_dir/align-deliver/SKILL.md"
mkdir -p "$skills_dir"
mkdir "$destination"
cp -R "$temporary_dir/align-deliver/." "$destination/"
printf '%s\n' "Installed align-deliver bc853b1 to $destination"
