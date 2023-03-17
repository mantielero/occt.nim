##  Created on: 2008-01-23
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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

discard "forward decl of TColStd_HPackedMapOfInteger"
discard "forward decl of TDataStd_IntPackedMap"
discard "forward decl of TDataStd_DeltaOnModificationOfIntPackedMap"
type
  HandleTDataStdDeltaOnModificationOfIntPackedMap* = Handle[
      TDataStdDeltaOnModificationOfIntPackedMap]

## ! This class provides default services for an
## ! AttributeDelta on a MODIFICATION action.

type
  TDataStdDeltaOnModificationOfIntPackedMap* {.
      importcpp: "TDataStd_DeltaOnModificationOfIntPackedMap",
      header: "TDataStd_DeltaOnModificationOfIntPackedMap.hxx", bycopy.} = object of TDF_DeltaOnModification ##
                                                                                                      ## !
                                                                                                      ## Initializes
                                                                                                      ## a
                                                                                                      ## TDF_DeltaOnModification.


proc newTDataStdDeltaOnModificationOfIntPackedMap*(
    arr: Handle[TDataStdIntPackedMap]): TDataStdDeltaOnModificationOfIntPackedMap {.
    cdecl, constructor,
    importcpp: "TDataStd_DeltaOnModificationOfIntPackedMap(@)",
    header: "TDataStd_DeltaOnModificationOfIntPackedMap.hxx".}
proc apply*(this: var TDataStdDeltaOnModificationOfIntPackedMap) {.cdecl,
    importcpp: "Apply", header: "TDataStd_DeltaOnModificationOfIntPackedMap.hxx".}