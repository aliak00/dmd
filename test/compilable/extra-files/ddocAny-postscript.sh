#!/usr/bin/env bash

grep --text -v "Generated by Ddoc from" ${OUTPUT_BASE}.html > ${OUTPUT_BASE}.html.2
diff -pu --strip-trailing-cr ${EXTRA_FILES}/${TEST_NAME}.html ${OUTPUT_BASE}.html.2

rm ${OUTPUT_BASE}.html{,.2}
