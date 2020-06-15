#!/bin/bash

if [ "$3" = "" ]; then echo Missing results directory, environment, and dateZ arguments ; exit 1 ; fi

# Configuration parameters

export version=0.1
export libGoogle=https://docs.google.com/spreadsheets/d/1hFTCQri4vGqiuZyh98qDBJhM25DuLNDIsls70wIudK8
export docGoogle=https://docs.google.com/spreadsheets/d/10Ak-7Gdaqkni_dQI3uGSC9s83ml382q1obePMC4yNp4
export copyright="Subset copyright DBE Core Ltd. 2020; Portions copyright &#169; OASIS Open"
export configDirectory=DBEcoreDemo
export UBLversion=2.2
export title="DBEcoreDemo subset of UBL 2.2"
export package=DBEcoreDemo-subset-UBL-2.2
export subsetColumn=DBEcoreDemoSubset
export subsetDocsRegex="(^UBL-(Order)-2.2$)"

bash subsetUBLSchemas-common.sh "$1" "$2" "$3" "$4"

exit 0 # always be successful so that github returns ZIP of results
