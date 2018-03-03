#!/bin/sh -exu
for f in thrift/src/*.thrift; do thrift --gen hs $f; done
