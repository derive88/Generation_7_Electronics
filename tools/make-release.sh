#!/bin/bash

# Do everything required for making a release of Generation 7 Electronics.
#
# Copyright (c) Markus "Traumflug" Hitter 2011, 2012

PREV_PWD=${PWD}
trap "cd \"${PREV_PWD}\"" EXIT

IDE_FULL_NAME="Gen7 Arduino IDE Support"

while [ ! -d .git ]; do cd ..; done

if [ "$1" = "" -o "$2" = "" -o "$3" != "" ]; then
  echo "usage: $(basename $0) <release part> <release-number>"
  echo
  echo "Where <release part> is one of:"
  echo "  IDE    <== for ${IDE_FULL_NAME}"
  for F in *.pcb; do
    echo "  ${F%.pcb}"
  done
  exit 1
fi

PART="$1"
RELEASE="$2"
if [ "${PART}" = "IDE" ]; then
  PART="${IDE_FULL_NAME}"
else
  if [ ! -r "${PART}"*.sch ] || [ ! -r "${PART}"*.pcb ]; then
    echo "${PART} isn't a releasable electronics design,"
    echo "either the schematics, the layout, or both are missing."
    exit 1
  fi
fi

BASE_DIR="${PWD}"
DOC_DIR="${BASE_DIR}/release documents"

echo "Uncommitting old release ..."
for F in "${DOC_DIR}/${PART}"*; do
  git rm "${F}"  # ignore errors
done
echo "... done."


if [ "${PART}" = "${IDE_FULL_NAME}" ]; then

  echo "Create ${PART} ${RELEASE} ..."
  cd "arduino support"
  ./make.sh
  for F in *.zip; do
    mv "${F}" "${DOC_DIR}/${F%.zip} ${RELEASE}.zip"
  done
  cd "${BASE_DIR}"
  echo "... done."

else  # electronics designs

  # bugfix for gEDA/PCB 20110918, can be removed later
  LC_NUMERIC=C

  echo "Creating ${PART} ${RELEASE} schematic PDFs ..."
  for F in "${PART}"*.sch; do
    PS_DOC="${DOC_DIR}/${F%.sch} ${RELEASE} Schematic.ps"
    gschem -p -o "${PS_DOC}" -s "${BASE_DIR}/tools/print.scm" "${F}" >/dev/null
    cd "${DOC_DIR}"
    ps2pdf "${PS_DOC}"
    rm -f "${PS_DOC}"
    cd "${BASE_DIR}"
  done
  echo "... done."

  echo "Creating ${PART} ${RELEASE} layout PDFs ..."
  for F in "${PART}"*.pcb; do
    PS_DOC="${DOC_DIR}/${F%.pcb} ${RELEASE} Layout.ps"
    pcb -x ps --align-marks --outline --auto-mirror --media A4 \
      --psfade 0.6 --scale 1.0 --drill-copper --show-legend \
      --psfile "${PS_DOC}" "${F}" >/dev/null
    cd "${DOC_DIR}"
    ps2pdf "${PS_DOC}"
    rm -f "${PS_DOC}"
    cd "${BASE_DIR}"
  done
  echo "... done."

  echo "Creating ${PART} ${RELEASE} layout PNGs ..."
  for F in "${PART}"*.pcb; do
    PNG_DOC="${DOC_DIR}/${F%.pcb} ${RELEASE} Layout.png"
    pcb -x png --dpi 300 --only-visible --format PNG \
      --outfile "${PNG_DOC}" "${F}" >/dev/null
  done
  echo "... done."

  echo "Creating ${PART} ${RELEASE} layout Gerbers ..."
  for F in "${PART}"*.pcb; do
    GERBER_NAME="${F%.pcb} ${RELEASE}"
    GERBER_DIRNAME="${GERBER_NAME} Layout Gerbers"
    mkdir -p "${DOC_DIR}/${GERBER_DIRNAME}"
    pcb -x gerber --gerberfile "${DOC_DIR}/${GERBER_DIRNAME}/${GERBER_NAME}" \
      "${F}" >/dev/null
    cd "${DOC_DIR}"
    zip -rq "${GERBER_DIRNAME}.zip" "${GERBER_DIRNAME}"
    rm -rf "${GERBER_DIRNAME}"
    cd "${BASE_DIR}"
  done
  echo "... done."

fi

echo "Committing all the release files ..."
git add --force "${DOC_DIR}"
git commit -e -m \
"Make ${PART} ${RELEASE} release.

New Features:

 - "
sleep 3
git tag -u 806F3A3E -m "${PART} ${RELEASE} release." \
  $(echo "${PART}" | tr ' ' '-')"-${RELEASE}"
echo "... done."

echo "All done. Now push the result with \"git push && git push --tags\"."


#  This script is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation; either
#  version 3 of the License, or (at your option) any later version.
#
#  This library is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
#  General Public License for more details.


