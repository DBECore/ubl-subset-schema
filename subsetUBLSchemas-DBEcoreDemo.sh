#!/bin/bash

if [ "$3" = "" ]; then echo Missing results directory, environment, and dateZ arguments ; exit 1 ; fi

# Configuration parameters

export version=0.5
export libGoogle=https://docs.google.com/spreadsheets/d/1TLZrskPeXEC443ksZNRU3gCOZfgWQF1FxY6KuGjq1q8
export docGoogle=https://docs.google.com/spreadsheets/d/1_96h_ZgdFRYeIhYsAUcQisx7ubzLHSuRNfNPKhmVkE0
export copyright="Subset copyright DBE Core Ltd. 2020; Portions copyright &#169; OASIS Open"
export configDirectory=DBEcoreDemo
export UBLversion=2.2
export title="DBE Core Subset of UBL 2.2"
export package=DBE-subset-UBL-2.2
export subsetColumn=PEPPOLI
export subsetDocsRegex="(^UBL-(Order|OrderResponse|Invoice)-2.2$)"

bash subsetUBLSchemas-common.sh "$1" "$2" "$3" "$4"

exit 0 # always be successful so that github returns ZIP of results
