#!/bin/sh

echo MODULE A
pyang -f tree --tree-print-groupings module-A.yang

echo
echo MODULE B
pyang -f tree --tree-print-groupings module-B.yang

echo
echo MODULE C
pyang -f tree --tree-print-groupings module-C1.yang

echo
echo MODULE D
pyang -f tree --tree-print-groupings module-D1.yang

