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

import ../tcolstd/tcolstd_types

proc newTColgpHSequenceOfXYZ*(): TColgpHSequenceOfXYZ {.cdecl, constructor,
    importcpp: "TColgp_HSequenceOfXYZ(@)", header: "TColgp_HSequenceOfXYZ.hxx".}
proc newTColgpHSequenceOfXYZ*(theOther: TColgpSequenceOfXYZ): TColgpHSequenceOfXYZ {.
    cdecl, constructor, importcpp: "TColgp_HSequenceOfXYZ(@)", header: "TColgp_HSequenceOfXYZ.hxx".}
proc sequence*(this: TColgpHSequenceOfXYZ): TColgpSequenceOfXYZ {.noSideEffect,
    cdecl, importcpp: "Sequence", header: "TColgp_HSequenceOfXYZ.hxx".}
proc append*(this: var TColgpHSequenceOfXYZ; theItem: ValueType) {.cdecl,
    importcpp: "Append", header: "TColgp_HSequenceOfXYZ.hxx".}
proc append*(this: var TColgpHSequenceOfXYZ; theSequence: var TColgpSequenceOfXYZ) {.
    cdecl, importcpp: "Append", header: "TColgp_HSequenceOfXYZ.hxx".}
proc changeSequence*(this: var TColgpHSequenceOfXYZ): var TColgpSequenceOfXYZ {.cdecl,
    importcpp: "ChangeSequence", header: "TColgp_HSequenceOfXYZ.hxx".}

