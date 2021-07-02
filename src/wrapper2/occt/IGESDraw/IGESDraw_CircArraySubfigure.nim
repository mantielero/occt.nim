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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDraw_CircArraySubfigure"
discard "forward decl of IGESDraw_CircArraySubfigure"
type
  HandleIGESDrawCircArraySubfigure* = Handle[IGESDrawCircArraySubfigure]

## ! Defines IGES Circular Array Subfigure Instance Entity,
## ! Type <414> Form Number <0> in package IGESDraw
## !
## ! Used to produce copies of object called the base entity,
## ! arranging them around the edge of an imaginary circle
## ! whose center and radius are specified

type
  IGESDrawCircArraySubfigure* {.importcpp: "IGESDraw_CircArraySubfigure",
                               header: "IGESDraw_CircArraySubfigure.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDrawCircArraySubfigure*(): IGESDrawCircArraySubfigure {.
    constructor, importcpp: "IGESDraw_CircArraySubfigure(@)",
    header: "IGESDraw_CircArraySubfigure.hxx".}
proc init*(this: var IGESDrawCircArraySubfigure; aBase: Handle[IGESDataIGESEntity];
          aNumLocs: StandardInteger; aCenter: GpXYZ; aRadius: StandardReal;
          aStAngle: StandardReal; aDelAngle: StandardReal; aFlag: StandardInteger;
          allNumPos: Handle[TColStdHArray1OfInteger]) {.importcpp: "Init",
    header: "IGESDraw_CircArraySubfigure.hxx".}
proc baseEntity*(this: IGESDrawCircArraySubfigure): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "BaseEntity",
    header: "IGESDraw_CircArraySubfigure.hxx".}
proc nbLocations*(this: IGESDrawCircArraySubfigure): StandardInteger {.noSideEffect,
    importcpp: "NbLocations", header: "IGESDraw_CircArraySubfigure.hxx".}
proc centerPoint*(this: IGESDrawCircArraySubfigure): GpPnt {.noSideEffect,
    importcpp: "CenterPoint", header: "IGESDraw_CircArraySubfigure.hxx".}
proc transformedCenterPoint*(this: IGESDrawCircArraySubfigure): GpPnt {.
    noSideEffect, importcpp: "TransformedCenterPoint",
    header: "IGESDraw_CircArraySubfigure.hxx".}
proc circleRadius*(this: IGESDrawCircArraySubfigure): StandardReal {.noSideEffect,
    importcpp: "CircleRadius", header: "IGESDraw_CircArraySubfigure.hxx".}
proc startAngle*(this: IGESDrawCircArraySubfigure): StandardReal {.noSideEffect,
    importcpp: "StartAngle", header: "IGESDraw_CircArraySubfigure.hxx".}
proc deltaAngle*(this: IGESDrawCircArraySubfigure): StandardReal {.noSideEffect,
    importcpp: "DeltaAngle", header: "IGESDraw_CircArraySubfigure.hxx".}
proc listCount*(this: IGESDrawCircArraySubfigure): StandardInteger {.noSideEffect,
    importcpp: "ListCount", header: "IGESDraw_CircArraySubfigure.hxx".}
proc displayFlag*(this: IGESDrawCircArraySubfigure): StandardBoolean {.noSideEffect,
    importcpp: "DisplayFlag", header: "IGESDraw_CircArraySubfigure.hxx".}
proc doDontFlag*(this: IGESDrawCircArraySubfigure): StandardBoolean {.noSideEffect,
    importcpp: "DoDontFlag", header: "IGESDraw_CircArraySubfigure.hxx".}
proc positionNum*(this: IGESDrawCircArraySubfigure; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "PositionNum",
    header: "IGESDraw_CircArraySubfigure.hxx".}
proc listPosition*(this: IGESDrawCircArraySubfigure; index: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "ListPosition",
    header: "IGESDraw_CircArraySubfigure.hxx".}
type
  IGESDrawCircArraySubfigurebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDraw_CircArraySubfigure::get_type_name(@)",
                            header: "IGESDraw_CircArraySubfigure.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_CircArraySubfigure::get_type_descriptor(@)",
    header: "IGESDraw_CircArraySubfigure.hxx".}
proc dynamicType*(this: IGESDrawCircArraySubfigure): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_CircArraySubfigure.hxx".}

