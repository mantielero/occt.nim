#!/usr/bin/env nim
#[
This file aims to process all files converting all `dynlib` references into `header` ones.

The reason for this is that it seems that `dynlib` is not working properly with C++
]#


import std/strutils, std/os

proc executeGenerators() =
  # Execute all generators
  let cwd = getCurrentDir()
  for i in walkDirRec("./"):
    var (dir, name, ext) = splitFile(i)
    if name == "gen" and ext == ".nims":
      cd(dir)
      exec "./gen.nims"
      cd(cwd)

proc getPackageName(txt:string):string =
  echo "==========="
  echo txt
  var lines = txt.splitLines
  var pkg:string = ""
  if "let packageName" in txt:
    for line in lines:
      if "let packageName" in line:
        var tmp = line.split("\"")[1]
        pkg = tmp.rsplit("\"")[0]
  elif "let c2nimFile" in txt:
    for line in lines:
      if "let c2nimFile" in line:
        var tmp = line.split("\"")[1]
        pkg = tmp.rsplit("\"")[0]
        pkg = pkg.split(".c2nim")[0]  

  if pkg == "":
    echo "ERROR"
  return pkg

proc readDynlib(c2nim:string):string =
  #echo "--> ", c2nim
  var txt = readFile( c2nim ) 
  var lines = txt.splitLines
  var dynlib:string
  for line in lines[0 .. 5]:
    if "#dynlib" in line:
      var tmp = line.split("#dynlib")[1]
      dynlib = tmp.strip()
  return dynlib

proc processNimfile(filename, c2nim, headerFilename: string) =
  #echo "===> ", filename
  var nim = readFile( filename)
  var dlib = "dynlib: " & c2nim
  var header = "header: \"" & headerFilename & "\""
  if dlib in nim:
    nim = nim.replace(dlib, header)
    writeFile(filename, nim)  



# 1. Create the bindings
executeGenerators()

# 2. 

#let cwd = getCurrentDir()
for i in walkDirRec("./"):
  var (dir, name, ext) = splitFile(i)
  if name == "gen" and ext == ".nims":
    echo "----> ", i
    var txt = readFile( dir / name & ext ) 
    var pkgName = getPackageName(txt)
    var c2nim = readDynlib( dir / pkgName & ".c2nim" )
    var lines = txt.splitLines
    for line in lines:
      if line.startsWith("genFiles"):
        var tmp = line.split("genFiles(\"")[1]
        tmp = tmp.rsplit("\")")[0]
        tmp = tmp.rsplit("\",")[0]
        var headerFilename = tmp & ".hxx"
        #echo headerFilename
        var nimFilename = dir / tmp.toLower & ".nim"
        echo nimFilename
        #echo pkgName, " -> ", c2nim

        # Open .nim file and replace the dynlib
        processNimfile(nimFilename, c2nim, headerFilename)


    #cd(dir)
    #exec "./gen.nims"
    #cd(cwd)