##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, TDF_AttributeDelta

discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_DeltaOnRemoval"
discard "forward decl of TDF_DeltaOnRemoval"
type
  Handle_TDF_DeltaOnRemoval* = handle[TDF_DeltaOnRemoval]

## ! This class provides default services for an
## ! AttributeDelta on a REMOVAL action.
## !
## ! Applying this AttributeDelta means ADDING its
## ! attribute.

type
  TDF_DeltaOnRemoval* {.importcpp: "TDF_DeltaOnRemoval",
                       header: "TDF_DeltaOnRemoval.hxx", bycopy.} = object of TDF_AttributeDelta ##
                                                                                          ## !
                                                                                          ## Initializes
                                                                                          ## a
                                                                                          ## TDF_DeltaOnRemoval.

  TDF_DeltaOnRemovalbase_type* = TDF_AttributeDelta

proc get_type_name*(): cstring {.importcpp: "TDF_DeltaOnRemoval::get_type_name(@)",
                              header: "TDF_DeltaOnRemoval.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDF_DeltaOnRemoval::get_type_descriptor(@)",
    header: "TDF_DeltaOnRemoval.hxx".}
proc DynamicType*(this: TDF_DeltaOnRemoval): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_DeltaOnRemoval.hxx".}