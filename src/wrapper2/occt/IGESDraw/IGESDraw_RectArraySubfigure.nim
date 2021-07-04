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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../gp/gp_XYZ, ../Standard/Standard_Integer, ../TColStd/TColStd_HArray1OfInteger,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDraw_RectArraySubfigure"
discard "forward decl of IGESDraw_RectArraySubfigure"
type
  Handle_IGESDraw_RectArraySubfigure* = handle[IGESDraw_RectArraySubfigure]

## ! Defines IGES Rectangular Array Subfigure Instance Entity,
## ! Type <412> Form Number <0> in package IGESDraw
## ! Used to produce copies of object called the base entity,
## ! arranging them in equally spaced rows and columns

type
  IGESDraw_RectArraySubfigure* {.importcpp: "IGESDraw_RectArraySubfigure",
                                header: "IGESDraw_RectArraySubfigure.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDraw_RectArraySubfigure*(): IGESDraw_RectArraySubfigure {.
    constructor, importcpp: "IGESDraw_RectArraySubfigure(@)",
    header: "IGESDraw_RectArraySubfigure.hxx".}
proc Init*(this: var IGESDraw_RectArraySubfigure;
          aBase: handle[IGESData_IGESEntity]; aScale: Standard_Real;
          aCorner: gp_XYZ; nbCols: Standard_Integer; nbRows: Standard_Integer;
          hDisp: Standard_Real; vtDisp: Standard_Real; rotationAngle: Standard_Real;
          doDont: Standard_Integer; allNumPos: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "Init", header: "IGESDraw_RectArraySubfigure.hxx".}
proc BaseEntity*(this: IGESDraw_RectArraySubfigure): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "BaseEntity",
    header: "IGESDraw_RectArraySubfigure.hxx".}
proc ScaleFactor*(this: IGESDraw_RectArraySubfigure): Standard_Real {.noSideEffect,
    importcpp: "ScaleFactor", header: "IGESDraw_RectArraySubfigure.hxx".}
proc LowerLeftCorner*(this: IGESDraw_RectArraySubfigure): gp_Pnt {.noSideEffect,
    importcpp: "LowerLeftCorner", header: "IGESDraw_RectArraySubfigure.hxx".}
proc TransformedLowerLeftCorner*(this: IGESDraw_RectArraySubfigure): gp_Pnt {.
    noSideEffect, importcpp: "TransformedLowerLeftCorner",
    header: "IGESDraw_RectArraySubfigure.hxx".}
proc NbColumns*(this: IGESDraw_RectArraySubfigure): Standard_Integer {.noSideEffect,
    importcpp: "NbColumns", header: "IGESDraw_RectArraySubfigure.hxx".}
proc NbRows*(this: IGESDraw_RectArraySubfigure): Standard_Integer {.noSideEffect,
    importcpp: "NbRows", header: "IGESDraw_RectArraySubfigure.hxx".}
proc ColumnSeparation*(this: IGESDraw_RectArraySubfigure): Standard_Real {.
    noSideEffect, importcpp: "ColumnSeparation",
    header: "IGESDraw_RectArraySubfigure.hxx".}
proc RowSeparation*(this: IGESDraw_RectArraySubfigure): Standard_Real {.
    noSideEffect, importcpp: "RowSeparation",
    header: "IGESDraw_RectArraySubfigure.hxx".}
proc RotationAngle*(this: IGESDraw_RectArraySubfigure): Standard_Real {.
    noSideEffect, importcpp: "RotationAngle",
    header: "IGESDraw_RectArraySubfigure.hxx".}
proc DisplayFlag*(this: IGESDraw_RectArraySubfigure): Standard_Boolean {.
    noSideEffect, importcpp: "DisplayFlag",
    header: "IGESDraw_RectArraySubfigure.hxx".}
proc ListCount*(this: IGESDraw_RectArraySubfigure): Standard_Integer {.noSideEffect,
    importcpp: "ListCount", header: "IGESDraw_RectArraySubfigure.hxx".}
proc DoDontFlag*(this: IGESDraw_RectArraySubfigure): Standard_Boolean {.
    noSideEffect, importcpp: "DoDontFlag",
    header: "IGESDraw_RectArraySubfigure.hxx".}
proc PositionNum*(this: IGESDraw_RectArraySubfigure; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "PositionNum",
    header: "IGESDraw_RectArraySubfigure.hxx".}
proc ListPosition*(this: IGESDraw_RectArraySubfigure; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ListPosition",
    header: "IGESDraw_RectArraySubfigure.hxx".}
type
  IGESDraw_RectArraySubfigurebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDraw_RectArraySubfigure::get_type_name(@)",
                              header: "IGESDraw_RectArraySubfigure.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_RectArraySubfigure::get_type_descriptor(@)",
    header: "IGESDraw_RectArraySubfigure.hxx".}
proc DynamicType*(this: IGESDraw_RectArraySubfigure): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_RectArraySubfigure.hxx".}