target="$1"

if [ "$target" = "" ] ; then
  target="/app/index.js"
fi

filename=`basename "${target}"`
directory=`dirname "${target}"`

cd "$directory"
npm install

echo "Step 1: does is parse"
node --check "$filename"

echo "Step 2: does it audit"
npm-audit

echo "Step 3: does it check"
npm-check

echo "Step 4: does it lint"
npm-lint

echo "Step 5: does it hint"
jshint "${target}"

echo "Done."
