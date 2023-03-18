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
let prefix = "TDF"
let packageName = "tdf"
let c2nimFile = "../opencascade.c2nim"

var 
  name:string
  header:Header
  binding:Binding
  headers:seq[tuple[name:string, header:Header, binding:Binding]]


name = "TDF.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_Attribute.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_AttributeArray1.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_AttributeDataMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_AttributeDelta.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_AttributeDeltaList.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_AttributeDoubleMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_AttributeIndexedMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_AttributeIterator.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_AttributeList.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_AttributeMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_AttributeSequence.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_ChildIDIterator.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_ChildIterator.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_ClosureMode.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_ClosureTool.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_ComparisonTool.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_CopyLabel.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_CopyTool.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_Data.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DataMapIteratorOfAttributeDataMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DataMapIteratorOfLabelDataMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DataMapIteratorOfLabelIntegerMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DataSet.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DefaultDeltaOnModification.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DefaultDeltaOnRemoval.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_Delta.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DeltaList.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DeltaOnAddition.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DeltaOnForget.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DeltaOnModification.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DeltaOnRemoval.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DeltaOnResume.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DerivedAttribute.hxx"
header = newHeader(folder, name, c2nimFile )
header.comment(25, 46)
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DoubleMapIteratorOfAttributeDoubleMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DoubleMapIteratorOfGUIDProgIDMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_DoubleMapIteratorOfLabelDoubleMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_GUIDProgIDMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_HAllocator.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_HAttributeArray1.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_IDFilter.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_IDList.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_IDMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_Label.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_LabelDataMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_LabelDoubleMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_LabelIndexedMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_LabelIntegerMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_LabelList.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_LabelMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_LabelMapHasher.hxx"
header = newHeader(folder, name, c2nimFile )
header.comment(31,31)
header.comment(39,39)
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_LabelNode.hxx"
header = newHeader(folder, name, c2nimFile )
header.comment(170,170)
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_LabelNodePtr.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_LabelSequence.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_ListIteratorOfAttributeDeltaList.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_ListIteratorOfAttributeList.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_ListIteratorOfDeltaList.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_ListIteratorOfIDList.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_ListIteratorOfLabelList.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_MapIteratorOfAttributeMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_MapIteratorOfIDMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_MapIteratorOfLabelMap.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_Reference.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_RelocationTable.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_TagSource.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_Tool.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "TDF_Transaction.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

