import interface_types

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



proc newInterfaceHSequenceOfCheck*(): InterfaceHSequenceOfCheck {.cdecl,
    constructor, importcpp: "Interface_HSequenceOfCheck(@)", header: "Interface_HSequenceOfCheck.hxx".}
proc newInterfaceHSequenceOfCheck*(theOther: InterfaceSequenceOfCheck): InterfaceHSequenceOfCheck {.
    cdecl, constructor, importcpp: "Interface_HSequenceOfCheck(@)", header: "Interface_HSequenceOfCheck.hxx".}
proc sequence*(this: InterfaceHSequenceOfCheck): InterfaceSequenceOfCheck {.
    noSideEffect, cdecl, importcpp: "Sequence", header: "Interface_HSequenceOfCheck.hxx".}
proc append*(this: var InterfaceHSequenceOfCheck; theItem: ValueType) {.cdecl,
    importcpp: "Append", header: "Interface_HSequenceOfCheck.hxx".}
proc append*(this: var InterfaceHSequenceOfCheck;
            theSequence: var InterfaceSequenceOfCheck) {.cdecl, importcpp: "Append",
    header: "Interface_HSequenceOfCheck.hxx".}
proc changeSequence*(this: var InterfaceHSequenceOfCheck): var InterfaceSequenceOfCheck {.
    cdecl, importcpp: "ChangeSequence", header: "Interface_HSequenceOfCheck.hxx".}



