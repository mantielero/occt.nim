##  Created on: 2007-12-05
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfInteger, ../TColStd/TColStd_HArray1OfByte,
  ../Standard/Standard_Integer, ../TDF/TDF_DeltaOnModification

discard "forward decl of TDataStd_ByteArray"
discard "forward decl of TDataStd_DeltaOnModificationOfByteArray"
discard "forward decl of TDataStd_DeltaOnModificationOfByteArray"
type
  Handle_TDataStd_DeltaOnModificationOfByteArray* = handle[
      TDataStd_DeltaOnModificationOfByteArray]

## ! This class provides default services for an
## ! AttributeDelta on a MODIFICATION action.

type
  TDataStd_DeltaOnModificationOfByteArray* {.
      importcpp: "TDataStd_DeltaOnModificationOfByteArray",
      header: "TDataStd_DeltaOnModificationOfByteArray.hxx", bycopy.} = object of TDF_DeltaOnModification ##
                                                                                                   ## !
                                                                                                   ## Initializes
                                                                                                   ## a
                                                                                                   ## TDF_DeltaOnModification.


proc constructTDataStd_DeltaOnModificationOfByteArray*(
    Arr: handle[TDataStd_ByteArray]): TDataStd_DeltaOnModificationOfByteArray {.
    constructor, importcpp: "TDataStd_DeltaOnModificationOfByteArray(@)",
    header: "TDataStd_DeltaOnModificationOfByteArray.hxx".}
proc Apply*(this: var TDataStd_DeltaOnModificationOfByteArray) {.importcpp: "Apply",
    header: "TDataStd_DeltaOnModificationOfByteArray.hxx".}
type
  TDataStd_DeltaOnModificationOfByteArraybase_type* = TDF_DeltaOnModification

proc get_type_name*(): cstring {.importcpp: "TDataStd_DeltaOnModificationOfByteArray::get_type_name(@)", header: "TDataStd_DeltaOnModificationOfByteArray.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "TDataStd_DeltaOnModificationOfByteArray::get_type_descriptor(@)",
    header: "TDataStd_DeltaOnModificationOfByteArray.hxx".}
proc DynamicType*(this: TDataStd_DeltaOnModificationOfByteArray): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "TDataStd_DeltaOnModificationOfByteArray.hxx".}