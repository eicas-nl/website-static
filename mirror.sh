#!/usr/bin/env bash

set -e

FROM=tmp.eicas.nl
#FROM=localhost:8000

# skipping word-vriend as that requires a form
# skipping nu-te-zien as that is a redirect
for page in takanori-suzuki oekraine-klankruimtes fred-wagemans-artistiek-directeur opening-eicas-preview start-verbouw-hegiusgebouw eicas2022-1 eicas2022-2 eicas2022-3 eicas2022-4 eicas2022-5 eicas2022-6 eicas2022-7 eicas2022-8 bidbook-9 bidbook-10 bidbook-11 bidbook-12 bidbook-13 bidbook-14 bidbook-15 bidbook-16 bidbook-17 rondleidingen frits-grimmelikhuizen-dada de-macht-van-kunst franck-gribling bezoek vaste-collectie agenda kids nieuwsbrief in-het-nieuws nieuws archief steun-eicas over-eicas organisatie vacatures anbi privacy shop charkow word-connected-partner hegiusfonds virtual-eggs-schetsen-versen space-traps thin-as-air-abundant-emptiness tij-tijd-en-tijdelijkheid tegendraads symposium-franck-gribling boekpresentatie-ellen-korth lezing-jonas-snijder ik-hoorde-dat-er-geluisterd-werd het-is-hier-niet-pluis matter-over-mind matter-over-mind-finissage graaf-mulder zomerronde-2022 zomerexpositie-2022 witte-weken openingstentoonstelling openingstentoonstelling-takanori-suzuki openingstentoonstelling-henk-peeters-ea over-gaten nulweek-2023 informeel-readymade bazon-brock atelier-0 nul-niet-niks walks gravend-naar-de-toekomst sponsoren fondsen bavink zomerronde-2023; do
    echo $page
    mkdir $page 2>/dev/null || true
    curl -k https://$FROM/$page | sed -e "s/$FROM/www.eicas.nl/g" > $page/index.html
    git add $page/index.html
done

for i in app.js image.js; do
    curl -k https://$FROM/js/$i | sed -e "s/$FROM/www.eicas.nl/g" > js/$i
    git add js/$i
done

for i in logo-eicas.png; do
    curl -k https://$FROM/img/$i > img/$i
    git add img/$i
done

for i in favicon.ico icon.svg; do
    curl -k https://$FROM/$i > $i
    git add $i
done

source .env
wget --level=inf -r -nH --cut-dirs=1 --user=$USER --password=$PASS --no-check-certificate --reject $(find img -type f | sed -e "s/.*\///" | tr "\\n" , | head -c-1) -4 ftps://$FROM/public/img/
git add img

curl -k https://$FROM | sed -e "s/$FROM/www.eicas.nl/g" > index.html
git add index.html

git add mirror.sh
git commit
