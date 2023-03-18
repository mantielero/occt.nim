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
let prefix = "Resource"
let packageName = "resource"
let c2nimFile = "../opencascade.c2nim"

var 
  name:string
  header:Header
  binding:Binding
  headers:seq[tuple[name:string, header:Header, binding:Binding]]


name = "Resource_ConvertUnicode.hxx"
header = newHeader(folder, name, c2nimFile )
header.comment(20,20)
header.comment(29,29)
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "Resource_DataMapOfAsciiStringAsciiString.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "Resource_DataMapOfAsciiStringExtendedString.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "Resource_FormatType.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "Resource_LexicalCompare.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "Resource_Manager.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "Resource_NoSuchResource.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "Resource_Unicode.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

