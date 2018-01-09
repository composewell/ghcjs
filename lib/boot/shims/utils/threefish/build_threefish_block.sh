#!/bin/bash
runhaskell generate_threefish_block.hs > threefish_block.in.js
echo "// generated by generate_threefish_block.hs" > threefish_block.js

# beautify:
# uglifyjs threefish_block.in.js -b >> threefish_block.js

# minify
# uglifyjs threefish_block.in.js -c -m >> threefish_block.js

# minify (closure)
ccjs threefish_block.in.js >> threefish_block.js

cat threefish_block.js test_threefish_block.js > test.js

