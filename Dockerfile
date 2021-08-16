from node:16.6.2-alpine3.11
WORKDIR opt/app
add package.json package.json  
run npm install --legacy-peer-deps
add . .
run npm run build
run npm prune --production
cmd ["node", './dist/main.js']