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
discard "forward decl of TDataStd_DeltaOnModificationOfIntPackedMap"
type
  HandleC1C1* = Handle[TDataStdDeltaOnModificationOfIntPackedMap]

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


proc constructTDataStdDeltaOnModificationOfIntPackedMap*(
    arr: Handle[TDataStdIntPackedMap]): TDataStdDeltaOnModificationOfIntPackedMap {.
    constructor, importcpp: "TDataStd_DeltaOnModificationOfIntPackedMap(@)",
    header: "TDataStd_DeltaOnModificationOfIntPackedMap.hxx".}
proc apply*(this: var TDataStdDeltaOnModificationOfIntPackedMap) {.
    importcpp: "Apply", header: "TDataStd_DeltaOnModificationOfIntPackedMap.hxx".}
type
  TDataStdDeltaOnModificationOfIntPackedMapbaseType* = TDF_DeltaOnModification

proc getTypeName*(): cstring {.importcpp: "TDataStd_DeltaOnModificationOfIntPackedMap::get_type_name(@)", header: "TDataStd_DeltaOnModificationOfIntPackedMap.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "TDataStd_DeltaOnModificationOfIntPackedMap::get_type_descriptor(@)",
    header: "TDataStd_DeltaOnModificationOfIntPackedMap.hxx".}
proc dynamicType*(this: TDataStdDeltaOnModificationOfIntPackedMap): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "TDataStd_DeltaOnModificationOfIntPackedMap.hxx".}

























