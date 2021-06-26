# /usr/include/opencascade/BRep_CurveRepresentation.hxx --> occt/brep/BRep_CurveRepresentation.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepcurverepresentation = "/usr/include/opencascade/BRep_CurveRepresentation.hxx"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopLoc_Location"
discard "forward decl of Geom_Surface"
discard "forward decl of Poly_Triangulation"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Poly_Polygon3D"
discard "forward decl of Poly_Polygon2D"
discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_CurveRepresentation"
type
  HandleBRepCurveRepresentation* = Handle[BRepCurveRepresentation]
  BRepCurveRepresentation* {.importcpp: "BRep_CurveRepresentation",
                            header: headerBrepcurverepresentation, bycopy.} = object of StandardTransient


proc isCurve3D*(this: BRepCurveRepresentation): StandardBoolean {.noSideEffect,
    importcpp: "IsCurve3D", header: headerBrepcurverepresentation.}
proc isCurveOnSurface*(this: BRepCurveRepresentation): StandardBoolean {.
    noSideEffect, importcpp: "IsCurveOnSurface",
    header: headerBrepcurverepresentation.}
proc isRegularity*(this: BRepCurveRepresentation): StandardBoolean {.noSideEffect,
    importcpp: "IsRegularity", header: headerBrepcurverepresentation.}
proc isCurveOnClosedSurface*(this: BRepCurveRepresentation): StandardBoolean {.
    noSideEffect, importcpp: "IsCurveOnClosedSurface",
    header: headerBrepcurverepresentation.}
proc isCurveOnSurface*(this: BRepCurveRepresentation; s: Handle[GeomSurface];
                      L: TopLocLocation): StandardBoolean {.noSideEffect,
    importcpp: "IsCurveOnSurface", header: headerBrepcurverepresentation.}
proc isRegularity*(this: BRepCurveRepresentation; s1: Handle[GeomSurface];
                  s2: Handle[GeomSurface]; l1: TopLocLocation; l2: TopLocLocation): StandardBoolean {.
    noSideEffect, importcpp: "IsRegularity", header: headerBrepcurverepresentation.}
proc isPolygon3D*(this: BRepCurveRepresentation): StandardBoolean {.noSideEffect,
    importcpp: "IsPolygon3D", header: headerBrepcurverepresentation.}
proc isPolygonOnTriangulation*(this: BRepCurveRepresentation): StandardBoolean {.
    noSideEffect, importcpp: "IsPolygonOnTriangulation",
    header: headerBrepcurverepresentation.}
proc isPolygonOnTriangulation*(this: BRepCurveRepresentation;
                              t: Handle[PolyTriangulation]; L: TopLocLocation): StandardBoolean {.
    noSideEffect, importcpp: "IsPolygonOnTriangulation",
    header: headerBrepcurverepresentation.}
proc isPolygonOnClosedTriangulation*(this: BRepCurveRepresentation): StandardBoolean {.
    noSideEffect, importcpp: "IsPolygonOnClosedTriangulation",
    header: headerBrepcurverepresentation.}
proc isPolygonOnSurface*(this: BRepCurveRepresentation): StandardBoolean {.
    noSideEffect, importcpp: "IsPolygonOnSurface",
    header: headerBrepcurverepresentation.}
proc isPolygonOnSurface*(this: BRepCurveRepresentation; s: Handle[GeomSurface];
                        L: TopLocLocation): StandardBoolean {.noSideEffect,
    importcpp: "IsPolygonOnSurface", header: headerBrepcurverepresentation.}
proc isPolygonOnClosedSurface*(this: BRepCurveRepresentation): StandardBoolean {.
    noSideEffect, importcpp: "IsPolygonOnClosedSurface",
    header: headerBrepcurverepresentation.}
proc location*(this: BRepCurveRepresentation): TopLocLocation {.noSideEffect,
    importcpp: "Location", header: headerBrepcurverepresentation.}
proc location*(this: var BRepCurveRepresentation; L: TopLocLocation) {.
    importcpp: "Location", header: headerBrepcurverepresentation.}
