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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TDF/TDF_DeltaOnModification

discard "forward decl of TColStd_HPackedMapOfInteger"
discard "forward decl of TDataStd_IntPackedMap"
discard "forward decl of TDataStd_DeltaOnModificationOfIntPackedMap"
discard "forward decl of TDataStd_DeltaOnModificationOfIntPackedMap"
type
  Handle_TDataStd_DeltaOnModificationOfIntPackedMap* = handle[
      TDataStd_DeltaOnModificationOfIntPackedMap]

## ! This class provides default services for an
## ! AttributeDelta on a MODIFICATION action.

type
  TDataStd_DeltaOnModificationOfIntPackedMap* {.
      importcpp: "TDataStd_DeltaOnModificationOfIntPackedMap",
      header: "TDataStd_DeltaOnModificationOfIntPackedMap.hxx", bycopy.} = object of TDF_DeltaOnModification ##
                                                                                                      ## !
                                                                                                      ## Initializes
                                                                                                      ## a
                                                                                                      ## TDF_DeltaOnModification.


proc constructTDataStd_DeltaOnModificationOfIntPackedMap*(
    Arr: handle[TDataStd_IntPackedMap]): TDataStd_DeltaOnModificationOfIntPackedMap {.
    constructor, importcpp: "TDataStd_DeltaOnModificationOfIntPackedMap(@)",
    header: "TDataStd_DeltaOnModificationOfIntPackedMap.hxx".}
proc Apply*(this: var TDataStd_DeltaOnModificationOfIntPackedMap) {.
    importcpp: "Apply", header: "TDataStd_DeltaOnModificationOfIntPackedMap.hxx".}
type
  TDataStd_DeltaOnModificationOfIntPackedMapbase_type* = TDF_DeltaOnModification

proc get_type_name*(): cstring {.importcpp: "TDataStd_DeltaOnModificationOfIntPackedMap::get_type_name(@)", header: "TDataStd_DeltaOnModificationOfIntPackedMap.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "TDataStd_DeltaOnModificationOfIntPackedMap::get_type_descriptor(@)",
    header: "TDataStd_DeltaOnModificationOfIntPackedMap.hxx".}
proc DynamicType*(this: TDataStd_DeltaOnModificationOfIntPackedMap): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "TDataStd_DeltaOnModificationOfIntPackedMap.hxx".}