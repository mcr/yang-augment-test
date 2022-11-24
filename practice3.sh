#!/bin/sh

INC="--path=/usr/local/lib/python3.8/dist-packages/pyang-2.5.2-py3.8.egg/share/yang/modules/ietf"

pyang ${INC} -f tree --tree-print-groupings example-module.yang

echo
echo MODULE A
pyang ${INC} -f tree --tree-print-groupings module-A3.yang

# some private use SID space at 60,000.
pyang ${INC} --sid-list --sid-generate-file 62450:50 module-A3.yang

echo
echo MODULE B
pyang ${INC} -f tree --tree-print-groupings module-B3.yang
pyang ${INC} --sid-list --sid-update-file module-A3@unknown.sid module-B3.yang

echo
echo MODULE C
pyang ${INC} -f tree --tree-print-groupings module-C3.yang
pyang ${INC} --sid-list --sid-update-file module-A3@unknown.sid module-C3.yang

echo
echo MODULE D
pyang ${INC} -f tree module-D3.yang
pyang ${INC} --sid-list --sid-update-file module-A3@unknown.sid module-D3.yang
exit 0