proc curve3D*(this: BRepCurveRepresentation): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve3D", header: headerBrepcurverepresentation.}
proc curve3D*(this: var BRepCurveRepresentation; c: Handle[GeomCurve]) {.
    importcpp: "Curve3D", header: headerBrepcurverepresentation.}
proc surface*(this: BRepCurveRepresentation): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: headerBrepcurverepresentation.}
proc pCurve*(this: BRepCurveRepresentation): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "PCurve", header: headerBrepcurverepresentation.}
proc pCurve*(this: var BRepCurveRepresentation; c: Handle[Geom2dCurve]) {.
    importcpp: "PCurve", header: headerBrepcurverepresentation.}
proc pCurve2*(this: BRepCurveRepresentation): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "PCurve2", header: headerBrepcurverepresentation.}
proc pCurve2*(this: var BRepCurveRepresentation; c: Handle[Geom2dCurve]) {.
    importcpp: "PCurve2", header: headerBrepcurverepresentation.}
proc polygon3D*(this: BRepCurveRepresentation): Handle[PolyPolygon3D] {.
    noSideEffect, importcpp: "Polygon3D", header: headerBrepcurverepresentation.}
proc polygon3D*(this: var BRepCurveRepresentation; p: Handle[PolyPolygon3D]) {.
    importcpp: "Polygon3D", header: headerBrepcurverepresentation.}
proc polygon*(this: BRepCurveRepresentation): Handle[PolyPolygon2D] {.noSideEffect,
    importcpp: "Polygon", header: headerBrepcurverepresentation.}
proc polygon*(this: var BRepCurveRepresentation; p: Handle[PolyPolygon2D]) {.
    importcpp: "Polygon", header: headerBrepcurverepresentation.}
proc polygon2*(this: BRepCurveRepresentation): Handle[PolyPolygon2D] {.noSideEffect,
    importcpp: "Polygon2", header: headerBrepcurverepresentation.}
proc polygon2*(this: var BRepCurveRepresentation; p: Handle[PolyPolygon2D]) {.
    importcpp: "Polygon2", header: headerBrepcurverepresentation.}
proc triangulation*(this: BRepCurveRepresentation): Handle[PolyTriangulation] {.
    noSideEffect, importcpp: "Triangulation", header: headerBrepcurverepresentation.}
proc polygonOnTriangulation*(this: BRepCurveRepresentation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect,
                                 importcpp: "PolygonOnTriangulation",
                                 header: headerBrepcurverepresentation.}
proc polygonOnTriangulation*(this: var BRepCurveRepresentation;
                            p: Handle[PolyPolygonOnTriangulation]) {.
    importcpp: "PolygonOnTriangulation", header: headerBrepcurverepresentation.}
proc polygonOnTriangulation2*(this: BRepCurveRepresentation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect,
                                 importcpp: "PolygonOnTriangulation2",
                                 header: headerBrepcurverepresentation.}
proc polygonOnTriangulation2*(this: var BRepCurveRepresentation;
                             p2: Handle[PolyPolygonOnTriangulation]) {.
    importcpp: "PolygonOnTriangulation2", header: headerBrepcurverepresentation.}
proc surface2*(this: BRepCurveRepresentation): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface2", header: headerBrepcurverepresentation.}
proc location2*(this: BRepCurveRepresentation): TopLocLocation {.noSideEffect,
    importcpp: "Location2", header: headerBrepcurverepresentation.}
proc continuity*(this: BRepCurveRepresentation): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: headerBrepcurverepresentation.}
proc continuity*(this: var BRepCurveRepresentation; c: GeomAbsShape) {.
    importcpp: "Continuity", header: headerBrepcurverepresentation.}
proc copy*(this: BRepCurveRepresentation): Handle[BRepCurveRepresentation] {.
    noSideEffect, importcpp: "Copy", header: headerBrepcurverepresentation.}
proc dumpJson*(this: BRepCurveRepresentation; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: headerBrepcurverepresentation.}
type
  BRepCurveRepresentationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRep_CurveRepresentation::get_type_name(@)",
                            header: headerBrepcurverepresentation.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_CurveRepresentation::get_type_descriptor(@)",
    header: headerBrepcurverepresentation.}
proc dynamicType*(this: BRepCurveRepresentation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerBrepcurverepresentation.}