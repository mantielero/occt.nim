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
discard "forward decl of IGESDimen_Section"
discard "forward decl of IGESDimen_Section"
type
  Handle_IGESDimen_Section* = handle[IGESDimen_Section]

## ! defines Section, Type <106> Form <31-38>
## ! in package IGESDimen
## ! Contains information to display sectioned sides

type
  IGESDimen_Section* {.importcpp: "IGESDimen_Section",
                      header: "IGESDimen_Section.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_Section*(): IGESDimen_Section {.constructor,
    importcpp: "IGESDimen_Section(@)", header: "IGESDimen_Section.hxx".}
proc Init*(this: var IGESDimen_Section; dataType: Standard_Integer;
          aDisp: Standard_Real; dataPoints: handle[TColgp_HArray1OfXY]) {.
    importcpp: "Init", header: "IGESDimen_Section.hxx".}
proc SetFormNumber*(this: var IGESDimen_Section; form: Standard_Integer) {.
    importcpp: "SetFormNumber", header: "IGESDimen_Section.hxx".}
proc Datatype*(this: IGESDimen_Section): Standard_Integer {.noSideEffect,
    importcpp: "Datatype", header: "IGESDimen_Section.hxx".}
proc NbPoints*(this: IGESDimen_Section): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IGESDimen_Section.hxx".}
proc ZDisplacement*(this: IGESDimen_Section): Standard_Real {.noSideEffect,
    importcpp: "ZDisplacement", header: "IGESDimen_Section.hxx".}
proc Point*(this: IGESDimen_Section; Index: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "IGESDimen_Section.hxx".}
proc TransformedPoint*(this: IGESDimen_Section; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "TransformedPoint", header: "IGESDimen_Section.hxx".}
type
  IGESDimen_Sectionbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_Section::get_type_name(@)",
                              header: "IGESDimen_Section.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_Section::get_type_descriptor(@)",
    header: "IGESDimen_Section.hxx".}
proc DynamicType*(this: IGESDimen_Section): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDimen_Section.hxx".}