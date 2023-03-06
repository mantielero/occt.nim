import toptools_types
import ../tcolstd/tcolstd_types





##  Created on: 1993-01-14
##  Created by: Remi LEQUETTE
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



proc newTopToolsHArray2OfShape*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                               theColUpp: cint): TopToolsHArray2OfShape {.cdecl,
    constructor, importcpp: "TopTools_HArray2OfShape(@)", header: "TopTools_HArray2OfShape.hxx".}
proc newTopToolsHArray2OfShape*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                               theColUpp: cint; theValue: ValueType): TopToolsHArray2OfShape {.
    cdecl, constructor, importcpp: "TopTools_HArray2OfShape(@)", header: "TopTools_HArray2OfShape.hxx".}
proc newTopToolsHArray2OfShape*(theOther: TopToolsArray2OfShape): TopToolsHArray2OfShape {.
    cdecl, constructor, importcpp: "TopTools_HArray2OfShape(@)", header: "TopTools_HArray2OfShape.hxx".}
proc array2*(this: TopToolsHArray2OfShape): TopToolsArray2OfShape {.noSideEffect,
    cdecl, importcpp: "Array2", header: "TopTools_HArray2OfShape.hxx".}
proc changeArray2*(this: var TopToolsHArray2OfShape): var TopToolsArray2OfShape {.
    cdecl, importcpp: "ChangeArray2", header: "TopTools_HArray2OfShape.hxx".}


