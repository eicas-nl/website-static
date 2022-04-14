#!/usr/bin/env bash

# skipping word-vriend as that requires a form
# skipping nu-te-zien as that is a redirect
for page in eicas2022-1 eicas2022-2 eicas2022-3 eicas2022-4 eicas2022-5 eicas2022-6 eicas2022-7 eicas2022-8 bidbook-9 bidbook-10 bidbook-11 bidbook-12 bidbook-13 bidbook-14 bidbook-15 bidbook-16 bidbook-17 rondleidingen frits-grimmelikhuizen-dada de-macht-van-kunst franck-gribling bezoek vaste-collectie agenda kids nieuwsbrief in-het-nieuws archief steun-eicas over-eicas organisatie vacatures anbi privacy shop charkow word-connected-partner hegiusfonds virtual-eggs-schetsen-versen space-traps thin-as-air-abundant-emptiness tij-tijd-en-tijdelijkheid tegendraads symposium-franck-gribling boekpresentatie-ellen-korth lezing-jonas-snijder ik-hoorde-dat-er-geluisterd-werd het-is-hier-niet-pluis; do
    mkdir $page 2>/dev/null
    curl https://tmp.eicas.nl/$page | sed -e 's/tmp.eicas.nl/www.eicas.nl/g' > $page/index.html
    git add $page/index.html
done

curl https://tmp.eicas.nl | sed -e 's/tmp.eicas.nl/www.eicas.nl/g' > index.html
git add index.html

git add mirror.sh
git commit
