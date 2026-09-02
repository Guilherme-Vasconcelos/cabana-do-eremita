#!/bin/sh
#
# This helper script creates a post in `blog/_posts/`.
# It can be run from anywhere as long as you remain within the git repository, but it will not alter the
# fact that the post will be put in `blog/_posts/`.

set -eu

root="$(git rev-parse --show-toplevel)"
destpath="$root/blog/_posts/"

if [ "$#" -ne 2 ]
then
    echo "Usage: $0 \"title\" <essay|short-story>" >&2
    exit 1
fi

title="$1"
type="$2"

case "$type" in
    essay|short-story)
	;;
    *)
	echo "Error: type must be either 'essay' or 'short-story'" >&2
	exit 1
	;;
esac

# Turn the title into a lowercase, hyphen-separated slug.
slug="$(printf '%s' "$title" | tr '[:upper:]' '[:lower:]' | sed 's/[^[:alnum:]]\+/-/g; s/^-//; s/-$//')"

# Current date.
date="$(date '+%Y-%m-%d')"
out_fpath="$destpath/$date-$slug.md"

# Don't accidentally overwrite an existing post.
if [ -e "$out_fpath" ]
then
    echo "Error: post already exists: $out_fpath" >&2
    exit 1
fi

cat > "$out_fpath" <<EOF
---
layout: post
title: "$title"
type: "$type"
lang: "pt-BR"
---
EOF

echo "Created: $out_fpath"
