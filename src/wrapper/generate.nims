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

proc getPackageName(filename:string):string =
  let txt = readFile(filename)
  let lines = txt.splitLines
  for line in lines:
    if "let packageName" in line:
      var tmp = line.split("\"")[1]
      return tmp.rsplit("\"")[0]
    elif "let c2nimFile" in line:
      var tmp = line.split("\"")[1]
      tmp = tmp.rsplit("\"")[0]
      return tmp.split(".c2nim")[0]  

  return ""

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

proc getPackages(filename:string):seq[tuple[header:string,nim:string]] =
  var (dir, name, ext) = splitFile(filename)
  let txt = readFile(filename)
  let lines = txt.splitLines
  var files:seq[tuple[header:string,nim:string]]
  for line in lines:
    if line.startsWith("genFiles"):
      var tmp = line.split("genFiles(\"")[1]
      tmp = tmp.rsplit("\")")[0]
      tmp = tmp.rsplit("\",")[0]

      files &= (tmp & ".hxx",  dir / tmp.toLower & ".nim")

  return files




# 1. Create the bindings
#executeGenerators()

# 2. 
for i in walkDirRec("./"):
  var (dir, name, ext) = splitFile(i)
  if name == "gen" and ext == ".nims":
    echo "Processing: ", i
    #var txt = readFile( i ) 
    var pkgName = getPackageName(i)
    echo "  - package name: ", pkgName
    var c2nim = readDynlib( dir / pkgName & ".c2nim" )
    echo "  - dynlib: ", c2nim
    #var lines = txt.splitLines
    # for line in lines:
    #   if line.startsWith("genFiles"):
    #     var tmp = line.split("genFiles(\"")[1]
    #     tmp = tmp.rsplit("\")")[0]
    #     tmp = tmp.rsplit("\",")[0]
    #     var headerFilename = tmp & ".hxx"
    #     #echo headerFilename
    #     var nimFilename = dir / tmp.toLower & ".nim"
    #     echo nimFilename
    #     #echo pkgName, " -> ", c2nim
    var files = getPackages(i)
    # Open .nim file and replace the dynlib
    for f in files:
      let nimFilename = f[1]
      let headerFilename = f[0]
      echo "    - nim filename: ", nimFilename
      processNimfile(nimFilename, c2nim, headerFilename)


