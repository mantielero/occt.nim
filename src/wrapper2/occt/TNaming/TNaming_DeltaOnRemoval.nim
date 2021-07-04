##  Created on: 1997-12-03
##  Created by: Yves FRICAUD
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TDF/TDF_DeltaOnRemoval

discard "forward decl of TNaming_DeltaOnModification"
discard "forward decl of TNaming_NamedShape"
discard "forward decl of TNaming_DeltaOnRemoval"
discard "forward decl of TNaming_DeltaOnRemoval"
type
  Handle_TNaming_DeltaOnRemoval* = handle[TNaming_DeltaOnRemoval]
  TNaming_DeltaOnRemoval* {.importcpp: "TNaming_DeltaOnRemoval",
                           header: "TNaming_DeltaOnRemoval.hxx", bycopy.} = object of TDF_DeltaOnRemoval ##
                                                                                                  ## !
                                                                                                  ## Initializes
                                                                                                  ## a
                                                                                                  ## TDF_DeltaOnModification.


proc constructTNaming_DeltaOnRemoval*(NS: handle[TNaming_NamedShape]): TNaming_DeltaOnRemoval {.
    constructor, importcpp: "TNaming_DeltaOnRemoval(@)",
    header: "TNaming_DeltaOnRemoval.hxx".}
proc Apply*(this: var TNaming_DeltaOnRemoval) {.importcpp: "Apply",
    header: "TNaming_DeltaOnRemoval.hxx".}
type
  TNaming_DeltaOnRemovalbase_type* = TDF_DeltaOnRemoval

proc get_type_name*(): cstring {.importcpp: "TNaming_DeltaOnRemoval::get_type_name(@)",
                              header: "TNaming_DeltaOnRemoval.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TNaming_DeltaOnRemoval::get_type_descriptor(@)",
    header: "TNaming_DeltaOnRemoval.hxx".}
proc DynamicType*(this: TNaming_DeltaOnRemoval): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TNaming_DeltaOnRemoval.hxx".}