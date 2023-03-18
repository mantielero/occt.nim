import ../tcolstd/tcolstd_types
import storage_types



##  Created on: 1996-04-30
##  Created by: cle
##  Copyright (c) 1996-1999 Matra Datavision
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



proc newStorageHSeqOfRoot*(): StorageHSeqOfRoot {.cdecl, constructor,
    importcpp: "Storage_HSeqOfRoot(@)", header: "Storage_HSeqOfRoot.hxx".}
proc newStorageHSeqOfRoot*(theOther: StorageSeqOfRoot): StorageHSeqOfRoot {.cdecl,
    constructor, importcpp: "Storage_HSeqOfRoot(@)",
    header: "Storage_HSeqOfRoot.hxx".}
proc sequence*(this: StorageHSeqOfRoot): StorageSeqOfRoot {.noSideEffect, cdecl,
    importcpp: "Sequence", header: "Storage_HSeqOfRoot.hxx".}
proc append*(this: var StorageHSeqOfRoot; theItem: ValueType) {.cdecl,
    importcpp: "Append", header: "Storage_HSeqOfRoot.hxx".}
proc append*(this: var StorageHSeqOfRoot; theSequence: var StorageSeqOfRoot) {.cdecl,
    importcpp: "Append", header: "Storage_HSeqOfRoot.hxx".}
proc changeSequence*(this: var StorageHSeqOfRoot): var StorageSeqOfRoot {.cdecl,
    importcpp: "ChangeSequence", header: "Storage_HSeqOfRoot.hxx".}


