import os, osproc, strutils, strformat, glob

const
  dest = "occt"

# 1. Create group of files to wrap together
var groups = newSeq[seq[string]]()
var old = ""
var group = newSeq[string]()
for filePath in walkPattern(dest / "**" / "*.nim"):
  let (dir, name, ext) = filePath.splitFile()
  #echo dir, "   ", name & ext
  #let nameBase = name.split("_")
  #echo nameBase

  if nameBase[0] != old:
    old = nameBase[0]
    #echo old
    groups &= group
    group = newSeq[string]()
  group &= i
groups &= group
    