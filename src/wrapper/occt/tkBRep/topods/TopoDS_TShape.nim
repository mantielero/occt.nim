# /usr/include/opencascade/TopoDS_TShape.hxx --> occt/tkBRep/topods/TopoDS_TShape.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodstshape = "/usr/include/opencascade/TopoDS_TShape.hxx"
discard "forward decl of TopoDS_Iterator"
discard "forward decl of TopoDS_Builder"
type
  TopoDS_TShape* {.importcpp: "TopoDS_TShape", header: headerTopodstshape, bycopy.} = object of StandardTransient


proc free*(this: TopoDS_TShape): StandardBoolean {.noSideEffect, importcpp: "Free",
    header: headerTopodstshape.}
proc free*(this: var TopoDS_TShape; theIsFree: StandardBoolean) {.importcpp: "Free",
    header: headerTopodstshape.}
proc locked*(this: TopoDS_TShape): StandardBoolean {.noSideEffect,
    importcpp: "Locked", header: headerTopodstshape.}
proc locked*(this: var TopoDS_TShape; theIsLocked: StandardBoolean) {.
    importcpp: "Locked", header: headerTopodstshape.}
proc modified*(this: TopoDS_TShape): StandardBoolean {.noSideEffect,
    importcpp: "Modified", header: headerTopodstshape.}
proc modified*(this: var TopoDS_TShape; theIsModified: StandardBoolean) {.
    importcpp: "Modified", header: headerTopodstshape.}
proc checked*(this: TopoDS_TShape): StandardBoolean {.noSideEffect,
    importcpp: "Checked", header: headerTopodstshape.}
proc checked*(this: var TopoDS_TShape; theIsChecked: StandardBoolean) {.
    importcpp: "Checked", header: headerTopodstshape.}
proc orientable*(this: TopoDS_TShape): StandardBoolean {.noSideEffect,
    importcpp: "Orientable", header: headerTopodstshape.}
proc orientable*(this: var TopoDS_TShape; theIsOrientable: StandardBoolean) {.
    importcpp: "Orientable", header: headerTopodstshape.}
proc closed*(this: TopoDS_TShape): StandardBoolean {.noSideEffect,
    importcpp: "Closed", header: headerTopodstshape.}
proc closed*(this: var TopoDS_TShape; theIsClosed: StandardBoolean) {.
    importcpp: "Closed", header: headerTopodstshape.}
proc infinite*(this: TopoDS_TShape): StandardBoolean {.noSideEffect,
    importcpp: "Infinite", header: headerTopodstshape.}
proc infinite*(this: var TopoDS_TShape; theIsInfinite: StandardBoolean) {.
    importcpp: "Infinite", header: headerTopodstshape.}
proc convex*(this: TopoDS_TShape): StandardBoolean {.noSideEffect,
    importcpp: "Convex", header: headerTopodstshape.}
proc convex*(this: var TopoDS_TShape; theIsConvex: StandardBoolean) {.
    importcpp: "Convex", header: headerTopodstshape.}
proc shapeType*(this: TopoDS_TShape): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: headerTopodstshape.}
proc emptyCopy*(this: TopoDS_TShape): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: headerTopodstshape.}
proc nbChildren*(this: TopoDS_TShape): StandardInteger {.noSideEffect,
    importcpp: "NbChildren", header: headerTopodstshape.}
proc dumpJson*(this: TopoDS_TShape; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerTopodstshape.}
type
  TopoDS_TShapebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TopoDS_TShape::get_type_name(@)",
                            header: headerTopodstshape.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_TShape::get_type_descriptor(@)", header: headerTopodstshape.}
proc dynamicType*(this: TopoDS_TShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTopodstshape.}
discard "forward decl of TopoDS_TShape"
type
  HandleTopoDS_TShape* = Handle[TopoDS_TShape]
