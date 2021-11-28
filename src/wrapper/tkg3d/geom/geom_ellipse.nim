##  Created on: 1993-03-10
##  Created by: JCV
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Ellipse"
type
  HandleGeomEllipse* = Handle[GeomEllipse]

## ! Describes an ellipse in 3D space.
## ! An ellipse is defined by its major and minor radii and,
## ! as with any conic curve, is positioned in space with a
## ! right-handed coordinate system (gp_Ax2 object) where:
## ! - the origin is the center of the ellipse,
## ! - the "X Direction" defines the major axis, and
## ! - the "Y Direction" defines the minor axis.
## ! The origin, "X Direction" and "Y Direction" of this
## ! coordinate system define the plane of the ellipse. The
## ! coordinate system is the local coordinate system of the ellipse.
## ! The "main Direction" of this coordinate system is the
## ! vector normal to the plane of the ellipse. The axis, of
## ! which the origin and unit vector are respectively the
## ! origin and "main Direction" of the local coordinate
## ! system, is termed the "Axis" or "main Axis" of the ellipse.
## ! The "main Direction" of the local coordinate system
## ! gives an explicit orientation to the ellipse (definition of
## ! the trigonometric sense), determining the direction in
## ! which the parameter increases along the ellipse.
## ! The Geom_Ellipse ellipse is parameterized by an angle:
## ! P(U) = O + MajorRad*Cos(U)*XDir + MinorRad*Sin(U)*YDir
## ! where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - MajorRad and MinorRad are the major and minor radii of the ellipse.
## ! The "X Axis" of the local coordinate system therefore
## ! defines the origin of the parameter of the ellipse.
## ! An ellipse is a closed and periodic curve. The period
## ! is 2.*Pi and the parameter range is [ 0, 2.*Pi [.

type
  GeomEllipse* {.importcpp: "Geom_Ellipse", header: "Geom_Ellipse.hxx", bycopy.} = object of GeomConic ##
                                                                                             ## !
                                                                                             ## Constructs
                                                                                             ## an
                                                                                             ## ellipse
                                                                                             ## by
                                                                                             ## conversion
                                                                                             ## of
                                                                                             ## the
                                                                                             ## gp_Elips
                                                                                             ## ellipse
                                                                                             ## E.


proc newGeomEllipse*(e: Elips): GeomEllipse {.cdecl, constructor,
    importcpp: "Geom_Ellipse(@)", dynlib: tkg3d.}
proc newGeomEllipse*(a2: Ax2; majorRadius: cfloat; minorRadius: cfloat): GeomEllipse {.
    cdecl, constructor, importcpp: "Geom_Ellipse(@)", dynlib: tkg3d.}
proc setElips*(this: var GeomEllipse; e: Elips) {.cdecl, importcpp: "SetElips",
    dynlib: tkg3d.}
proc setMajorRadius*(this: var GeomEllipse; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", dynlib: tkg3d.}
proc setMinorRadius*(this: var GeomEllipse; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", dynlib: tkg3d.}
proc elips*(this: GeomEllipse): Elips {.noSideEffect, cdecl, importcpp: "Elips",
                                    dynlib: tkg3d.}
proc reversedParameter*(this: GeomEllipse; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", dynlib: tkg3d.}
proc directrix1*(this: GeomEllipse): Ax1 {.noSideEffect, cdecl,
                                       importcpp: "Directrix1", dynlib: tkg3d.}
proc directrix2*(this: GeomEllipse): Ax1 {.noSideEffect, cdecl,
                                       importcpp: "Directrix2", dynlib: tkg3d.}
proc eccentricity*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", dynlib: tkg3d.}
proc focal*(this: GeomEllipse): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                     dynlib: tkg3d.}
proc focus1*(this: GeomEllipse): Pnt {.noSideEffect, cdecl, importcpp: "Focus1",
                                   dynlib: tkg3d.}
proc focus2*(this: GeomEllipse): Pnt {.noSideEffect, cdecl, importcpp: "Focus2",
                                   dynlib: tkg3d.}
proc majorRadius*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "MajorRadius", dynlib: tkg3d.}
proc minorRadius*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "MinorRadius", dynlib: tkg3d.}
proc parameter*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", dynlib: tkg3d.}
proc firstParameter*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkg3d.}
proc lastParameter*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkg3d.}
proc isClosed*(this: GeomEllipse): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                      dynlib: tkg3d.}
proc isPeriodic*(this: GeomEllipse): bool {.noSideEffect, cdecl,
                                        importcpp: "IsPeriodic", dynlib: tkg3d.}
proc d0*(this: GeomEllipse; u: cfloat; p: var Pnt) {.noSideEffect, cdecl, importcpp: "D0",
    dynlib: tkg3d.}
proc d1*(this: GeomEllipse; u: cfloat; p: var Pnt; v1: var Vec) {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkg3d.}
proc d2*(this: GeomEllipse; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.noSideEffect,
    cdecl, importcpp: "D2", dynlib: tkg3d.}
proc d3*(this: GeomEllipse; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, cdecl, importcpp: "D3", dynlib: tkg3d.}
proc dn*(this: GeomEllipse; u: cfloat; n: cint): Vec {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkg3d.}
proc transform*(this: var GeomEllipse; t: Trsf) {.cdecl, importcpp: "Transform",
    dynlib: tkg3d.}
proc copy*(this: GeomEllipse): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkg3d.}
proc dumpJson*(this: GeomEllipse; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkg3d.}