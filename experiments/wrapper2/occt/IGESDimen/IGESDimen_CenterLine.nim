##  Created on: 1993-01-13
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_CenterLine"
discard "forward decl of IGESDimen_CenterLine"
type
  HandleIGESDimenCenterLine* = Handle[IGESDimenCenterLine]

## ! defines CenterLine, Type <106> Form <20-21>
## ! in package IGESDimen
## ! Is an entity appearing as crosshairs or as a
## ! construction between 2 positions

type
  IGESDimenCenterLine* {.importcpp: "IGESDimen_CenterLine",
                        header: "IGESDimen_CenterLine.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenCenterLine*(): IGESDimenCenterLine {.constructor,
    importcpp: "IGESDimen_CenterLine(@)", header: "IGESDimen_CenterLine.hxx".}
proc init*(this: var IGESDimenCenterLine; aDataType: int; aZdisp: float;
          dataPnts: Handle[TColgpHArray1OfXY]) {.importcpp: "Init",
    header: "IGESDimen_CenterLine.hxx".}
proc setCrossHair*(this: var IGESDimenCenterLine; mode: bool) {.
    importcpp: "SetCrossHair", header: "IGESDimen_CenterLine.hxx".}
proc datatype*(this: IGESDimenCenterLine): int {.noSideEffect, importcpp: "Datatype",
    header: "IGESDimen_CenterLine.hxx".}
proc nbPoints*(this: IGESDimenCenterLine): int {.noSideEffect, importcpp: "NbPoints",
    header: "IGESDimen_CenterLine.hxx".}
proc zDisplacement*(this: IGESDimenCenterLine): float {.noSideEffect,
    importcpp: "ZDisplacement", header: "IGESDimen_CenterLine.hxx".}
proc point*(this: IGESDimenCenterLine; index: int): Pnt {.noSideEffect,
    importcpp: "Point", header: "IGESDimen_CenterLine.hxx".}
proc transformedPoint*(this: IGESDimenCenterLine; index: int): Pnt {.noSideEffect,
    importcpp: "TransformedPoint", header: "IGESDimen_CenterLine.hxx".}
proc isCrossHair*(this: IGESDimenCenterLine): bool {.noSideEffect,
    importcpp: "IsCrossHair", header: "IGESDimen_CenterLine.hxx".}
type
  IGESDimenCenterLinebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_CenterLine::get_type_name(@)",
                            header: "IGESDimen_CenterLine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_CenterLine::get_type_descriptor(@)",
    header: "IGESDimen_CenterLine.hxx".}
proc dynamicType*(this: IGESDimenCenterLine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDimen_CenterLine.hxx".}
