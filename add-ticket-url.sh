#!/bin/bash -x

COMMIT_MSG_FILE=$1
COMMIT_SOURCE=$2
SHA1=$3

head -1 "$COMMIT_MSG_FILE" | /usr/bin/perl -pe 's/.*epcml-(\d+).*/\n\nhttps:\/\/jira.oreillyauto.com\/browse\/EPCML-$1/i' >> "$COMMIT_MSG_FILE"
