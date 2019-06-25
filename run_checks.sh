target="$1"

if [ "$target" = "" ] ; then
  target="/app/index.js"
fi

filename=`basename "${target}"`
directory=`dirname "${target}"`

cd "$directory"
npm install

node --check "$filename" && npm-audit && npm-check && npm-lint
