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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfInteger,
  ../TColStd/TColStd_HArray1OfExtendedString, ../Standard/Standard_Integer,
  ../TDF/TDF_DeltaOnModification

discard "forward decl of TDataStd_ExtStringArray"
discard "forward decl of TDataStd_DeltaOnModificationOfExtStringArray"
discard "forward decl of TDataStd_DeltaOnModificationOfExtStringArray"
type
  Handle_TDataStd_DeltaOnModificationOfExtStringArray* = handle[
      TDataStd_DeltaOnModificationOfExtStringArray]

## ! This class provides default services for an
## ! AttributeDelta on a MODIFICATION action.

type
  TDataStd_DeltaOnModificationOfExtStringArray* {.
      importcpp: "TDataStd_DeltaOnModificationOfExtStringArray",
      header: "TDataStd_DeltaOnModificationOfExtStringArray.hxx", bycopy.} = object of TDF_DeltaOnModification ##
                                                                                                        ## !
                                                                                                        ## Initializes
                                                                                                        ## a
                                                                                                        ## TDF_DeltaOnModification.


proc constructTDataStd_DeltaOnModificationOfExtStringArray*(
    Arr: handle[TDataStd_ExtStringArray]): TDataStd_DeltaOnModificationOfExtStringArray {.
    constructor, importcpp: "TDataStd_DeltaOnModificationOfExtStringArray(@)",
    header: "TDataStd_DeltaOnModificationOfExtStringArray.hxx".}
proc Apply*(this: var TDataStd_DeltaOnModificationOfExtStringArray) {.
    importcpp: "Apply", header: "TDataStd_DeltaOnModificationOfExtStringArray.hxx".}
type
  TDataStd_DeltaOnModificationOfExtStringArraybase_type* = TDF_DeltaOnModification

proc get_type_name*(): cstring {.importcpp: "TDataStd_DeltaOnModificationOfExtStringArray::get_type_name(@)", header: "TDataStd_DeltaOnModificationOfExtStringArray.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "TDataStd_DeltaOnModificationOfExtStringArray::get_type_descriptor(@)",
    header: "TDataStd_DeltaOnModificationOfExtStringArray.hxx".}
proc DynamicType*(this: TDataStd_DeltaOnModificationOfExtStringArray): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "TDataStd_DeltaOnModificationOfExtStringArray.hxx".}