#!/bin/sh

# http://curl.haxx.se/mail/archive-2014-10/0006.html

file=ncdc/all/1901.gz
bucket=hadoopbook
resource="/${bucket}/${file}"
contentType="application/x-compressed-tar"
dateValue="`date +'%a, %d %b %Y %H:%M:%S %z'`"

stringToSign="GET
${contentType}
${dateValue}
${resource}"

# S3KEY and S3SECRET must be populated in the environment

signature=`/bin/echo -n "$stringToSign" | openssl sha1 -hmac ${S3SECRET} -binary | base64`

curl -H "Host: ${bucket}.s3.amazonaws.com" \
  -H "Date: ${dateValue}" \
  -H "Content-Type: ${contentType}" \
  -H "Authorization: AWS ${S3KEY}:${signature}" \
  https://${bucket}.s3.amazonaws.com/${file}
