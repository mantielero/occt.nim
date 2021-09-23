# /usr/include/opencascade/TopoDS_AlertAttribute.hxx --> occt/topods/TopoDS_AlertAttribute.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodsalertattribute = "/usr/include/opencascade/TopoDS_AlertAttribute.hxx"
discard "forward decl of Message_Messenger"
type
  TopoDS_AlertAttribute* {.importcpp: "TopoDS_AlertAttribute",
                          header: headerTopodsalertattribute, bycopy.} = object of MessageAttributeStream

  TopoDS_AlertAttributebaseType* = MessageAttributeStream

proc getTypeName*(): cstring {.importcpp: "TopoDS_AlertAttribute::get_type_name(@)",
                            header: headerTopodsalertattribute.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_AlertAttribute::get_type_descriptor(@)",
    header: headerTopodsalertattribute.}
proc dynamicType*(this: TopoDS_AlertAttribute): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTopodsalertattribute.}
proc constructTopoDS_AlertAttribute*(theShape: TopoDS_Shape; theName: TCollectionAsciiString = tCollectionAsciiString()): TopoDS_AlertAttribute {.
    constructor, importcpp: "TopoDS_AlertAttribute(@)",
    header: headerTopodsalertattribute.}
proc getShape*(this: TopoDS_AlertAttribute): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape", header: headerTopodsalertattribute.}
proc send*(theMessenger: Handle[MessageMessenger]; theShape: TopoDS_Shape) {.
    importcpp: "TopoDS_AlertAttribute::Send(@)",
    header: headerTopodsalertattribute.}
proc dumpJson*(this: TopoDS_AlertAttribute; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerTopodsalertattribute.}
proc `<<`*(theMessenger: Handle[MessageMessenger]; theShape: TopoDS_Shape): var Handle[
    MessageMessenger] {.importcpp: "(# << #)", header: headerTopodsalertattribute.}