#!/bin/bash

if [ "$3" = "" ]; then echo Missing results directory, environment, and dateZ arguments ; exit 1 ; fi

# Configuration parameters

export version=0.1
export libGoogle=https://docs.google.com/spreadsheets/d/16fH7kJ8HIDWsNNcou_LVclUoVph7uK9Cf2TOSui1Z_o
export docGoogle=https://docs.google.com/spreadsheets/d/1BJIOzbKSil7cc-iqDyW7CwKd26dweXRTdR7S8HqMa6Y
export copyright="Subset copyright DBE Core Ltd. 2020; Portions copyright &#169; OASIS Open"
export configDirectory=DBEcoreDemo
export UBLversion=2.2
export title="PEPPOL subset of UBL 2.2"
export package=PEPPOL-subset-UBL-2.2
export subsetColumn=PeppolDemo
export subsetDocsRegex="(^UBL-(Order)-2.2$)"

bash subsetUBLSchemas-common.sh "$1" "$2" "$3" "$4"

exit 0 # always be successful so that github returns ZIP of results
