##  Created on: 1994-09-02
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SelectFlag

discard "forward decl of IFSelect_SelectIncorrectEntities"
discard "forward decl of IFSelect_SelectIncorrectEntities"
type
  Handle_IFSelect_SelectIncorrectEntities* = handle[
      IFSelect_SelectIncorrectEntities]

## ! A SelectIncorrectEntities sorts the Entities which have been
## ! noted as Incorrect in the Graph of the Session
## ! (flag "Incorrect")
## ! It can find a result only if ComputeCheck has formerly been
## ! called on the WorkSession. Else, its result will be empty.

type
  IFSelect_SelectIncorrectEntities* {.importcpp: "IFSelect_SelectIncorrectEntities", header: "IFSelect_SelectIncorrectEntities.hxx",
                                     bycopy.} = object of IFSelect_SelectFlag ## ! Creates a
                                                                         ## SelectIncorrectEntities
                                                                         ## ! i.e. a
                                                                         ## SelectFlag("Incorrect")


proc constructIFSelect_SelectIncorrectEntities*(): IFSelect_SelectIncorrectEntities {.
    constructor, importcpp: "IFSelect_SelectIncorrectEntities(@)",
    header: "IFSelect_SelectIncorrectEntities.hxx".}
type
  IFSelect_SelectIncorrectEntitiesbase_type* = IFSelect_SelectFlag

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectIncorrectEntities::get_type_name(@)",
                              header: "IFSelect_SelectIncorrectEntities.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectIncorrectEntities::get_type_descriptor(@)",
    header: "IFSelect_SelectIncorrectEntities.hxx".}
proc DynamicType*(this: IFSelect_SelectIncorrectEntities): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IFSelect_SelectIncorrectEntities.hxx".}