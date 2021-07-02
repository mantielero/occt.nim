##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Kiran )
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

discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of IGESGeom_CircularArc"
discard "forward decl of IGESGeom_CircularArc"
type
  HandleIGESGeomCircularArc* = Handle[IGESGeomCircularArc]

## ! defines IGESCircularArc, Type <100> Form <0>
## ! in package IGESGeom
## ! A circular arc is a connected portion of a parent circle
## ! which consists of more than one point. The definition space
## ! coordinate system is always chosen so that the circular arc
## ! remains in a plane either coincident with or parallel to
## ! the XT, YT plane.

type
  IGESGeomCircularArc* {.importcpp: "IGESGeom_CircularArc",
                        header: "IGESGeom_CircularArc.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomCircularArc*(): IGESGeomCircularArc {.constructor,
    importcpp: "IGESGeom_CircularArc(@)", header: "IGESGeom_CircularArc.hxx".}
proc init*(this: var IGESGeomCircularArc; aZT: StandardReal; aCenter: GpXY;
          aStart: GpXY; anEnd: GpXY) {.importcpp: "Init",
                                   header: "IGESGeom_CircularArc.hxx".}
proc center*(this: IGESGeomCircularArc): GpPnt2d {.noSideEffect, importcpp: "Center",
    header: "IGESGeom_CircularArc.hxx".}
proc transformedCenter*(this: IGESGeomCircularArc): GpPnt {.noSideEffect,
    importcpp: "TransformedCenter", header: "IGESGeom_CircularArc.hxx".}
proc startPoint*(this: IGESGeomCircularArc): GpPnt2d {.noSideEffect,
    importcpp: "StartPoint", header: "IGESGeom_CircularArc.hxx".}
proc transformedStartPoint*(this: IGESGeomCircularArc): GpPnt {.noSideEffect,
    importcpp: "TransformedStartPoint", header: "IGESGeom_CircularArc.hxx".}
proc zPlane*(this: IGESGeomCircularArc): StandardReal {.noSideEffect,
    importcpp: "ZPlane", header: "IGESGeom_CircularArc.hxx".}
proc endPoint*(this: IGESGeomCircularArc): GpPnt2d {.noSideEffect,
    importcpp: "EndPoint", header: "IGESGeom_CircularArc.hxx".}
proc transformedEndPoint*(this: IGESGeomCircularArc): GpPnt {.noSideEffect,
    importcpp: "TransformedEndPoint", header: "IGESGeom_CircularArc.hxx".}
proc radius*(this: IGESGeomCircularArc): StandardReal {.noSideEffect,
    importcpp: "Radius", header: "IGESGeom_CircularArc.hxx".}
proc angle*(this: IGESGeomCircularArc): StandardReal {.noSideEffect,
    importcpp: "Angle", header: "IGESGeom_CircularArc.hxx".}
proc axis*(this: IGESGeomCircularArc): GpDir {.noSideEffect, importcpp: "Axis",
    header: "IGESGeom_CircularArc.hxx".}
proc transformedAxis*(this: IGESGeomCircularArc): GpDir {.noSideEffect,
    importcpp: "TransformedAxis", header: "IGESGeom_CircularArc.hxx".}
proc isClosed*(this: IGESGeomCircularArc): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "IGESGeom_CircularArc.hxx".}
type
  IGESGeomCircularArcbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_CircularArc::get_type_name(@)",
                            header: "IGESGeom_CircularArc.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_CircularArc::get_type_descriptor(@)",
    header: "IGESGeom_CircularArc.hxx".}
proc dynamicType*(this: IGESGeomCircularArc): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_CircularArc.hxx".}

