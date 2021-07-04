##  Created on: 1996-12-25
##  Created by: Alexander BRIVIN
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_OStream

## ! defines a Cube node of VRML specifying geometry shapes.
## ! This  node  represents  a  cuboid aligned with  the coordinate  axes.
## ! By  default ,  the  cube  is  centred  at  (0,0,0) and  measures  2  units
## ! in  each  dimension, from -1  to  +1.
## ! A cube's width is its extent along its object-space X axis, its height is
## ! its extent along the object-space Y axis, and its depth is its extent along its
## ! object-space Z axis.

type
  Vrml_Cube* {.importcpp: "Vrml_Cube", header: "Vrml_Cube.hxx", bycopy.} = object


proc constructVrml_Cube*(aWidth: Standard_Real = 2; aHeight: Standard_Real = 2;
                        aDepth: Standard_Real = 2): Vrml_Cube {.constructor,
    importcpp: "Vrml_Cube(@)", header: "Vrml_Cube.hxx".}
proc SetWidth*(this: var Vrml_Cube; aWidth: Standard_Real) {.importcpp: "SetWidth",
    header: "Vrml_Cube.hxx".}
proc Width*(this: Vrml_Cube): Standard_Real {.noSideEffect, importcpp: "Width",
    header: "Vrml_Cube.hxx".}
proc SetHeight*(this: var Vrml_Cube; aHeight: Standard_Real) {.importcpp: "SetHeight",
    header: "Vrml_Cube.hxx".}
proc Height*(this: Vrml_Cube): Standard_Real {.noSideEffect, importcpp: "Height",
    header: "Vrml_Cube.hxx".}
proc SetDepth*(this: var Vrml_Cube; aDepth: Standard_Real) {.importcpp: "SetDepth",
    header: "Vrml_Cube.hxx".}
proc Depth*(this: Vrml_Cube): Standard_Real {.noSideEffect, importcpp: "Depth",
    header: "Vrml_Cube.hxx".}
proc Print*(this: Vrml_Cube; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Cube.hxx".}