##  Created on: 1999-08-11
##  Created by: Roman LYGIN
##  Copyright (c) 1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient

discard "forward decl of TransferBRep_TransferResultInfo"
discard "forward decl of TransferBRep_TransferResultInfo"
type
  Handle_TransferBRep_TransferResultInfo* = handle[TransferBRep_TransferResultInfo]

## ! Data structure for storing information on transfer result.
## ! At the moment it dispatches information for the following types:
## ! - result,
## ! - result + warning(s),
## ! - result + fail(s),
## ! - result + warning(s) + fail(s)
## ! - no result,
## ! - no result + warning(s),
## ! - no result + fail(s),
## ! - no result + warning(s) + fail(s),

type
  TransferBRep_TransferResultInfo* {.importcpp: "TransferBRep_TransferResultInfo", header: "TransferBRep_TransferResultInfo.hxx",
                                    bycopy.} = object of Standard_Transient ## ! Creates object with all fields
                                                                       ## nullified.


proc constructTransferBRep_TransferResultInfo*(): TransferBRep_TransferResultInfo {.
    constructor, importcpp: "TransferBRep_TransferResultInfo(@)",
    header: "TransferBRep_TransferResultInfo.hxx".}
proc Clear*(this: var TransferBRep_TransferResultInfo) {.importcpp: "Clear",
    header: "TransferBRep_TransferResultInfo.hxx".}
proc Result*(this: var TransferBRep_TransferResultInfo): var Standard_Integer {.
    importcpp: "Result", header: "TransferBRep_TransferResultInfo.hxx".}
proc ResultWarning*(this: var TransferBRep_TransferResultInfo): var Standard_Integer {.
    importcpp: "ResultWarning", header: "TransferBRep_TransferResultInfo.hxx".}
proc ResultFail*(this: var TransferBRep_TransferResultInfo): var Standard_Integer {.
    importcpp: "ResultFail", header: "TransferBRep_TransferResultInfo.hxx".}
proc ResultWarningFail*(this: var TransferBRep_TransferResultInfo): var Standard_Integer {.
    importcpp: "ResultWarningFail", header: "TransferBRep_TransferResultInfo.hxx".}
proc NoResult*(this: var TransferBRep_TransferResultInfo): var Standard_Integer {.
    importcpp: "NoResult", header: "TransferBRep_TransferResultInfo.hxx".}
proc NoResultWarning*(this: var TransferBRep_TransferResultInfo): var Standard_Integer {.
    importcpp: "NoResultWarning", header: "TransferBRep_TransferResultInfo.hxx".}
proc NoResultFail*(this: var TransferBRep_TransferResultInfo): var Standard_Integer {.
    importcpp: "NoResultFail", header: "TransferBRep_TransferResultInfo.hxx".}
proc NoResultWarningFail*(this: var TransferBRep_TransferResultInfo): var Standard_Integer {.
    importcpp: "NoResultWarningFail",
    header: "TransferBRep_TransferResultInfo.hxx".}
type
  TransferBRep_TransferResultInfobase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TransferBRep_TransferResultInfo::get_type_name(@)",
                              header: "TransferBRep_TransferResultInfo.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TransferBRep_TransferResultInfo::get_type_descriptor(@)",
    header: "TransferBRep_TransferResultInfo.hxx".}
proc DynamicType*(this: TransferBRep_TransferResultInfo): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TransferBRep_TransferResultInfo.hxx".}