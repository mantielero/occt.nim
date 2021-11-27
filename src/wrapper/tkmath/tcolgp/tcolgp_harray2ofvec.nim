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

type
  TColgpHArray2OfVec* {.importcpp: "TColgp_HArray2OfVec",
                       header: "TColgp_HArray2OfVec.hxx", bycopy.} = object of TColgpArray2OfVec


proc newTColgpHArray2OfVec*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                           theColUpp: cint): TColgpHArray2OfVec {.cdecl,
    constructor, importcpp: "TColgp_HArray2OfVec(@)", header: "TColgp_HArray2OfVec.hxx".}
proc newTColgpHArray2OfVec*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                           theColUpp: cint; theValue: ValueType): TColgpHArray2OfVec {.
    cdecl, constructor, importcpp: "TColgp_HArray2OfVec(@)", header: "TColgp_HArray2OfVec.hxx".}
proc newTColgpHArray2OfVec*(theOther: TColgpArray2OfVec): TColgpHArray2OfVec {.
    cdecl, constructor, importcpp: "TColgp_HArray2OfVec(@)", header: "TColgp_HArray2OfVec.hxx".}
proc array2*(this: TColgpHArray2OfVec): TColgpArray2OfVec {.noSideEffect, cdecl,
    importcpp: "Array2", header: "TColgp_HArray2OfVec.hxx".}
proc changeArray2*(this: var TColgpHArray2OfVec): var TColgpArray2OfVec {.cdecl,
    importcpp: "ChangeArray2", header: "TColgp_HArray2OfVec.hxx".}