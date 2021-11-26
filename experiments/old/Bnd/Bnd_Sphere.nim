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

discard "forward decl of gp_XYZ"
type
  BndSphere* {.importcpp: "Bnd_Sphere", header: "Bnd_Sphere.hxx", bycopy.} = object ## !
                                                                            ## Empty
                                                                            ## constructor


proc constructBndSphere*(): BndSphere {.constructor, importcpp: "Bnd_Sphere(@)",
                                     header: "Bnd_Sphere.hxx".}
proc constructBndSphere*(theCntr: Xyz; theRad: cfloat; theU: cint; theV: cint): BndSphere {.
    constructor, importcpp: "Bnd_Sphere(@)", header: "Bnd_Sphere.hxx".}
proc u*(this: BndSphere): cint {.noSideEffect, importcpp: "U", header: "Bnd_Sphere.hxx".}
proc v*(this: BndSphere): cint {.noSideEffect, importcpp: "V", header: "Bnd_Sphere.hxx".}
proc isValid*(this: BndSphere): bool {.noSideEffect, importcpp: "IsValid",
                                   header: "Bnd_Sphere.hxx".}
proc setValid*(this: var BndSphere; isValid: bool) {.importcpp: "SetValid",
    header: "Bnd_Sphere.hxx".}
proc center*(this: BndSphere): Xyz {.noSideEffect, importcpp: "Center",
                                 header: "Bnd_Sphere.hxx".}
proc radius*(this: BndSphere): cfloat {.noSideEffect, importcpp: "Radius",
                                    header: "Bnd_Sphere.hxx".}
proc distances*(this: BndSphere; theXYZ: Xyz; theMin: var cfloat; theMax: var cfloat) {.
    noSideEffect, importcpp: "Distances", header: "Bnd_Sphere.hxx".}
proc squareDistances*(this: BndSphere; theXYZ: Xyz; theMin: var cfloat;
                     theMax: var cfloat) {.noSideEffect,
                                        importcpp: "SquareDistances",
                                        header: "Bnd_Sphere.hxx".}
proc project*(this: BndSphere; theNode: Xyz; theProjNode: var Xyz; theDist: var cfloat;
             theInside: var bool): bool {.noSideEffect, importcpp: "Project",
                                      header: "Bnd_Sphere.hxx".}
proc distance*(this: BndSphere; theNode: Xyz): cfloat {.noSideEffect,
    importcpp: "Distance", header: "Bnd_Sphere.hxx".}
proc squareDistance*(this: BndSphere; theNode: Xyz): cfloat {.noSideEffect,
    importcpp: "SquareDistance", header: "Bnd_Sphere.hxx".}
proc add*(this: var BndSphere; theOther: BndSphere) {.importcpp: "Add",
    header: "Bnd_Sphere.hxx".}
proc isOut*(this: BndSphere; theOther: BndSphere): bool {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Sphere.hxx".}
proc isOut*(this: BndSphere; thePnt: Xyz; theMaxDist: var cfloat): bool {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Sphere.hxx".}
proc squareExtent*(this: BndSphere): cfloat {.noSideEffect,
    importcpp: "SquareExtent", header: "Bnd_Sphere.hxx".}

























