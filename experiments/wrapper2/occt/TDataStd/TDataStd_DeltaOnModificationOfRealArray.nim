##  Created on: 2007-10-30
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

discard "forward decl of TDataStd_RealArray"
discard "forward decl of TDataStd_DeltaOnModificationOfRealArray"
discard "forward decl of TDataStd_DeltaOnModificationOfRealArray"
type
  HandleTDataStdDeltaOnModificationOfRealArray* = Handle[
      TDataStdDeltaOnModificationOfRealArray]

## ! This class provides default services for an
## ! AttributeDelta on a MODIFICATION action

type
  TDataStdDeltaOnModificationOfRealArray* {.
      importcpp: "TDataStd_DeltaOnModificationOfRealArray",
      header: "TDataStd_DeltaOnModificationOfRealArray.hxx", bycopy.} = object of TDF_DeltaOnModification ##
                                                                                                   ## !
                                                                                                   ## Initializes
                                                                                                   ## a
                                                                                                   ## TDF_DeltaOnModification.


proc constructTDataStdDeltaOnModificationOfRealArray*(
    arr: Handle[TDataStdRealArray]): TDataStdDeltaOnModificationOfRealArray {.
    constructor, importcpp: "TDataStd_DeltaOnModificationOfRealArray(@)",
    header: "TDataStd_DeltaOnModificationOfRealArray.hxx".}
proc apply*(this: var TDataStdDeltaOnModificationOfRealArray) {.importcpp: "Apply",
    header: "TDataStd_DeltaOnModificationOfRealArray.hxx".}
type
  TDataStdDeltaOnModificationOfRealArraybaseType* = TDF_DeltaOnModification

proc getTypeName*(): cstring {.importcpp: "TDataStd_DeltaOnModificationOfRealArray::get_type_name(@)", header: "TDataStd_DeltaOnModificationOfRealArray.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "TDataStd_DeltaOnModificationOfRealArray::get_type_descriptor(@)",
    header: "TDataStd_DeltaOnModificationOfRealArray.hxx".}
proc dynamicType*(this: TDataStdDeltaOnModificationOfRealArray): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "TDataStd_DeltaOnModificationOfRealArray.hxx".}
