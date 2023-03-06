import transfer_types
import ../../tkernel/tcolstd/tcolstd_types





##  Created on: 1992-02-03
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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



proc newTransferHSequenceOfBinder*(): TransferHSequenceOfBinder {.cdecl,
    constructor, importcpp: "Transfer_HSequenceOfBinder(@)", header: "Transfer_HSequenceOfBinder.hxx".}
proc newTransferHSequenceOfBinder*(theOther: TransferSequenceOfBinder): TransferHSequenceOfBinder {.
    cdecl, constructor, importcpp: "Transfer_HSequenceOfBinder(@)", header: "Transfer_HSequenceOfBinder.hxx".}
proc sequence*(this: TransferHSequenceOfBinder): TransferSequenceOfBinder {.
    noSideEffect, cdecl, importcpp: "Sequence", header: "Transfer_HSequenceOfBinder.hxx".}
proc append*(this: var TransferHSequenceOfBinder; theItem: ValueType) {.cdecl,
    importcpp: "Append", header: "Transfer_HSequenceOfBinder.hxx".}
proc append*(this: var TransferHSequenceOfBinder;
            theSequence: var TransferSequenceOfBinder) {.cdecl, importcpp: "Append",
    header: "Transfer_HSequenceOfBinder.hxx".}
proc changeSequence*(this: var TransferHSequenceOfBinder): var TransferSequenceOfBinder {.
    cdecl, importcpp: "ChangeSequence", header: "Transfer_HSequenceOfBinder.hxx".}



