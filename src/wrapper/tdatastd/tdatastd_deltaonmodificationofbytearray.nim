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

discard "forward decl of TDataStd_ByteArray"
discard "forward decl of TDataStd_DeltaOnModificationOfByteArray"
type
  HandleTDataStdDeltaOnModificationOfByteArray* = Handle[
      TDataStdDeltaOnModificationOfByteArray]

## ! This class provides default services for an
## ! AttributeDelta on a MODIFICATION action.

type
  TDataStdDeltaOnModificationOfByteArray* {.
      importcpp: "TDataStd_DeltaOnModificationOfByteArray",
      header: "TDataStd_DeltaOnModificationOfByteArray.hxx", bycopy.} = object of TDF_DeltaOnModification ##
                                                                                                   ## !
                                                                                                   ## Initializes
                                                                                                   ## a
                                                                                                   ## TDF_DeltaOnModification.


proc newTDataStdDeltaOnModificationOfByteArray*(arr: Handle[TDataStdByteArray]): TDataStdDeltaOnModificationOfByteArray {.
    cdecl, constructor, importcpp: "TDataStd_DeltaOnModificationOfByteArray(@)",
    header: "TDataStd_DeltaOnModificationOfByteArray.hxx".}
proc apply*(this: var TDataStdDeltaOnModificationOfByteArray) {.cdecl,
    importcpp: "Apply", header: "TDataStd_DeltaOnModificationOfByteArray.hxx".}