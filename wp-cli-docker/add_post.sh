#!/bin/bash

while true; do
    # Generate a random title and content for the new post
    title=$(curl -s 'https://www.random.org/strings/?num=1&len=10&digits=on&upperalpha=on&loweralpha=on&unique=on&format=plain&rnd=new')
    content=$(curl -s 'https://baconipsum.com/api/?type=all-meat&sentences=3&start-with-lorem=1')
    tag=$(date +%Y-%m-%d-%H-%M-%S)
    # Use WP-CLI to add the new post
    wp post create --post_title="$title" --post_content="$content" --post_status="publish" --tags="$tag"

    # Wait for an hour before adding the next post
    sleep 3600
done
