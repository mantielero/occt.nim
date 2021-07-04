##  Created on: 1994-10-07
##  Created by: Yves FRICAUD
##  Copyright (c) 1994-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepMAT2d_DataMapOfShapeSequenceOfBasicElt,
  BRepMAT2d_DataMapOfBasicEltShape, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of BRepMAT2d_Explorer"
discard "forward decl of BRepMAT2d_BisectingLocus"
discard "forward decl of TopoDS_Shape"
discard "forward decl of MAT_BasicElt"
discard "forward decl of TopoDS_Wire"
type
  BRepMAT2d_LinkTopoBilo* {.importcpp: "BRepMAT2d_LinkTopoBilo",
                           header: "BRepMAT2d_LinkTopoBilo.hxx", bycopy.} = object


proc constructBRepMAT2d_LinkTopoBilo*(): BRepMAT2d_LinkTopoBilo {.constructor,
    importcpp: "BRepMAT2d_LinkTopoBilo(@)", header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc constructBRepMAT2d_LinkTopoBilo*(Explo: BRepMAT2d_Explorer;
                                     BiLo: BRepMAT2d_BisectingLocus): BRepMAT2d_LinkTopoBilo {.
    constructor, importcpp: "BRepMAT2d_LinkTopoBilo(@)",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc Perform*(this: var BRepMAT2d_LinkTopoBilo; Explo: BRepMAT2d_Explorer;
             BiLo: BRepMAT2d_BisectingLocus) {.importcpp: "Perform",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc Init*(this: var BRepMAT2d_LinkTopoBilo; S: TopoDS_Shape) {.importcpp: "Init",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc More*(this: var BRepMAT2d_LinkTopoBilo): Standard_Boolean {.importcpp: "More",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc Next*(this: var BRepMAT2d_LinkTopoBilo) {.importcpp: "Next",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc Value*(this: BRepMAT2d_LinkTopoBilo): handle[MAT_BasicElt] {.noSideEffect,
    importcpp: "Value", header: "BRepMAT2d_LinkTopoBilo.hxx".}
proc GeneratingShape*(this: BRepMAT2d_LinkTopoBilo; aBE: handle[MAT_BasicElt]): TopoDS_Shape {.
    noSideEffect, importcpp: "GeneratingShape",
    header: "BRepMAT2d_LinkTopoBilo.hxx".}