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
  ../IGESData/IGESData_IGESEntity

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_WitnessLine"
discard "forward decl of IGESDimen_WitnessLine"
type
  Handle_IGESDimen_WitnessLine* = handle[IGESDimen_WitnessLine]

## ! defines WitnessLine, Type <106> Form <40>
## ! in package IGESDimen
## ! Contains one or more straight line segments associated
## ! with drafting entities of various types

type
  IGESDimen_WitnessLine* {.importcpp: "IGESDimen_WitnessLine",
                          header: "IGESDimen_WitnessLine.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_WitnessLine*(): IGESDimen_WitnessLine {.constructor,
    importcpp: "IGESDimen_WitnessLine(@)", header: "IGESDimen_WitnessLine.hxx".}
proc Init*(this: var IGESDimen_WitnessLine; dataType: Standard_Integer;
          aDisp: Standard_Real; dataPoints: handle[TColgp_HArray1OfXY]) {.
    importcpp: "Init", header: "IGESDimen_WitnessLine.hxx".}
proc Datatype*(this: IGESDimen_WitnessLine): Standard_Integer {.noSideEffect,
    importcpp: "Datatype", header: "IGESDimen_WitnessLine.hxx".}
proc NbPoints*(this: IGESDimen_WitnessLine): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IGESDimen_WitnessLine.hxx".}
proc ZDisplacement*(this: IGESDimen_WitnessLine): Standard_Real {.noSideEffect,
    importcpp: "ZDisplacement", header: "IGESDimen_WitnessLine.hxx".}
proc Point*(this: IGESDimen_WitnessLine; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Point", header: "IGESDimen_WitnessLine.hxx".}
proc TransformedPoint*(this: IGESDimen_WitnessLine; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "TransformedPoint",
    header: "IGESDimen_WitnessLine.hxx".}
type
  IGESDimen_WitnessLinebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_WitnessLine::get_type_name(@)",
                              header: "IGESDimen_WitnessLine.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_WitnessLine::get_type_descriptor(@)",
    header: "IGESDimen_WitnessLine.hxx".}
proc DynamicType*(this: IGESDimen_WitnessLine): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_WitnessLine.hxx".}