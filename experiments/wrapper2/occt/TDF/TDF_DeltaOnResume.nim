##  Created by: DAUTRY Philippe
##  Copyright (c) 1998-1999 Matra Datavision
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
discard "forward decl of TDF_DeltaOnResume"
discard "forward decl of TDF_DeltaOnResume"
type
  Handle_TDF_DeltaOnResume* = handle[TDF_DeltaOnResume]

## ! This class provides default services for an
## ! AttributeDelta on an Resume action.
## !
## ! Applying this AttributeDelta means FORGETTING its
## ! attribute.

type
  TDF_DeltaOnResume* {.importcpp: "TDF_DeltaOnResume",
                      header: "TDF_DeltaOnResume.hxx", bycopy.} = object of TDF_AttributeDelta ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## a
                                                                                        ## TDF_DeltaOnResume.


proc constructTDF_DeltaOnResume*(anAtt: handle[TDF_Attribute]): TDF_DeltaOnResume {.
    constructor, importcpp: "TDF_DeltaOnResume(@)", header: "TDF_DeltaOnResume.hxx".}
proc Apply*(this: var TDF_DeltaOnResume) {.importcpp: "Apply",
                                       header: "TDF_DeltaOnResume.hxx".}
proc DumpJson*(this: TDF_DeltaOnResume; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDF_DeltaOnResume.hxx".}
type
  TDF_DeltaOnResumebase_type* = TDF_AttributeDelta

proc get_type_name*(): cstring {.importcpp: "TDF_DeltaOnResume::get_type_name(@)",
                              header: "TDF_DeltaOnResume.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDF_DeltaOnResume::get_type_descriptor(@)",
    header: "TDF_DeltaOnResume.hxx".}
proc DynamicType*(this: TDF_DeltaOnResume): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_DeltaOnResume.hxx".}