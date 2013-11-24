#!/bin/bash

# Copyright ©2011-2012 The bíogo Authors. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

WARNING="// This file is automatically generated. Do not edit - make changes to relevant got file.\n"

echo -e $WARNING\
> sw_letters.go
cat < sw_type.got \
| gofmt -r 'alignType -> alignLetters' \
| gofmt -r 'Type -> alphabet.Letters' \
| gofmt -r 'drawSWTableType -> drawSWTableLetters' \
>> sw_letters.go

echo -e $WARNING\
> sw_qletters.go
cat < sw_type.got \
| gofmt -r 'alignType -> alignQLetters' \
| gofmt -r 'Type -> alphabet.QLetters' \
| gofmt -r 'drawSWTableType -> drawSWTableQLetters' \
| gofmt -r 'rSeq[i] -> rSeq[i].L' \
| gofmt -r 'qSeq[i] -> qSeq[i].L' \
>> sw_qletters.go

echo -e $WARNING\
> nw_letters.go
cat < nw_type.got \
| gofmt -r 'alignType -> alignLetters' \
| gofmt -r 'Type -> alphabet.Letters' \
| gofmt -r 'drawNWTableType -> drawNWTableLetters' \
>> nw_letters.go

echo -e $WARNING\
> nw_qletters.go
cat < nw_type.got \
| gofmt -r 'alignType -> alignQLetters' \
| gofmt -r 'Type -> alphabet.QLetters' \
| gofmt -r 'drawNWTableType -> drawNWTableQLetters' \
| gofmt -r 'rSeq[i] -> rSeq[i].L' \
| gofmt -r 'qSeq[i] -> qSeq[i].L' \
>> nw_qletters.go

#echo -e $WARNING\
#> nw_affine_letters.go
#cat < nw_affine_type.got \
#| gofmt -r 'alignType -> alignLetters' \
#| gofmt -r 'Type -> alphabet.Letters' \
#>> nw_affine_letters.go
#
#echo -e $WARNING\
#> nw_affine_qletters.go
#cat < nw_affine_type.got \
#| gofmt -r 'alignType -> alignQLetters' \
#| gofmt -r 'Type -> alphabet.QLetters' \
#| gofmt -r 'rSeq[i-1] -> rSeq[i-1].L' \
#| gofmt -r 'qSeq[i-1] -> qSeq[i-1].L' \
#>> nw_affine_qletters.go
