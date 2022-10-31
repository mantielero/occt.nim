import ../../tkernel/tcolstd/tcolstd_types
import chfids_types





##  Created on: 1993-11-17
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1993-1999 Matra Datavision
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



proc newChFiDS_HData*(): ChFiDS_HData {.cdecl, constructor,
                                     importcpp: "ChFiDS_HData(@)",
                                     header: "ChFiDS_HData.hxx".}
proc newChFiDS_HData*(theOther: ChFiDS_SequenceOfSurfData): ChFiDS_HData {.cdecl,
    constructor, importcpp: "ChFiDS_HData(@)", header: "ChFiDS_HData.hxx".}
proc sequence*(this: ChFiDS_HData): ChFiDS_SequenceOfSurfData {.noSideEffect, cdecl,
    importcpp: "Sequence", header: "ChFiDS_HData.hxx".}
proc append*(this: var ChFiDS_HData; theItem: ValueType) {.cdecl, importcpp: "Append",
    header: "ChFiDS_HData.hxx".}
proc append*(this: var ChFiDS_HData; theSequence: var ChFiDS_SequenceOfSurfData) {.
    cdecl, importcpp: "Append", header: "ChFiDS_HData.hxx".}
proc changeSequence*(this: var ChFiDS_HData): var ChFiDS_SequenceOfSurfData {.cdecl,
    importcpp: "ChangeSequence", header: "ChFiDS_HData.hxx".}



