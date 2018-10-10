#!/bin/bash -e

echo "building subiz/wkhtmltopdf:5"
docker build -t subiz/wkhtmltopdf:5 .
[ "$1" != "push" ] || (echo "pushing $tag to docker hub" && docker push subiz/wkhtmltopdf:5)

[ "$1" == "push" ] || echo "use './build.sh push' to push to docker hub"
