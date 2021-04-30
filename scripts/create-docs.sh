
# requires 'npm i -g replace-in-file'
for example in standalone policy mesh-single-cluster mesh-multi-cluster broker-single-cluster; do
cp -r $example/* modules/$example/examples
replace-in-file modules/$example/examples/* --configFile=scripts/config.js
done

antora preview-playbook.yml

