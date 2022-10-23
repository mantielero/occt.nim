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


proc newGeomEllipse*(e: ElipsObj): GeomEllipse {.cdecl, constructor,
    importcpp: "Geom_Ellipse(@)", header: "Geom_Ellipse.hxx".}
proc newGeomEllipse*(a2: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat): GeomEllipse {.
    cdecl, constructor, importcpp: "Geom_Ellipse(@)", header: "Geom_Ellipse.hxx".}
proc setElips*(this: var GeomEllipse; e: ElipsObj) {.cdecl, importcpp: "SetElips",
    header: "Geom_Ellipse.hxx".}
proc setMajorRadius*(this: var GeomEllipse; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "Geom_Ellipse.hxx".}
proc setMinorRadius*(this: var GeomEllipse; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "Geom_Ellipse.hxx".}
proc elips*(this: GeomEllipse): ElipsObj {.noSideEffect, cdecl, importcpp: "Elips",
                                    header: "Geom_Ellipse.hxx".}
proc reversedParameter*(this: GeomEllipse; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", header: "Geom_Ellipse.hxx".}
proc directrix1*(this: GeomEllipse): Ax1Obj {.noSideEffect, cdecl,
                                       importcpp: "Directrix1", header: "Geom_Ellipse.hxx".}
proc directrix2*(this: GeomEllipse): Ax1Obj {.noSideEffect, cdecl,
                                       importcpp: "Directrix2", header: "Geom_Ellipse.hxx".}
proc eccentricity*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", header: "Geom_Ellipse.hxx".}
proc focal*(this: GeomEllipse): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                     header: "Geom_Ellipse.hxx".}
proc focus1*(this: GeomEllipse): PntObj {.noSideEffect, cdecl, importcpp: "Focus1",
                                   header: "Geom_Ellipse.hxx".}
proc focus2*(this: GeomEllipse): PntObj {.noSideEffect, cdecl, importcpp: "Focus2",
                                   header: "Geom_Ellipse.hxx".}
proc majorRadius*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "MajorRadius", header: "Geom_Ellipse.hxx".}
proc minorRadius*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "MinorRadius", header: "Geom_Ellipse.hxx".}
proc parameter*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", header: "Geom_Ellipse.hxx".}
proc firstParameter*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom_Ellipse.hxx".}
proc lastParameter*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom_Ellipse.hxx".}
proc isClosed*(this: GeomEllipse): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                      header: "Geom_Ellipse.hxx".}
proc isPeriodic*(this: GeomEllipse): bool {.noSideEffect, cdecl,
                                        importcpp: "IsPeriodic", header: "Geom_Ellipse.hxx".}
proc d0*(this: GeomEllipse; u: cfloat; p: var PntObj) {.noSideEffect, cdecl, importcpp: "D0",
    header: "Geom_Ellipse.hxx".}
proc d1*(this: GeomEllipse; u: cfloat; p: var PntObj; v1: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Geom_Ellipse.hxx".}
proc d2*(this: GeomEllipse; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj) {.noSideEffect,
    cdecl, importcpp: "D2", header: "Geom_Ellipse.hxx".}
proc d3*(this: GeomEllipse; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj; v3: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D3", header: "Geom_Ellipse.hxx".}
proc dn*(this: GeomEllipse; u: cfloat; n: cint): VecObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom_Ellipse.hxx".}
proc transform*(this: var GeomEllipse; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_Ellipse.hxx".}
proc copy*(this: GeomEllipse): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_Ellipse.hxx".}
proc dumpJson*(this: GeomEllipse; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_Ellipse.hxx".}