##  Created on: 1993-03-24
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
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_Ellipse"
discard "forward decl of Geom2d_Ellipse"

type
  Geom2dEllipse* {.importcpp: "Geom2d_Ellipse", header: "Geom2d_Ellipse.hxx", bycopy.} = object of Geom2dConic ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## an
                                                                                                     ## ellipse
                                                                                                     ## by
                                                                                                     ## conversion
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## gp_Elips2d
                                                                                                     ## ellipse
                                                                                                     ## E.


type
  HandleGeom2dEllipse* = Handle[Geom2dEllipse]

## ! Describes an ellipse in the plane (2D space).
## ! An ellipse is defined by its major and minor radii and,
## ! as with any conic curve, is positioned in the plane
## ! with a coordinate system (gp_Ax22d object) where:
## ! - the origin is the center of the ellipse,
## ! - the "X Direction" defines the major axis, and
## ! - the "Y Direction" defines the minor axis.
## ! This coordinate system is the local coordinate system of the ellipse.
## ! The orientation (direct or indirect) of the local
## ! coordinate system gives an explicit orientation to the
## ! ellipse, determining the direction in which the
## ! parameter increases along the ellipse.
## ! The Geom2d_Ellipse ellipse is parameterized by an angle:
## ! P(U) = O + MajorRad*Cos(U)*XDir + MinorRad*Sin(U)*YDir
## ! where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - MajorRad and MinorRad are the major and
## ! minor radii of the ellipse.
## ! The "X Axis" of the local coordinate system therefore
## ! defines the origin of the parameter of the ellipse.
## ! An ellipse is a closed and periodic curve. The period
## ! is 2.*Pi and the parameter range is [ 0,2.*Pi [.
## ! See Also
## ! GCE2d_MakeEllipse which provides functions for
## ! more complex ellipse constructions
## ! gp_Ax22d
## ! gp_Elips2d for an equivalent, non-parameterized data structure

type
  Geom2dEllipsebaseType* = Geom2dConic

proc constructGeom2dEllipse*(e: Elips2d): Geom2dEllipse {.constructor,
    importcpp: "Geom2d_Ellipse(@)", header: "Geom2d_Ellipse.hxx".}
proc constructGeom2dEllipse*(majorAxis: Ax2d; majorRadius: StandardReal;
                            minorRadius: StandardReal;
                            sense: StandardBoolean = true): Geom2dEllipse {.
    constructor, importcpp: "Geom2d_Ellipse(@)", header: "Geom2d_Ellipse.hxx".}
proc constructGeom2dEllipse*(axis: Ax22d; majorRadius: StandardReal;
                            minorRadius: StandardReal): Geom2dEllipse {.
    constructor, importcpp: "Geom2d_Ellipse(@)", header: "Geom2d_Ellipse.hxx".}
proc setElips2d*(this: var Geom2dEllipse; e: Elips2d) {.importcpp: "SetElips2d",
    header: "Geom2d_Ellipse.hxx".}
proc setMajorRadius*(this: var Geom2dEllipse; majorRadius: StandardReal) {.
    importcpp: "SetMajorRadius", header: "Geom2d_Ellipse.hxx".}
proc setMinorRadius*(this: var Geom2dEllipse; minorRadius: StandardReal) {.
    importcpp: "SetMinorRadius", header: "Geom2d_Ellipse.hxx".}
proc elips2d*(this: Geom2dEllipse): Elips2d {.noSideEffect, importcpp: "Elips2d",
    header: "Geom2d_Ellipse.hxx".}
proc reversedParameter*(this: Geom2dEllipse; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom2d_Ellipse.hxx".}
proc directrix1*(this: Geom2dEllipse): Ax2d {.noSideEffect, importcpp: "Directrix1",
    header: "Geom2d_Ellipse.hxx".}
proc directrix2*(this: Geom2dEllipse): Ax2d {.noSideEffect, importcpp: "Directrix2",
    header: "Geom2d_Ellipse.hxx".}
proc eccentricity*(this: Geom2dEllipse): StandardReal {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom2d_Ellipse.hxx".}
proc focal*(this: Geom2dEllipse): StandardReal {.noSideEffect, importcpp: "Focal",
    header: "Geom2d_Ellipse.hxx".}
proc focus1*(this: Geom2dEllipse): Pnt2d {.noSideEffect, importcpp: "Focus1",
                                       header: "Geom2d_Ellipse.hxx".}
proc focus2*(this: Geom2dEllipse): Pnt2d {.noSideEffect, importcpp: "Focus2",
                                       header: "Geom2d_Ellipse.hxx".}
proc majorRadius*(this: Geom2dEllipse): StandardReal {.noSideEffect,
    importcpp: "MajorRadius", header: "Geom2d_Ellipse.hxx".}
proc minorRadius*(this: Geom2dEllipse): StandardReal {.noSideEffect,
    importcpp: "MinorRadius", header: "Geom2d_Ellipse.hxx".}
proc parameter*(this: Geom2dEllipse): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "Geom2d_Ellipse.hxx".}
proc firstParameter*(this: Geom2dEllipse): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_Ellipse.hxx".}
proc lastParameter*(this: Geom2dEllipse): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_Ellipse.hxx".}
proc isClosed*(this: Geom2dEllipse): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2d_Ellipse.hxx".}
proc isPeriodic*(this: Geom2dEllipse): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2d_Ellipse.hxx".}
proc d0*(this: Geom2dEllipse; u: StandardReal; p: var Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2d_Ellipse.hxx".}
proc d1*(this: Geom2dEllipse; u: StandardReal; p: var Pnt2d; v1: var Vec2d) {.noSideEffect,
    importcpp: "D1", header: "Geom2d_Ellipse.hxx".}
proc d2*(this: Geom2dEllipse; u: StandardReal; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, importcpp: "D2", header: "Geom2d_Ellipse.hxx".}
proc d3*(this: Geom2dEllipse; u: StandardReal; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, importcpp: "D3", header: "Geom2d_Ellipse.hxx".}
proc dn*(this: Geom2dEllipse; u: StandardReal; n: int): Vec2d {.noSideEffect,
    importcpp: "DN", header: "Geom2d_Ellipse.hxx".}
proc transform*(this: var Geom2dEllipse; t: Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_Ellipse.hxx".}
proc copy*(this: Geom2dEllipse): Handle[Geom2dGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_Ellipse.hxx".}
proc dumpJson*(this: Geom2dEllipse; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom2d_Ellipse.hxx".}

#[ 
proc getTypeName*(): cstring {.importcpp: "Geom2d_Ellipse::get_type_name(@)",
                            header: "Geom2d_Ellipse.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom2d_Ellipse::get_type_descriptor(@)",
    header: "Geom2d_Ellipse.hxx".}
proc dynamicType*(this: Geom2dEllipse): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Ellipse.hxx".} ]#