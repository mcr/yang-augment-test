#!/bin/sh


echo
echo MODULE B
pyang -f tree --tree-print-groupings module-B2.yang

echo
echo MODULE C
pyang -f tree --tree-print-groupings module-C2.yang

echo
echo MODULE D
pyang -f tree --tree-print-groupings module-D2.yang

