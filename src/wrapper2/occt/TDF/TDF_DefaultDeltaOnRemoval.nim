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
  ../Standard/Standard, ../Standard/Standard_Type, TDF_DeltaOnRemoval

discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_DefaultDeltaOnRemoval"
discard "forward decl of TDF_DefaultDeltaOnRemoval"
type
  Handle_TDF_DefaultDeltaOnRemoval* = handle[TDF_DefaultDeltaOnRemoval]

## ! This class provides a default implementation of a
## ! TDF_DeltaOnRemoval.

type
  TDF_DefaultDeltaOnRemoval* {.importcpp: "TDF_DefaultDeltaOnRemoval",
                              header: "TDF_DefaultDeltaOnRemoval.hxx", bycopy.} = object of TDF_DeltaOnRemoval ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## a
                                                                                                        ## TDF_DefaultDeltaOnRemoval.


proc constructTDF_DefaultDeltaOnRemoval*(anAttribute: handle[TDF_Attribute]): TDF_DefaultDeltaOnRemoval {.
    constructor, importcpp: "TDF_DefaultDeltaOnRemoval(@)",
    header: "TDF_DefaultDeltaOnRemoval.hxx".}
proc Apply*(this: var TDF_DefaultDeltaOnRemoval) {.importcpp: "Apply",
    header: "TDF_DefaultDeltaOnRemoval.hxx".}
type
  TDF_DefaultDeltaOnRemovalbase_type* = TDF_DeltaOnRemoval

proc get_type_name*(): cstring {.importcpp: "TDF_DefaultDeltaOnRemoval::get_type_name(@)",
                              header: "TDF_DefaultDeltaOnRemoval.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDF_DefaultDeltaOnRemoval::get_type_descriptor(@)",
    header: "TDF_DefaultDeltaOnRemoval.hxx".}
proc DynamicType*(this: TDF_DefaultDeltaOnRemoval): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TDF_DefaultDeltaOnRemoval.hxx".}