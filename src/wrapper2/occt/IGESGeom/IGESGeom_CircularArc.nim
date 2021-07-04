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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../gp/gp_XY, ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of IGESGeom_CircularArc"
discard "forward decl of IGESGeom_CircularArc"
type
  Handle_IGESGeom_CircularArc* = handle[IGESGeom_CircularArc]

## ! defines IGESCircularArc, Type <100> Form <0>
## ! in package IGESGeom
## ! A circular arc is a connected portion of a parent circle
## ! which consists of more than one point. The definition space
## ! coordinate system is always chosen so that the circular arc
## ! remains in a plane either coincident with or parallel to
## ! the XT, YT plane.

type
  IGESGeom_CircularArc* {.importcpp: "IGESGeom_CircularArc",
                         header: "IGESGeom_CircularArc.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_CircularArc*(): IGESGeom_CircularArc {.constructor,
    importcpp: "IGESGeom_CircularArc(@)", header: "IGESGeom_CircularArc.hxx".}
proc Init*(this: var IGESGeom_CircularArc; aZT: Standard_Real; aCenter: gp_XY;
          aStart: gp_XY; anEnd: gp_XY) {.importcpp: "Init",
                                     header: "IGESGeom_CircularArc.hxx".}
proc Center*(this: IGESGeom_CircularArc): gp_Pnt2d {.noSideEffect,
    importcpp: "Center", header: "IGESGeom_CircularArc.hxx".}
proc TransformedCenter*(this: IGESGeom_CircularArc): gp_Pnt {.noSideEffect,
    importcpp: "TransformedCenter", header: "IGESGeom_CircularArc.hxx".}
proc StartPoint*(this: IGESGeom_CircularArc): gp_Pnt2d {.noSideEffect,
    importcpp: "StartPoint", header: "IGESGeom_CircularArc.hxx".}
proc TransformedStartPoint*(this: IGESGeom_CircularArc): gp_Pnt {.noSideEffect,
    importcpp: "TransformedStartPoint", header: "IGESGeom_CircularArc.hxx".}
proc ZPlane*(this: IGESGeom_CircularArc): Standard_Real {.noSideEffect,
    importcpp: "ZPlane", header: "IGESGeom_CircularArc.hxx".}
proc EndPoint*(this: IGESGeom_CircularArc): gp_Pnt2d {.noSideEffect,
    importcpp: "EndPoint", header: "IGESGeom_CircularArc.hxx".}
proc TransformedEndPoint*(this: IGESGeom_CircularArc): gp_Pnt {.noSideEffect,
    importcpp: "TransformedEndPoint", header: "IGESGeom_CircularArc.hxx".}
proc Radius*(this: IGESGeom_CircularArc): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "IGESGeom_CircularArc.hxx".}
proc Angle*(this: IGESGeom_CircularArc): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "IGESGeom_CircularArc.hxx".}
proc Axis*(this: IGESGeom_CircularArc): gp_Dir {.noSideEffect, importcpp: "Axis",
    header: "IGESGeom_CircularArc.hxx".}
proc TransformedAxis*(this: IGESGeom_CircularArc): gp_Dir {.noSideEffect,
    importcpp: "TransformedAxis", header: "IGESGeom_CircularArc.hxx".}
proc IsClosed*(this: IGESGeom_CircularArc): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "IGESGeom_CircularArc.hxx".}
type
  IGESGeom_CircularArcbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_CircularArc::get_type_name(@)",
                              header: "IGESGeom_CircularArc.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_CircularArc::get_type_descriptor(@)",
    header: "IGESGeom_CircularArc.hxx".}
proc DynamicType*(this: IGESGeom_CircularArc): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_CircularArc.hxx".}