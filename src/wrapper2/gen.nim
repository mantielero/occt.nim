import os, osproc, strutils, strformat

const
  lib = "/usr/include/opencascade/"

# 1. Create group of files to wrap together
var groups = newSeq[seq[string]]()
var old = ""
var group = newSeq[string]()
for i in walkFiles(lib & "*.hxx"):
  let (dir, name, ext) = i.splitFile()
  let nameBase = name.split("_")
  echo nameBase
  if nameBase[0] != old:
    old = nameBase[0]
    echo old
    groups &= group
    group = newSeq[string]()
  group &= name & ext
groups &= group

# 2. Create configuration files
var cfgFiles = newSeq[string]()
for group in groups:
  if group.len > 0:
    let (dir, name, ext) = group[0].splitFile()
    var base = name.split("_")[0]
    var data = &"""[n.global]
output = occt/{base}
quotes = true

[n.include]
/usr/include/opencascade/

"""
    for file in group:
      data &= &"""
[{file}]
preprocess = true
defines = true
recurse = true

flags = "--cpp --nep1 --header"

"""
    let cfgFile = &"{base}.cfg"
    writeFile( cfgFile, data)
    cfgFiles &= cfgFile


# 3. Create files
for i in 0..<3:
#for i in 0..<cfgFiles.len:
  echo &"[{i+1}/{cfgFiles.len}] {cfgFiles[i]}"
  let result = execProcess(&"nimgen {cfgFiles[i]}")

# 4. Create big file with all the includes
var occt = """{.experimental: "codeReordering".}

{.passL: "-lTKBO".}
{.passL: "-lTKSTEP".}
{.passL: "-lTKPrim".}
{.passL: "-lTKSTEPAttr".}
{.passL: "-lTKSTEP209".}
{.passL: "-lTKSTEPBase".}
{.passL: "-lTKXSBase".}
{.passL: "-lTKShHealing".}
{.passL: "-lTKTopAlgo".}
{.passL: "-lTKGeomAlgo".}
{.passL: "-lTKBRep".}
{.passL: "-lTKGeomBase".}
{.passL: "-lTKG3d".}
{.passL: "-lTKG2d".}
{.passL: "-lTKMath".}
{.passL: "-lTKernel".}

{.passC:"-I/usr/include/opencascade" .}
{..}
"""

for group in groups:
  if group.len > 0:
    let (dir, name, ext) = group[0].splitFile()
    let base = name.split("_")[0]    
    for filename in group:
      let (dir, name, ext) = filename.splitFile()
      occt &= &"include {base}/{name}\n"

    occt &= "\n\n"

writeFile("occt/occt.nim", occt)

# 


#c2nim --cpp --header --nep1 --skipinclude --out:occt/AIS/AIS2.nim occt.c2nim /usr/include/opencascade/AIS.hxx