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
discard "forward decl of IGESDraw_RectArraySubfigure"
discard "forward decl of IGESDraw_RectArraySubfigure"
type
  HandleC1C1* = Handle[IGESDrawRectArraySubfigure]

## ! Defines IGES Rectangular Array Subfigure Instance Entity,
## ! Type <412> Form Number <0> in package IGESDraw
## ! Used to produce copies of object called the base entity,
## ! arranging them in equally spaced rows and columns

type
  IGESDrawRectArraySubfigure* {.importcpp: "IGESDraw_RectArraySubfigure",
                               header: "IGESDraw_RectArraySubfigure.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDrawRectArraySubfigure*(): IGESDrawRectArraySubfigure {.
    constructor, importcpp: "IGESDraw_RectArraySubfigure(@)",
    header: "IGESDraw_RectArraySubfigure.hxx".}
proc init*(this: var IGESDrawRectArraySubfigure; aBase: Handle[IGESDataIGESEntity];
          aScale: cfloat; aCorner: Xyz; nbCols: cint; nbRows: cint; hDisp: cfloat;
          vtDisp: cfloat; rotationAngle: cfloat; doDont: cint;
          allNumPos: Handle[TColStdHArray1OfInteger]) {.importcpp: "Init",
    header: "IGESDraw_RectArraySubfigure.hxx".}
proc baseEntity*(this: IGESDrawRectArraySubfigure): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "BaseEntity",
    header: "IGESDraw_RectArraySubfigure.hxx".}
proc scaleFactor*(this: IGESDrawRectArraySubfigure): cfloat {.noSideEffect,
    importcpp: "ScaleFactor", header: "IGESDraw_RectArraySubfigure.hxx".}
proc lowerLeftCorner*(this: IGESDrawRectArraySubfigure): Pnt {.noSideEffect,
    importcpp: "LowerLeftCorner", header: "IGESDraw_RectArraySubfigure.hxx".}
proc transformedLowerLeftCorner*(this: IGESDrawRectArraySubfigure): Pnt {.
    noSideEffect, importcpp: "TransformedLowerLeftCorner",
    header: "IGESDraw_RectArraySubfigure.hxx".}
proc nbColumns*(this: IGESDrawRectArraySubfigure): cint {.noSideEffect,
    importcpp: "NbColumns", header: "IGESDraw_RectArraySubfigure.hxx".}
proc nbRows*(this: IGESDrawRectArraySubfigure): cint {.noSideEffect,
    importcpp: "NbRows", header: "IGESDraw_RectArraySubfigure.hxx".}
proc columnSeparation*(this: IGESDrawRectArraySubfigure): cfloat {.noSideEffect,
    importcpp: "ColumnSeparation", header: "IGESDraw_RectArraySubfigure.hxx".}
proc rowSeparation*(this: IGESDrawRectArraySubfigure): cfloat {.noSideEffect,
    importcpp: "RowSeparation", header: "IGESDraw_RectArraySubfigure.hxx".}
proc rotationAngle*(this: IGESDrawRectArraySubfigure): cfloat {.noSideEffect,
    importcpp: "RotationAngle", header: "IGESDraw_RectArraySubfigure.hxx".}
proc displayFlag*(this: IGESDrawRectArraySubfigure): bool {.noSideEffect,
    importcpp: "DisplayFlag", header: "IGESDraw_RectArraySubfigure.hxx".}
proc listCount*(this: IGESDrawRectArraySubfigure): cint {.noSideEffect,
    importcpp: "ListCount", header: "IGESDraw_RectArraySubfigure.hxx".}
proc doDontFlag*(this: IGESDrawRectArraySubfigure): bool {.noSideEffect,
    importcpp: "DoDontFlag", header: "IGESDraw_RectArraySubfigure.hxx".}
proc positionNum*(this: IGESDrawRectArraySubfigure; index: cint): bool {.noSideEffect,
    importcpp: "PositionNum", header: "IGESDraw_RectArraySubfigure.hxx".}
proc listPosition*(this: IGESDrawRectArraySubfigure; index: cint): cint {.
    noSideEffect, importcpp: "ListPosition",
    header: "IGESDraw_RectArraySubfigure.hxx".}
type
  IGESDrawRectArraySubfigurebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDraw_RectArraySubfigure::get_type_name(@)",
                            header: "IGESDraw_RectArraySubfigure.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_RectArraySubfigure::get_type_descriptor(@)",
    header: "IGESDraw_RectArraySubfigure.hxx".}
proc dynamicType*(this: IGESDrawRectArraySubfigure): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_RectArraySubfigure.hxx".}

























