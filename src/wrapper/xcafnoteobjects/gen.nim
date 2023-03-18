#[
The headers can be commented like this:
header.comment(87, 87)

The bindings can be processed like:
binding.insert("Whatever")  #<-- inserts at the beginning
]#
import ../wrapperlib/ed
import std/os
import strformat, strutils, sequtils
import npeg

let folder = "/usr/include/opencascade/"
let prefix = "XCAFNoteObjects"
let packageName = "xcafnoteobjects"
let c2nimFile = "../opencascade.c2nim"

var 
  name:string
  header:Header
  binding:Binding
  headers:seq[tuple[name:string, header:Header, binding:Binding]]


name = "XCAFNoteObjects_NoteObject.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

