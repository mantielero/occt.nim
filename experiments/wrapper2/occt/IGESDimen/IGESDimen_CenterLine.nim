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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../TColgp/TColgp_HArray1OfXY,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_CenterLine"
discard "forward decl of IGESDimen_CenterLine"
type
  Handle_IGESDimen_CenterLine* = handle[IGESDimen_CenterLine]

## ! defines CenterLine, Type <106> Form <20-21>
## ! in package IGESDimen
## ! Is an entity appearing as crosshairs or as a
## ! construction between 2 positions

type
  IGESDimen_CenterLine* {.importcpp: "IGESDimen_CenterLine",
                         header: "IGESDimen_CenterLine.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_CenterLine*(): IGESDimen_CenterLine {.constructor,
    importcpp: "IGESDimen_CenterLine(@)", header: "IGESDimen_CenterLine.hxx".}
proc Init*(this: var IGESDimen_CenterLine; aDataType: Standard_Integer;
          aZdisp: Standard_Real; dataPnts: handle[TColgp_HArray1OfXY]) {.
    importcpp: "Init", header: "IGESDimen_CenterLine.hxx".}
proc SetCrossHair*(this: var IGESDimen_CenterLine; mode: Standard_Boolean) {.
    importcpp: "SetCrossHair", header: "IGESDimen_CenterLine.hxx".}
proc Datatype*(this: IGESDimen_CenterLine): Standard_Integer {.noSideEffect,
    importcpp: "Datatype", header: "IGESDimen_CenterLine.hxx".}
proc NbPoints*(this: IGESDimen_CenterLine): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IGESDimen_CenterLine.hxx".}
proc ZDisplacement*(this: IGESDimen_CenterLine): Standard_Real {.noSideEffect,
    importcpp: "ZDisplacement", header: "IGESDimen_CenterLine.hxx".}
proc Point*(this: IGESDimen_CenterLine; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Point", header: "IGESDimen_CenterLine.hxx".}
proc TransformedPoint*(this: IGESDimen_CenterLine; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "TransformedPoint", header: "IGESDimen_CenterLine.hxx".}
proc IsCrossHair*(this: IGESDimen_CenterLine): Standard_Boolean {.noSideEffect,
    importcpp: "IsCrossHair", header: "IGESDimen_CenterLine.hxx".}
type
  IGESDimen_CenterLinebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_CenterLine::get_type_name(@)",
                              header: "IGESDimen_CenterLine.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_CenterLine::get_type_descriptor(@)",
    header: "IGESDimen_CenterLine.hxx".}
proc DynamicType*(this: IGESDimen_CenterLine): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDimen_CenterLine.hxx".}