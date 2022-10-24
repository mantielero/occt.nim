import tcolgp_types

##  Created on: 1993-03-10
##  Created by: Philippe DAUTRY
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



proc newTColgpHSequenceOfVec*(): TColgpHSequenceOfVec {.cdecl, constructor,
    importcpp: "TColgp_HSequenceOfVec(@)", header: "TColgp_HSequenceOfVec.hxx".}
proc newTColgpHSequenceOfVec*(theOther: TColgpSequenceOfVec): TColgpHSequenceOfVec {.
    cdecl, constructor, importcpp: "TColgp_HSequenceOfVec(@)", header: "TColgp_HSequenceOfVec.hxx".}
proc sequence*(this: TColgpHSequenceOfVec): TColgpSequenceOfVec {.noSideEffect,
    cdecl, importcpp: "Sequence", header: "TColgp_HSequenceOfVec.hxx".}
proc append*(this: var TColgpHSequenceOfVec; theItem: ValueType) {.cdecl,
    importcpp: "Append", header: "TColgp_HSequenceOfVec.hxx".}
proc append*(this: var TColgpHSequenceOfVec; theSequence: var TColgpSequenceOfVec) {.
    cdecl, importcpp: "Append", header: "TColgp_HSequenceOfVec.hxx".}
proc changeSequence*(this: var TColgpHSequenceOfVec): var TColgpSequenceOfVec {.cdecl,
    importcpp: "ChangeSequence", header: "TColgp_HSequenceOfVec.hxx".}

