#!/bin/bash
if [ -f /mnt ];
then
cp -r data /mnt/mysqlharundata
helm upgrade --install mysqlharun mysqlhelm/
helm upgrade --install harunaktasdocs docshelm/
else
mkdir /mnt
cp -r data /mnt/mysqlharundata
helm upgrade --install mysqlharun mysqlhelm/
helm upgrade --install harunaktasdocs docshelm/
fi
