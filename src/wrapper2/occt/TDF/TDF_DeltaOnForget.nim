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
discard "forward decl of TDF_DeltaOnForget"
discard "forward decl of TDF_DeltaOnForget"
type
  Handle_TDF_DeltaOnForget* = handle[TDF_DeltaOnForget]

## ! This class provides default services for an
## ! AttributeDelta on an Forget action.
## !
## ! Applying this AttributeDelta means RESUMING its
## ! attribute.

type
  TDF_DeltaOnForget* {.importcpp: "TDF_DeltaOnForget",
                      header: "TDF_DeltaOnForget.hxx", bycopy.} = object of TDF_AttributeDelta ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## a
                                                                                        ## TDF_DeltaOnForget.


proc constructTDF_DeltaOnForget*(anAtt: handle[TDF_Attribute]): TDF_DeltaOnForget {.
    constructor, importcpp: "TDF_DeltaOnForget(@)", header: "TDF_DeltaOnForget.hxx".}
proc Apply*(this: var TDF_DeltaOnForget) {.importcpp: "Apply",
                                       header: "TDF_DeltaOnForget.hxx".}
type
  TDF_DeltaOnForgetbase_type* = TDF_AttributeDelta

proc get_type_name*(): cstring {.importcpp: "TDF_DeltaOnForget::get_type_name(@)",
                              header: "TDF_DeltaOnForget.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDF_DeltaOnForget::get_type_descriptor(@)",
    header: "TDF_DeltaOnForget.hxx".}
proc DynamicType*(this: TDF_DeltaOnForget): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_DeltaOnForget.hxx".}