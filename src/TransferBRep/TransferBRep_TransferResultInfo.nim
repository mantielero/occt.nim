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

discard "forward decl of TransferBRep_TransferResultInfo"
discard "forward decl of TransferBRep_TransferResultInfo"
type
  HandleC1C1* = Handle[TransferBRepTransferResultInfo]

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
  TransferBRepTransferResultInfo* {.importcpp: "TransferBRep_TransferResultInfo", header: "TransferBRep_TransferResultInfo.hxx",
                                   bycopy.} = object of StandardTransient ## ! Creates object with all fields nullified.


proc constructTransferBRepTransferResultInfo*(): TransferBRepTransferResultInfo {.
    constructor, importcpp: "TransferBRep_TransferResultInfo(@)",
    header: "TransferBRep_TransferResultInfo.hxx".}
proc clear*(this: var TransferBRepTransferResultInfo) {.importcpp: "Clear",
    header: "TransferBRep_TransferResultInfo.hxx".}
proc result*(this: var TransferBRepTransferResultInfo): var cint {.
    importcpp: "Result", header: "TransferBRep_TransferResultInfo.hxx".}
proc resultWarning*(this: var TransferBRepTransferResultInfo): var cint {.
    importcpp: "ResultWarning", header: "TransferBRep_TransferResultInfo.hxx".}
proc resultFail*(this: var TransferBRepTransferResultInfo): var cint {.
    importcpp: "ResultFail", header: "TransferBRep_TransferResultInfo.hxx".}
proc resultWarningFail*(this: var TransferBRepTransferResultInfo): var cint {.
    importcpp: "ResultWarningFail", header: "TransferBRep_TransferResultInfo.hxx".}
proc noResult*(this: var TransferBRepTransferResultInfo): var cint {.
    importcpp: "NoResult", header: "TransferBRep_TransferResultInfo.hxx".}
proc noResultWarning*(this: var TransferBRepTransferResultInfo): var cint {.
    importcpp: "NoResultWarning", header: "TransferBRep_TransferResultInfo.hxx".}
proc noResultFail*(this: var TransferBRepTransferResultInfo): var cint {.
    importcpp: "NoResultFail", header: "TransferBRep_TransferResultInfo.hxx".}
proc noResultWarningFail*(this: var TransferBRepTransferResultInfo): var cint {.
    importcpp: "NoResultWarningFail",
    header: "TransferBRep_TransferResultInfo.hxx".}
type
  TransferBRepTransferResultInfobaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TransferBRep_TransferResultInfo::get_type_name(@)",
                            header: "TransferBRep_TransferResultInfo.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TransferBRep_TransferResultInfo::get_type_descriptor(@)",
    header: "TransferBRep_TransferResultInfo.hxx".}
proc dynamicType*(this: TransferBRepTransferResultInfo): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TransferBRep_TransferResultInfo.hxx".}

























