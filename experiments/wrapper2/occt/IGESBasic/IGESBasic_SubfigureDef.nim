##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
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
  ../IGESData/IGESData_HArray1OfIGESEntity, ../IGESData/IGESData_IGESEntity

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESBasic_SubfigureDef"
discard "forward decl of IGESBasic_SubfigureDef"
type
  Handle_IGESBasic_SubfigureDef* = handle[IGESBasic_SubfigureDef]

## ! defines SubfigureDef, Type <308> Form <0>
## ! in package IGESBasic
## ! This Entity permits a single definition of a detail to
## ! be utilized in multiple instances in the creation of
## ! the whole picture

type
  IGESBasic_SubfigureDef* {.importcpp: "IGESBasic_SubfigureDef",
                           header: "IGESBasic_SubfigureDef.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESBasic_SubfigureDef*(): IGESBasic_SubfigureDef {.constructor,
    importcpp: "IGESBasic_SubfigureDef(@)", header: "IGESBasic_SubfigureDef.hxx".}
proc Init*(this: var IGESBasic_SubfigureDef; aDepth: Standard_Integer;
          aName: handle[TCollection_HAsciiString];
          allAssocEntities: handle[IGESData_HArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESBasic_SubfigureDef.hxx".}
proc Depth*(this: IGESBasic_SubfigureDef): Standard_Integer {.noSideEffect,
    importcpp: "Depth", header: "IGESBasic_SubfigureDef.hxx".}
proc Name*(this: IGESBasic_SubfigureDef): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "IGESBasic_SubfigureDef.hxx".}
proc NbEntities*(this: IGESBasic_SubfigureDef): Standard_Integer {.noSideEffect,
    importcpp: "NbEntities", header: "IGESBasic_SubfigureDef.hxx".}
proc AssociatedEntity*(this: IGESBasic_SubfigureDef; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "AssociatedEntity",
                          header: "IGESBasic_SubfigureDef.hxx".}
proc Value*(this: IGESBasic_SubfigureDef; Index: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Value",
                         header: "IGESBasic_SubfigureDef.hxx".}
type
  IGESBasic_SubfigureDefbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESBasic_SubfigureDef::get_type_name(@)",
                              header: "IGESBasic_SubfigureDef.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_SubfigureDef::get_type_descriptor(@)",
    header: "IGESBasic_SubfigureDef.hxx".}
proc DynamicType*(this: IGESBasic_SubfigureDef): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESBasic_SubfigureDef.hxx".}