##  Created by: Sergey RUIN
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of TDocStd_Document"
discard "forward decl of TDocStd_CompoundDelta"
discard "forward decl of TDocStd_CompoundDelta"
type
  HandleC1C1* = Handle[TDocStdCompoundDelta]

## ! A delta set is available at <aSourceTime>. If
## ! applied, it restores the TDF_Data in the state it
## ! was at <aTargetTime>.

type
  TDocStdCompoundDelta* {.importcpp: "TDocStd_CompoundDelta",
                         header: "TDocStd_CompoundDelta.hxx", bycopy.} = object of TDF_Delta ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## compound
                                                                                      ## delta.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Validates
                                                                                      ## <me>
                                                                                      ## at
                                                                                      ## <aBeginTime>.
                                                                                      ## If
                                                                                      ## applied,
                                                                                      ## it
                                                                                      ##
                                                                                      ## !
                                                                                      ## restores
                                                                                      ## the
                                                                                      ## TDF_Data
                                                                                      ## in
                                                                                      ## the
                                                                                      ## state
                                                                                      ## it
                                                                                      ## was
                                                                                      ## at
                                                                                      ##
                                                                                      ## !
                                                                                      ## <anEndTime>.
                                                                                      ## Reserved
                                                                                      ## to
                                                                                      ## TDF_Data.


proc constructTDocStdCompoundDelta*(): TDocStdCompoundDelta {.constructor,
    importcpp: "TDocStd_CompoundDelta(@)", header: "TDocStd_CompoundDelta.hxx".}
type
  TDocStdCompoundDeltabaseType* = TDF_Delta

proc getTypeName*(): cstring {.importcpp: "TDocStd_CompoundDelta::get_type_name(@)",
                            header: "TDocStd_CompoundDelta.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDocStd_CompoundDelta::get_type_descriptor(@)",
    header: "TDocStd_CompoundDelta.hxx".}
proc dynamicType*(this: TDocStdCompoundDelta): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDocStd_CompoundDelta.hxx".}

























