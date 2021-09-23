# /usr/include/opencascade/BRep_PointsOnSurface.hxx --> occt/brep/BRep_PointsOnSurface.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreppointsonsurface = "/usr/include/opencascade/BRep_PointsOnSurface.hxx"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_PointsOnSurface"
discard "forward decl of BRep_PointsOnSurface"
type
  HandleBRepPointsOnSurface* = Handle[BRepPointsOnSurface]
  BRepPointsOnSurface* {.importcpp: "BRep_PointsOnSurface",
                        header: headerBreppointsonsurface, bycopy.} = object of BRepPointRepresentation


proc surface*(this: BRepPointsOnSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: headerBreppointsonsurface.}
proc surface*(this: var BRepPointsOnSurface; s: Handle[GeomSurface]) {.
    importcpp: "Surface", header: headerBreppointsonsurface.}
proc dumpJson*(this: BRepPointsOnSurface; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBreppointsonsurface.}
type
  BRepPointsOnSurfacebaseType* = BRepPointRepresentation

proc getTypeName*(): cstring {.importcpp: "BRep_PointsOnSurface::get_type_name(@)",
                            header: headerBreppointsonsurface.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_PointsOnSurface::get_type_descriptor(@)",
    header: headerBreppointsonsurface.}
proc dynamicType*(this: BRepPointsOnSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerBreppointsonsurface.}