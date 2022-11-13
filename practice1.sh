#!/bin/sh

pyang -f tree --tree-print-groupings module-A.yang
pyang -f tree --tree-print-groupings module-B.yang
pyang -f tree --tree-print-groupings module-C1.yang

