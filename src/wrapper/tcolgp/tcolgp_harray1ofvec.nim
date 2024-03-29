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

proc newTColgpHArray1OfVec*(theLower: cint; theUpper: cint): TColgpHArray1OfVec {.
    cdecl, constructor, importcpp: "TColgp_HArray1OfVec(@)", header: "TColgp_HArray1OfVec.hxx".}
proc newTColgpHArray1OfVec*(theLower: cint; theUpper: cint; theValue: ValueType): TColgpHArray1OfVec {.
    cdecl, constructor, importcpp: "TColgp_HArray1OfVec(@)", header: "TColgp_HArray1OfVec.hxx".}
proc newTColgpHArray1OfVec*(theOther: TColgpArray1OfVec): TColgpHArray1OfVec {.
    cdecl, constructor, importcpp: "TColgp_HArray1OfVec(@)", header: "TColgp_HArray1OfVec.hxx".}
proc array1*(this: TColgpHArray1OfVec): TColgpArray1OfVec {.noSideEffect, cdecl,
    importcpp: "Array1", header: "TColgp_HArray1OfVec.hxx".}
