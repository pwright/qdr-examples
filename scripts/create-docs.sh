
# requires 'npm i -g replace-in-file'
for example in standalone policy; do
cp -r $example/* modules/$example/examples
replace-in-file modules/$example/examples/* --configFile=scripts/config.js
done
