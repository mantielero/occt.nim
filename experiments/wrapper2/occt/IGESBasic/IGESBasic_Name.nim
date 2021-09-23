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
  ../IGESData/IGESData_NameEntity

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESBasic_Name"
discard "forward decl of IGESBasic_Name"
type
  Handle_IGESBasic_Name* = handle[IGESBasic_Name]

## ! defines Name, Type <406> Form <15>
## ! in package IGESBasic
## ! Used to specify a user defined name

type
  IGESBasic_Name* {.importcpp: "IGESBasic_Name", header: "IGESBasic_Name.hxx", bycopy.} = object of IGESData_NameEntity


proc constructIGESBasic_Name*(): IGESBasic_Name {.constructor,
    importcpp: "IGESBasic_Name(@)", header: "IGESBasic_Name.hxx".}
proc Init*(this: var IGESBasic_Name; nbPropVal: Standard_Integer;
          aName: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "IGESBasic_Name.hxx".}
proc NbPropertyValues*(this: IGESBasic_Name): Standard_Integer {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESBasic_Name.hxx".}
proc Value*(this: IGESBasic_Name): handle[TCollection_HAsciiString] {.noSideEffect,
    importcpp: "Value", header: "IGESBasic_Name.hxx".}
type
  IGESBasic_Namebase_type* = IGESData_NameEntity

proc get_type_name*(): cstring {.importcpp: "IGESBasic_Name::get_type_name(@)",
                              header: "IGESBasic_Name.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_Name::get_type_descriptor(@)",
    header: "IGESBasic_Name.hxx".}
proc DynamicType*(this: IGESBasic_Name): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESBasic_Name.hxx".}