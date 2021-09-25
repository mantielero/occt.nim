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

discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_DeltaOnResume"
discard "forward decl of TDF_DeltaOnResume"
type
  HandleTDF_DeltaOnResume* = Handle[TDF_DeltaOnResume]

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


proc constructTDF_DeltaOnResume*(anAtt: Handle[TDF_Attribute]): TDF_DeltaOnResume {.
    constructor, importcpp: "TDF_DeltaOnResume(@)", header: "TDF_DeltaOnResume.hxx".}
proc apply*(this: var TDF_DeltaOnResume) {.importcpp: "Apply",
                                       header: "TDF_DeltaOnResume.hxx".}
proc dumpJson*(this: TDF_DeltaOnResume; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDF_DeltaOnResume.hxx".}
type
  TDF_DeltaOnResumebaseType* = TDF_AttributeDelta

proc getTypeName*(): cstring {.importcpp: "TDF_DeltaOnResume::get_type_name(@)",
                            header: "TDF_DeltaOnResume.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDF_DeltaOnResume::get_type_descriptor(@)",
    header: "TDF_DeltaOnResume.hxx".}
proc dynamicType*(this: TDF_DeltaOnResume): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_DeltaOnResume.hxx".}
