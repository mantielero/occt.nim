##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Niraj RANGWALA )
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../gp/gp_XYZ, ../Standard/Standard_Real, ../TColStd/TColStd_HArray1OfInteger,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDraw_CircArraySubfigure"
discard "forward decl of IGESDraw_CircArraySubfigure"
type
  Handle_IGESDraw_CircArraySubfigure* = handle[IGESDraw_CircArraySubfigure]

## ! Defines IGES Circular Array Subfigure Instance Entity,
## ! Type <414> Form Number <0> in package IGESDraw
## !
## ! Used to produce copies of object called the base entity,
## ! arranging them around the edge of an imaginary circle
## ! whose center and radius are specified

type
  IGESDraw_CircArraySubfigure* {.importcpp: "IGESDraw_CircArraySubfigure",
                                header: "IGESDraw_CircArraySubfigure.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDraw_CircArraySubfigure*(): IGESDraw_CircArraySubfigure {.
    constructor, importcpp: "IGESDraw_CircArraySubfigure(@)",
    header: "IGESDraw_CircArraySubfigure.hxx".}
proc Init*(this: var IGESDraw_CircArraySubfigure;
          aBase: handle[IGESData_IGESEntity]; aNumLocs: Standard_Integer;
          aCenter: gp_XYZ; aRadius: Standard_Real; aStAngle: Standard_Real;
          aDelAngle: Standard_Real; aFlag: Standard_Integer;
          allNumPos: handle[TColStd_HArray1OfInteger]) {.importcpp: "Init",
    header: "IGESDraw_CircArraySubfigure.hxx".}
proc BaseEntity*(this: IGESDraw_CircArraySubfigure): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "BaseEntity",
    header: "IGESDraw_CircArraySubfigure.hxx".}
proc NbLocations*(this: IGESDraw_CircArraySubfigure): Standard_Integer {.
    noSideEffect, importcpp: "NbLocations",
    header: "IGESDraw_CircArraySubfigure.hxx".}
proc CenterPoint*(this: IGESDraw_CircArraySubfigure): gp_Pnt {.noSideEffect,
    importcpp: "CenterPoint", header: "IGESDraw_CircArraySubfigure.hxx".}
proc TransformedCenterPoint*(this: IGESDraw_CircArraySubfigure): gp_Pnt {.
    noSideEffect, importcpp: "TransformedCenterPoint",
    header: "IGESDraw_CircArraySubfigure.hxx".}
proc CircleRadius*(this: IGESDraw_CircArraySubfigure): Standard_Real {.noSideEffect,
    importcpp: "CircleRadius", header: "IGESDraw_CircArraySubfigure.hxx".}
proc StartAngle*(this: IGESDraw_CircArraySubfigure): Standard_Real {.noSideEffect,
    importcpp: "StartAngle", header: "IGESDraw_CircArraySubfigure.hxx".}
proc DeltaAngle*(this: IGESDraw_CircArraySubfigure): Standard_Real {.noSideEffect,
    importcpp: "DeltaAngle", header: "IGESDraw_CircArraySubfigure.hxx".}
proc ListCount*(this: IGESDraw_CircArraySubfigure): Standard_Integer {.noSideEffect,
    importcpp: "ListCount", header: "IGESDraw_CircArraySubfigure.hxx".}
proc DisplayFlag*(this: IGESDraw_CircArraySubfigure): Standard_Boolean {.
    noSideEffect, importcpp: "DisplayFlag",
    header: "IGESDraw_CircArraySubfigure.hxx".}
proc DoDontFlag*(this: IGESDraw_CircArraySubfigure): Standard_Boolean {.
    noSideEffect, importcpp: "DoDontFlag",
    header: "IGESDraw_CircArraySubfigure.hxx".}
proc PositionNum*(this: IGESDraw_CircArraySubfigure; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "PositionNum",
    header: "IGESDraw_CircArraySubfigure.hxx".}
proc ListPosition*(this: IGESDraw_CircArraySubfigure; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ListPosition",
    header: "IGESDraw_CircArraySubfigure.hxx".}
type
  IGESDraw_CircArraySubfigurebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDraw_CircArraySubfigure::get_type_name(@)",
                              header: "IGESDraw_CircArraySubfigure.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_CircArraySubfigure::get_type_descriptor(@)",
    header: "IGESDraw_CircArraySubfigure.hxx".}
proc DynamicType*(this: IGESDraw_CircArraySubfigure): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_CircArraySubfigure.hxx".}