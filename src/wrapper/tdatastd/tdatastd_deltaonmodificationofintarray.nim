##  Created on: 2007-09-06
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

discard "forward decl of TDataStd_IntegerArray"
discard "forward decl of TDataStd_DeltaOnModificationOfIntArray"
type
  HandleTDataStdDeltaOnModificationOfIntArray* = Handle[
      TDataStdDeltaOnModificationOfIntArray]

## ! This class provides default services for an
## ! AttributeDelta on a MODIFICATION action.

type
  TDataStdDeltaOnModificationOfIntArray* {.
      importcpp: "TDataStd_DeltaOnModificationOfIntArray",
      header: "TDataStd_DeltaOnModificationOfIntArray.hxx", bycopy.} = object of TDF_DeltaOnModification ##
                                                                                                  ## !
                                                                                                  ## Initializes
                                                                                                  ## a
                                                                                                  ## TDF_DeltaOnModification.


proc newTDataStdDeltaOnModificationOfIntArray*(arr: Handle[TDataStdIntegerArray]): TDataStdDeltaOnModificationOfIntArray {.
    cdecl, constructor, importcpp: "TDataStd_DeltaOnModificationOfIntArray(@)",
    header: "TDataStd_DeltaOnModificationOfIntArray.hxx".}
proc apply*(this: var TDataStdDeltaOnModificationOfIntArray) {.cdecl,
    importcpp: "Apply", header: "TDataStd_DeltaOnModificationOfIntArray.hxx".}