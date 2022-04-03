#!/usr/bin/env bash


for page in bezoek nu-te-zien vaste-collectie agenda kids nieuwsbrief in-het-nieuws archief steun-eicas over-eicas organisatie vacatures anbi privacy shop; do
    mkdir $page
    curl localhost:8000/$page > $page/index.html
    git add $page/index.html
done
