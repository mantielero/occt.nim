##  Created on: 1993-06-02
##  Created by: Laurent BOURESCHE
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Sweep_NumShape, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_Orientation

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Sweep_NumShape"
type
  Sweep_NumShapeIterator* {.importcpp: "Sweep_NumShapeIterator",
                           header: "Sweep_NumShapeIterator.hxx", bycopy.} = object


proc constructSweep_NumShapeIterator*(): Sweep_NumShapeIterator {.constructor,
    importcpp: "Sweep_NumShapeIterator(@)", header: "Sweep_NumShapeIterator.hxx".}
proc Init*(this: var Sweep_NumShapeIterator; aShape: Sweep_NumShape) {.
    importcpp: "Init", header: "Sweep_NumShapeIterator.hxx".}
proc More*(this: Sweep_NumShapeIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "Sweep_NumShapeIterator.hxx".}
proc Next*(this: var Sweep_NumShapeIterator) {.importcpp: "Next",
    header: "Sweep_NumShapeIterator.hxx".}
proc Value*(this: Sweep_NumShapeIterator): Sweep_NumShape {.noSideEffect,
    importcpp: "Value", header: "Sweep_NumShapeIterator.hxx".}
proc Orientation*(this: Sweep_NumShapeIterator): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "Sweep_NumShapeIterator.hxx".}