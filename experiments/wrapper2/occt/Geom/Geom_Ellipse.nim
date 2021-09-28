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
discard "forward decl of Geom_Ellipse"
type
  HandleC1C1* = Handle[GeomEllipse]

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


proc constructGeomEllipse*(e: Elips): GeomEllipse {.constructor,
    importcpp: "Geom_Ellipse(@)", header: "Geom_Ellipse.hxx".}
proc constructGeomEllipse*(a2: Ax2; majorRadius: StandardReal;
                          minorRadius: StandardReal): GeomEllipse {.constructor,
    importcpp: "Geom_Ellipse(@)", header: "Geom_Ellipse.hxx".}
proc setElips*(this: var GeomEllipse; e: Elips) {.importcpp: "SetElips",
    header: "Geom_Ellipse.hxx".}
proc setMajorRadius*(this: var GeomEllipse; majorRadius: StandardReal) {.
    importcpp: "SetMajorRadius", header: "Geom_Ellipse.hxx".}
proc setMinorRadius*(this: var GeomEllipse; minorRadius: StandardReal) {.
    importcpp: "SetMinorRadius", header: "Geom_Ellipse.hxx".}
proc elips*(this: GeomEllipse): Elips {.noSideEffect, importcpp: "Elips",
                                    header: "Geom_Ellipse.hxx".}
proc reversedParameter*(this: GeomEllipse; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_Ellipse.hxx".}
proc directrix1*(this: GeomEllipse): Ax1 {.noSideEffect, importcpp: "Directrix1",
                                       header: "Geom_Ellipse.hxx".}
proc directrix2*(this: GeomEllipse): Ax1 {.noSideEffect, importcpp: "Directrix2",
                                       header: "Geom_Ellipse.hxx".}
proc eccentricity*(this: GeomEllipse): StandardReal {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom_Ellipse.hxx".}
proc focal*(this: GeomEllipse): StandardReal {.noSideEffect, importcpp: "Focal",
    header: "Geom_Ellipse.hxx".}
proc focus1*(this: GeomEllipse): Pnt {.noSideEffect, importcpp: "Focus1",
                                   header: "Geom_Ellipse.hxx".}
proc focus2*(this: GeomEllipse): Pnt {.noSideEffect, importcpp: "Focus2",
                                   header: "Geom_Ellipse.hxx".}
proc majorRadius*(this: GeomEllipse): StandardReal {.noSideEffect,
    importcpp: "MajorRadius", header: "Geom_Ellipse.hxx".}
proc minorRadius*(this: GeomEllipse): StandardReal {.noSideEffect,
    importcpp: "MinorRadius", header: "Geom_Ellipse.hxx".}
proc parameter*(this: GeomEllipse): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "Geom_Ellipse.hxx".}
proc firstParameter*(this: GeomEllipse): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_Ellipse.hxx".}
proc lastParameter*(this: GeomEllipse): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_Ellipse.hxx".}
proc isClosed*(this: GeomEllipse): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom_Ellipse.hxx".}
proc isPeriodic*(this: GeomEllipse): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_Ellipse.hxx".}
proc d0*(this: GeomEllipse; u: StandardReal; p: var Pnt) {.noSideEffect, importcpp: "D0",
    header: "Geom_Ellipse.hxx".}
proc d1*(this: GeomEllipse; u: StandardReal; p: var Pnt; v1: var Vec) {.noSideEffect,
    importcpp: "D1", header: "Geom_Ellipse.hxx".}
proc d2*(this: GeomEllipse; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, importcpp: "D2", header: "Geom_Ellipse.hxx".}
proc d3*(this: GeomEllipse; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, importcpp: "D3", header: "Geom_Ellipse.hxx".}
proc dn*(this: GeomEllipse; u: StandardReal; n: int): Vec {.noSideEffect,
    importcpp: "DN", header: "Geom_Ellipse.hxx".}
proc transform*(this: var GeomEllipse; t: Trsf) {.importcpp: "Transform",
    header: "Geom_Ellipse.hxx".}
proc copy*(this: GeomEllipse): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_Ellipse.hxx".}
proc dumpJson*(this: GeomEllipse; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "Geom_Ellipse.hxx".}
type
  GeomEllipsebaseType* = GeomConic

proc getTypeName*(): cstring {.importcpp: "Geom_Ellipse::get_type_name(@)",
                            header: "Geom_Ellipse.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_Ellipse::get_type_descriptor(@)", header: "Geom_Ellipse.hxx".}
proc dynamicType*(this: GeomEllipse): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Ellipse.hxx".}