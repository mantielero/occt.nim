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


proc newBndSphere*(): BndSphere {.cdecl, constructor, importcpp: "Bnd_Sphere(@)",
                               dynlib: tkmath.}
proc newBndSphere*(theCntr: Xyz; theRad: cfloat; theU: cint; theV: cint): BndSphere {.
    cdecl, constructor, importcpp: "Bnd_Sphere(@)", dynlib: tkmath.}
proc u*(this: BndSphere): cint {.noSideEffect, cdecl, importcpp: "U", dynlib: tkmath.}
proc v*(this: BndSphere): cint {.noSideEffect, cdecl, importcpp: "V", dynlib: tkmath.}
proc isValid*(this: BndSphere): bool {.noSideEffect, cdecl, importcpp: "IsValid",
                                   dynlib: tkmath.}
proc setValid*(this: var BndSphere; isValid: bool) {.cdecl, importcpp: "SetValid",
    dynlib: tkmath.}
proc center*(this: BndSphere): Xyz {.noSideEffect, cdecl, importcpp: "Center",
                                 dynlib: tkmath.}
proc radius*(this: BndSphere): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                    dynlib: tkmath.}
proc distances*(this: BndSphere; theXYZ: Xyz; theMin: var cfloat; theMax: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Distances", dynlib: tkmath.}
proc squareDistances*(this: BndSphere; theXYZ: Xyz; theMin: var cfloat;
                     theMax: var cfloat) {.noSideEffect, cdecl,
                                        importcpp: "SquareDistances",
                                        dynlib: tkmath.}
proc project*(this: BndSphere; theNode: Xyz; theProjNode: var Xyz; theDist: var cfloat;
             theInside: var bool): bool {.noSideEffect, cdecl, importcpp: "Project",
                                      dynlib: tkmath.}
proc distance*(this: BndSphere; theNode: Xyz): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc squareDistance*(this: BndSphere; theNode: Xyz): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc add*(this: var BndSphere; theOther: BndSphere) {.cdecl, importcpp: "Add",
    dynlib: tkmath.}
proc isOut*(this: BndSphere; theOther: BndSphere): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndSphere; thePnt: Xyz; theMaxDist: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsOut", dynlib: tkmath.}
proc squareExtent*(this: BndSphere): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareExtent", dynlib: tkmath.}