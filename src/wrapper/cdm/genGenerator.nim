#[
This file:
1. Copy files from /usr/include/opencascade that start with the `prefix`
2. Generates a file  
]#
import ed
import std/os
import strformat, strutils, sequtils
import npeg

let folder = "/usr/include/opencascade/"
let prefix = "CDM"
let packageName = "cdm"
let c2nimFile = packageName & ".c2nim"
# --------------------------------------
# 1. Print the filenames to be processed
# --------------------------------------
#import compiler/parser # https://stackoverflow.com/questions/32487507/nim-code-parser




iterator getFileList(folder, startsWith, extension:string):string =
  var pattern = folder  / startsWith & &"*.{extension}"
  for i in walkFiles(pattern):
    yield i


# Equivalent to something like: # ls /usr/include/opencascade/Aspect*.hxx | cut -c 26-
proc main =
  var output = &"""
#[
The headers can be commented like this:
header.comment(87, 87)

The bindings can be processed like:
binding.insert("Whatever")  #<-- inserts at the beginning
]#
import ed
import std/os
import strformat, strutils, sequtils
import npeg

let folder = "/usr/include/opencascade/"
let prefix = "{prefix}"
let packageName = "{packageName}"
let c2nimFile = "../opencascade.c2nim"

var 
  name:string
  header:Header
  binding:Binding
  headers:seq[tuple[name:string, header:Header, binding:Binding]]


"""

  for fname in getFileList( folder, prefix, "hxx"):
    output &= &"""
name = "{fname.rsplit('/',1)[1]}"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

"""

    fname.copyFileToDir("./")
  #echo output
  "gen.nim".writeFile(output)



main()




