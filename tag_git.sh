#!/bin/bash

# Infer version, then increment
VERSION=0.1.0
API_JSON=$(printf '{"tag_name": "v%s","target_commitish": "master","name": "v%s","body": "Release of version %s","draft": false,"prerelease": false}' $VERSION $VERSION $VERSION)
curl --data "$API_JSON" https://api.github.com/repos/ahaynssen/scripts/releases?access_token=3f1d08976c5591d260790468eb6ce9adf5d7598a
