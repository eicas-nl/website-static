#!/usr/bin/env bash

# skipping word-vriend as that requires a form
# skipping nu-te-zien as that is a redirect
for page in eicas2022-1 eicas2022-2 eicas2022-3 eicas2022-4 eicas2022-5 eicas2022-6 eicas2022-7 eicas2022-8 bidbook-9 bidbook-10 bidbook-11 bidbook-12 bidbook-13 bidbook-14 bidbook-15 bidbook-16 bidbook-17 rondleidingen frits-grimmelikhuizen-dada de-macht-van-kunst franck-gribling bezoek vaste-collectie agenda kids nieuwsbrief in-het-nieuws archief steun-eicas over-eicas organisatie vacatures anbi privacy shop charkow word-connected-partner hegiusfonds virtual-eggs-schetsen-versen space-traps thin-as-air-abundant-emptiness tij-tijd-en-tijdelijkheid tegendraads symposium-franck-gribling boekpresentatie-ellen-korth lezing-jonas-snijder ik-hoorde-dat-er-geluisterd-werd; do
    mkdir $page 2>/dev/null
    curl localhost:8000/$page > $page/index.html
    git add $page/index.html
done

git add mirror.sh
git commit
