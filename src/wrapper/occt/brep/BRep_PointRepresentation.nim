# /usr/include/opencascade/BRep_PointRepresentation.hxx --> occt/brep/BRep_PointRepresentation.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreppointrepresentation = "/usr/include/opencascade/BRep_PointRepresentation.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopLoc_Location"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of BRep_PointRepresentation"
discard "forward decl of BRep_PointRepresentation"
type
  HandleBRepPointRepresentation* = Handle[BRepPointRepresentation]
  BRepPointRepresentation* {.importcpp: "BRep_PointRepresentation",
                            header: headerBreppointrepresentation, bycopy.} = object of StandardTransient


proc isPointOnCurve*(this: BRepPointRepresentation): StandardBoolean {.noSideEffect,
    importcpp: "IsPointOnCurve", header: headerBreppointrepresentation.}
proc isPointOnCurveOnSurface*(this: BRepPointRepresentation): StandardBoolean {.
    noSideEffect, importcpp: "IsPointOnCurveOnSurface",
    header: headerBreppointrepresentation.}
proc isPointOnSurface*(this: BRepPointRepresentation): StandardBoolean {.
    noSideEffect, importcpp: "IsPointOnSurface",
    header: headerBreppointrepresentation.}
proc isPointOnCurve*(this: BRepPointRepresentation; c: Handle[GeomCurve];
                    L: TopLocLocation): StandardBoolean {.noSideEffect,
    importcpp: "IsPointOnCurve", header: headerBreppointrepresentation.}
proc isPointOnCurveOnSurface*(this: BRepPointRepresentation;
                             pc: Handle[Geom2dCurve]; s: Handle[GeomSurface];
                             L: TopLocLocation): StandardBoolean {.noSideEffect,
    importcpp: "IsPointOnCurveOnSurface", header: headerBreppointrepresentation.}
proc isPointOnSurface*(this: BRepPointRepresentation; s: Handle[GeomSurface];
                      L: TopLocLocation): StandardBoolean {.noSideEffect,
    importcpp: "IsPointOnSurface", header: headerBreppointrepresentation.}
proc location*(this: BRepPointRepresentation): TopLocLocation {.noSideEffect,
    importcpp: "Location", header: headerBreppointrepresentation.}
proc location*(this: var BRepPointRepresentation; L: TopLocLocation) {.
    importcpp: "Location", header: headerBreppointrepresentation.}
proc parameter*(this: BRepPointRepresentation): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: headerBreppointrepresentation.}
proc parameter*(this: var BRepPointRepresentation; p: StandardReal) {.
    importcpp: "Parameter", header: headerBreppointrepresentation.}
proc parameter2*(this: BRepPointRepresentation): StandardReal {.noSideEffect,
    importcpp: "Parameter2", header: headerBreppointrepresentation.}
proc parameter2*(this: var BRepPointRepresentation; p: StandardReal) {.
    importcpp: "Parameter2", header: headerBreppointrepresentation.}
proc curve*(this: BRepPointRepresentation): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve", header: headerBreppointrepresentation.}
proc curve*(this: var BRepPointRepresentation; c: Handle[GeomCurve]) {.
    importcpp: "Curve", header: headerBreppointrepresentation.}
proc pCurve*(this: BRepPointRepresentation): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "PCurve", header: headerBreppointrepresentation.}
proc pCurve*(this: var BRepPointRepresentation; c: Handle[Geom2dCurve]) {.
    importcpp: "PCurve", header: headerBreppointrepresentation.}
proc surface*(this: BRepPointRepresentation): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: headerBreppointrepresentation.}
proc surface*(this: var BRepPointRepresentation; s: Handle[GeomSurface]) {.
    importcpp: "Surface", header: headerBreppointrepresentation.}
proc dumpJson*(this: BRepPointRepresentation; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBreppointrepresentation.}
type
  BRepPointRepresentationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRep_PointRepresentation::get_type_name(@)",
                            header: headerBreppointrepresentation.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_PointRepresentation::get_type_descriptor(@)",
    header: headerBreppointrepresentation.}
proc dynamicType*(this: BRepPointRepresentation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerBreppointrepresentation.}