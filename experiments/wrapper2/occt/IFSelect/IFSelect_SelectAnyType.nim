##  Created on: 1992-11-18
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SelectExtract,
  ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_SelectAnyType"
discard "forward decl of IFSelect_SelectAnyType"
type
  Handle_IFSelect_SelectAnyType* = handle[IFSelect_SelectAnyType]

## ! A SelectAnyType sorts the Entities of which the Type is Kind
## ! of a given Type : this Type for Match is specific of each
## ! class of SelectAnyType

type
  IFSelect_SelectAnyType* {.importcpp: "IFSelect_SelectAnyType",
                           header: "IFSelect_SelectAnyType.hxx", bycopy.} = object of IFSelect_SelectExtract ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## the
                                                                                                      ## Type
                                                                                                      ## which
                                                                                                      ## has
                                                                                                      ## to
                                                                                                      ## be
                                                                                                      ## matched
                                                                                                      ## for
                                                                                                      ## select


proc TypeForMatch*(this: IFSelect_SelectAnyType): handle[Standard_Type] {.
    noSideEffect, importcpp: "TypeForMatch", header: "IFSelect_SelectAnyType.hxx".}
proc Sort*(this: IFSelect_SelectAnyType; rank: Standard_Integer;
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Sort", header: "IFSelect_SelectAnyType.hxx".}
type
  IFSelect_SelectAnyTypebase_type* = IFSelect_SelectExtract

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectAnyType::get_type_name(@)",
                              header: "IFSelect_SelectAnyType.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectAnyType::get_type_descriptor(@)",
    header: "IFSelect_SelectAnyType.hxx".}
proc DynamicType*(this: IFSelect_SelectAnyType): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SelectAnyType.hxx".}