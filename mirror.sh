#!/usr/bin/env bash

# skipping word-vriend as that requires a form
for page in bezoek nu-te-zien vaste-collectie agenda kids nieuwsbrief in-het-nieuws archief steun-eicas over-eicas organisatie vacatures anbi privacy shop charkow word-connected-partner hegiusfonds virtual-eggs-schetsen-versen space-traps thin-as-air-abundant-emptiness ijsselbiennale tegendraads symposium-franck-gribling boekpresentatie-ellen-korth lezing-jonas-snijder ik-hoorde-dat-er-geluisterd-werd; do
    mkdir $page 2>/dev/null
    curl localhost:8000/$page > $page/index.html
    git add $page/index.html
done
