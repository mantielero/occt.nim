##  Created on: 2007-12-04
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

discard "forward decl of TDataStd_ExtStringArray"
discard "forward decl of TDataStd_DeltaOnModificationOfExtStringArray"
discard "forward decl of TDataStd_DeltaOnModificationOfExtStringArray"
type
  HandleC1C1* = Handle[TDataStdDeltaOnModificationOfExtStringArray]

## ! This class provides default services for an
## ! AttributeDelta on a MODIFICATION action.

type
  TDataStdDeltaOnModificationOfExtStringArray* {.
      importcpp: "TDataStd_DeltaOnModificationOfExtStringArray",
      header: "TDataStd_DeltaOnModificationOfExtStringArray.hxx", bycopy.} = object of TDF_DeltaOnModification ##
                                                                                                        ## !
                                                                                                        ## Initializes
                                                                                                        ## a
                                                                                                        ## TDF_DeltaOnModification.


proc constructTDataStdDeltaOnModificationOfExtStringArray*(
    arr: Handle[TDataStdExtStringArray]): TDataStdDeltaOnModificationOfExtStringArray {.
    constructor, importcpp: "TDataStd_DeltaOnModificationOfExtStringArray(@)",
    header: "TDataStd_DeltaOnModificationOfExtStringArray.hxx".}
proc apply*(this: var TDataStdDeltaOnModificationOfExtStringArray) {.
    importcpp: "Apply", header: "TDataStd_DeltaOnModificationOfExtStringArray.hxx".}
type
  TDataStdDeltaOnModificationOfExtStringArraybaseType* = TDF_DeltaOnModification

proc getTypeName*(): cstring {.importcpp: "TDataStd_DeltaOnModificationOfExtStringArray::get_type_name(@)", header: "TDataStd_DeltaOnModificationOfExtStringArray.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "TDataStd_DeltaOnModificationOfExtStringArray::get_type_descriptor(@)",
    header: "TDataStd_DeltaOnModificationOfExtStringArray.hxx".}
proc dynamicType*(this: TDataStdDeltaOnModificationOfExtStringArray): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "TDataStd_DeltaOnModificationOfExtStringArray.hxx".}

























