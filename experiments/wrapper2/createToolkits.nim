#[
This file creates headers grouped in toolkits.
It is probably better to use directly `gen.nim`
]#
import os, osproc, strutils, strformat, glob

const
  lib = "/usr/include/opencascade/"
  dest = "occt"
  c2nimFile = "occt.c2nim"

# 1. Create group of files to wrap together
var groups = newSeq[seq[string]]()
var old = ""
var group = newSeq[string]()
for i in walkFiles(lib & "*.hxx"):
  let (dir, name, ext) = i.splitFile()
  let nameBase = name.split("_")
  #echo nameBase
  if nameBase[0] != old:
    old = nameBase[0]
    #echo old
    groups &= group
    group = newSeq[string]()
  group &= i
groups &= group

# 2. Process the files
var cfgFiles = newSeq[string]()
for group in groups:
#for i in 0..<3:#groups.len:  
#  let group = groups[i]
  if group.len > 0:
    let (dir, name, ext) = group[0].splitFile()
    var base = name.split("_")[0]
    var outDir = &"{dest}/{base}"
    #createDir(outDir)
    for file in group:
      let (dir, name, ext) = file.splitFile()
      let data = &"c2nim --cpp --header --nep1 --skipinclude --out:{outDir}/{name}.nim {c2nimFile} {file}"
      #echo data
      #let result = execCmdEx(data)



# 3. Create big file with all the includes
var occt = &"""{{.experimental: "codeReordering".}}
{{.experimental: "callOperator".}}

{{.passL: "-lTKBO".}}
{{.passL: "-lTKSTEP".}}
{{.passL: "-lTKPrim".}}
{{.passL: "-lTKSTEPAttr".}}
{{.passL: "-lTKSTEP209".}}
{{.passL: "-lTKSTEPBase".}}
{{.passL: "-lTKXSBase".}}
{{.passL: "-lTKShHealing".}}
{{.passL: "-lTKTopAlgo".}}
{{.passL: "-lTKGeomAlgo".}}
{{.passL: "-lTKBRep".}}
{{.passL: "-lTKGeomBase".}}
{{.passL: "-lTKG3d".}}
{{.passL: "-lTKG2d".}}
{{.passL: "-lTKMath".}}
{{.passL: "-lTKernel".}}

{{.passC:"-I{lib}" .}}

"""
type
  Group = object
    name:string
    prefix:seq[string]
    header:string

let
  tKernel = Group(
    name:"tKernel",
    prefix: @["FSD", "Message", "NCollection", "OSD", "Plugin", "Quantity", 
              "Resource", "Standard", "StdFail", "Storage", "TColStd", 
              "TCollection", "TShort", "Units", "UnitsAPI"],
    header: &"""{{.experimental: "codeReordering".}}
#{{.experimental: "callOperator".}}

{{.passL: "-lTKernel".}}

{{.passC:"-I{lib}" .}}


"""
  )

  tkMath = Group(
    name:"tkMath",
    prefix: @["BSplCLib", "BSplSLib", "BVH", "Bnd", "CSLib", "Convert",
              "ElCLib", "ElSLib", "Expr", "ExprIntrp", "GeomAbs", "PLib",
              "Poly", "Precision", "TColgp", "TopLoc", "gp", "math"],
    header: &"""#{{.experimental: "codeReordering".}}
#{{.experimental: "callOperator".}}

{{.passL: "-lTKMath".}}

{{.passC:"-I{lib}" .}}
import tKernel

"""
  )
  groupOfToolkits:seq[Group] = @[tKernel, tkMath]

for tk in groupOfToolkits:
  var tkTxt = tk.header
  for prefix in tk.prefix:

    for group in groups:
      if group.len > 0:
        let (dir, name, ext) = group[0].splitFile()
        let base = name.split("_")[0]          
        if base == prefix:
          for filename in group:
            let (dir, name, ext) = filename.splitFile()
            let fname = &"{dest}/{base}/{name}.nim"
            if fname.fileExists:
              tkTxt &= &"import {base}/{name}\n"
              tkTxt &= &"export {name}\n"                
            else:
              tkTxt &= &"# import {base}/{name}\n"
              tkTxt &= &"# export {name}\n"  
          tkTxt &= "\n\n"
  writeFile(&"occt/{tk.name}.nim", tkTxt)



for group in groups:
  if group.len > 0:
    let (dir, name, ext) = group[0].splitFile()
    let base = name.split("_")[0]    

    for filename in group:
      let (dir, name, ext) = filename.splitFile()
      let fname = &"{dest}/{base}/{name}.nim"
      if fname.fileExists:
        occt &= &"import {base}/{name}\n"
        occt &= &"export {name}\n"        
      else:
        occt &= &"# import {base}/{name}\n"
        occt &= &"# export {name}\n"         

    occt &= "\n\n"
#echo occt
writeFile("occt/occt.nim", occt)



