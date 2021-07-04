##  Created on: 2004-11-23
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
##  Autho:     Pavel TELKOV
##  The original implementation Copyright: (C) RINA S.p.A

import
  TObj_Partition

## *
##  This class is partition is predefined hidden flag
##

type
  TObj_HiddenPartition* {.importcpp: "TObj_HiddenPartition",
                         header: "TObj_HiddenPartition.hxx", bycopy.} = object of TObj_Partition ##
                                                                                          ## !
                                                                                          ## constructor
                                                                                          ##
                                                                                          ## !
                                                                                          ## Persistence
                                                                                          ## of
                                                                                          ## TObj
                                                                                          ## object


proc constructTObj_HiddenPartition*(theLabel: TDF_Label): TObj_HiddenPartition {.
    constructor, importcpp: "TObj_HiddenPartition(@)",
    header: "TObj_HiddenPartition.hxx".}
proc GetTypeFlags*(this: TObj_HiddenPartition): Standard_Integer {.noSideEffect,
    importcpp: "GetTypeFlags", header: "TObj_HiddenPartition.hxx".}
## !!!Ignored construct:  protected : ! Persistence of TObj object DECLARE_TOBJOCAF_PERSISTENCE ( TObj_HiddenPartition , TObj_Partition ) public : ! CASCADE RTTI public : typedef TObj_Partition base_type ;
## Error: token expected: ) but got: ,!!!

## ! Define handle class for TObj_HiddenPartition

discard "forward decl of TObj_HiddenPartition"
type
  Handle_TObj_HiddenPartition* = handle[TObj_HiddenPartition]

when defined(_MSC_VER):
  discard