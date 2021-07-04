##  Created on: 2010-12-03
##  Created by: Artem SHAL
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../gp/gp_XYZ, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of gp_XYZ"
type
  Bnd_Sphere* {.importcpp: "Bnd_Sphere", header: "Bnd_Sphere.hxx", bycopy.} = object ## !
                                                                             ## Empty
                                                                             ## constructor


proc constructBnd_Sphere*(): Bnd_Sphere {.constructor, importcpp: "Bnd_Sphere(@)",
                                       header: "Bnd_Sphere.hxx".}
proc constructBnd_Sphere*(theCntr: gp_XYZ; theRad: Standard_Real;
                         theU: Standard_Integer; theV: Standard_Integer): Bnd_Sphere {.
    constructor, importcpp: "Bnd_Sphere(@)", header: "Bnd_Sphere.hxx".}
proc U*(this: Bnd_Sphere): Standard_Integer {.noSideEffect, importcpp: "U",
    header: "Bnd_Sphere.hxx".}
proc V*(this: Bnd_Sphere): Standard_Integer {.noSideEffect, importcpp: "V",
    header: "Bnd_Sphere.hxx".}
proc IsValid*(this: Bnd_Sphere): Standard_Boolean {.noSideEffect,
    importcpp: "IsValid", header: "Bnd_Sphere.hxx".}
proc SetValid*(this: var Bnd_Sphere; isValid: Standard_Boolean) {.
    importcpp: "SetValid", header: "Bnd_Sphere.hxx".}
proc Center*(this: Bnd_Sphere): gp_XYZ {.noSideEffect, importcpp: "Center",
                                     header: "Bnd_Sphere.hxx".}
proc Radius*(this: Bnd_Sphere): Standard_Real {.noSideEffect, importcpp: "Radius",
    header: "Bnd_Sphere.hxx".}
proc Distances*(this: Bnd_Sphere; theXYZ: gp_XYZ; theMin: var Standard_Real;
               theMax: var Standard_Real) {.noSideEffect, importcpp: "Distances",
    header: "Bnd_Sphere.hxx".}
proc SquareDistances*(this: Bnd_Sphere; theXYZ: gp_XYZ; theMin: var Standard_Real;
                     theMax: var Standard_Real) {.noSideEffect,
    importcpp: "SquareDistances", header: "Bnd_Sphere.hxx".}
proc Project*(this: Bnd_Sphere; theNode: gp_XYZ; theProjNode: var gp_XYZ;
             theDist: var Standard_Real; theInside: var Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "Project", header: "Bnd_Sphere.hxx".}
proc Distance*(this: Bnd_Sphere; theNode: gp_XYZ): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "Bnd_Sphere.hxx".}
proc SquareDistance*(this: Bnd_Sphere; theNode: gp_XYZ): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance", header: "Bnd_Sphere.hxx".}
proc Add*(this: var Bnd_Sphere; theOther: Bnd_Sphere) {.importcpp: "Add",
    header: "Bnd_Sphere.hxx".}
proc IsOut*(this: Bnd_Sphere; theOther: Bnd_Sphere): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Sphere.hxx".}
proc IsOut*(this: Bnd_Sphere; thePnt: gp_XYZ; theMaxDist: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_Sphere.hxx".}
proc SquareExtent*(this: Bnd_Sphere): Standard_Real {.noSideEffect,
    importcpp: "SquareExtent", header: "Bnd_Sphere.hxx".}