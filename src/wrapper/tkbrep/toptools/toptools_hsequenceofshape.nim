import toptools_types
import ../../tkernel/tcolstd/tcolstd_types



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



proc newTopToolsHSequenceOfShape*(): TopToolsHSequenceOfShape {.cdecl, constructor,
    importcpp: "TopTools_HSequenceOfShape(@)", header: "TopTools_HSequenceOfShape.hxx".}
proc newTopToolsHSequenceOfShape*(theOther: TopToolsSequenceOfShape): TopToolsHSequenceOfShape {.
    cdecl, constructor, importcpp: "TopTools_HSequenceOfShape(@)", header: "TopTools_HSequenceOfShape.hxx".}
proc sequence*(this: TopToolsHSequenceOfShape): TopToolsSequenceOfShape {.
    noSideEffect, cdecl, importcpp: "Sequence", header: "TopTools_HSequenceOfShape.hxx".}
proc append*(this: var TopToolsHSequenceOfShape; theItem: ValueType) {.cdecl,
    importcpp: "Append", header: "TopTools_HSequenceOfShape.hxx".}
proc append*(this: var TopToolsHSequenceOfShape;
            theSequence: var TopToolsSequenceOfShape) {.cdecl, importcpp: "Append",
    header: "TopTools_HSequenceOfShape.hxx".}
proc changeSequence*(this: var TopToolsHSequenceOfShape): var TopToolsSequenceOfShape {.
    cdecl, importcpp: "ChangeSequence", header: "TopTools_HSequenceOfShape.hxx".}


