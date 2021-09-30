##  Created on: 1995-06-13
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of AdvApprox_ApproxAFunction"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom_BSplineCurve"
type
  GeomLibMakeCurvefromApprox* {.importcpp: "GeomLib_MakeCurvefromApprox",
                               header: "GeomLib_MakeCurvefromApprox.hxx", bycopy.} = object


proc `new`*(this: var GeomLibMakeCurvefromApprox; theSize: csize_t): pointer {.
    importcpp: "GeomLib_MakeCurvefromApprox::operator new",
    header: "GeomLib_MakeCurvefromApprox.hxx".}
proc `delete`*(this: var GeomLibMakeCurvefromApprox; theAddress: pointer) {.
    importcpp: "GeomLib_MakeCurvefromApprox::operator delete",
    header: "GeomLib_MakeCurvefromApprox.hxx".}
proc `new[]`*(this: var GeomLibMakeCurvefromApprox; theSize: csize_t): pointer {.
    importcpp: "GeomLib_MakeCurvefromApprox::operator new[]",
    header: "GeomLib_MakeCurvefromApprox.hxx".}
proc `delete[]`*(this: var GeomLibMakeCurvefromApprox; theAddress: pointer) {.
    importcpp: "GeomLib_MakeCurvefromApprox::operator delete[]",
    header: "GeomLib_MakeCurvefromApprox.hxx".}
proc `new`*(this: var GeomLibMakeCurvefromApprox; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomLib_MakeCurvefromApprox::operator new",
    header: "GeomLib_MakeCurvefromApprox.hxx".}
proc `delete`*(this: var GeomLibMakeCurvefromApprox; a2: pointer; a3: pointer) {.
    importcpp: "GeomLib_MakeCurvefromApprox::operator delete",
    header: "GeomLib_MakeCurvefromApprox.hxx".}
proc constructGeomLibMakeCurvefromApprox*(approx: AdvApproxApproxAFunction): GeomLibMakeCurvefromApprox {.
    constructor, importcpp: "GeomLib_MakeCurvefromApprox(@)",
    header: "GeomLib_MakeCurvefromApprox.hxx".}
proc isDone*(this: GeomLibMakeCurvefromApprox): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomLib_MakeCurvefromApprox.hxx".}
proc nb1DSpaces*(this: GeomLibMakeCurvefromApprox): int {.noSideEffect,
    importcpp: "Nb1DSpaces", header: "GeomLib_MakeCurvefromApprox.hxx".}
proc nb2DSpaces*(this: GeomLibMakeCurvefromApprox): int {.noSideEffect,
    importcpp: "Nb2DSpaces", header: "GeomLib_MakeCurvefromApprox.hxx".}
proc nb3DSpaces*(this: GeomLibMakeCurvefromApprox): int {.noSideEffect,
    importcpp: "Nb3DSpaces", header: "GeomLib_MakeCurvefromApprox.hxx".}
proc curve2d*(this: GeomLibMakeCurvefromApprox; index2d: int): Handle[
    Geom2dBSplineCurve] {.noSideEffect, importcpp: "Curve2d",
                         header: "GeomLib_MakeCurvefromApprox.hxx".}
proc curve2dFromTwo1d*(this: GeomLibMakeCurvefromApprox; index1d: int; index2d: int): Handle[
    Geom2dBSplineCurve] {.noSideEffect, importcpp: "Curve2dFromTwo1d",
                         header: "GeomLib_MakeCurvefromApprox.hxx".}
proc curve2d*(this: GeomLibMakeCurvefromApprox; index1d: int; index2d: int): Handle[
    Geom2dBSplineCurve] {.noSideEffect, importcpp: "Curve2d",
                         header: "GeomLib_MakeCurvefromApprox.hxx".}
proc curve*(this: GeomLibMakeCurvefromApprox; index3d: int): Handle[GeomBSplineCurve] {.
    noSideEffect, importcpp: "Curve", header: "GeomLib_MakeCurvefromApprox.hxx".}
proc curve*(this: GeomLibMakeCurvefromApprox; index1D: int; index3D: int): Handle[
    GeomBSplineCurve] {.noSideEffect, importcpp: "Curve",
                       header: "GeomLib_MakeCurvefromApprox.hxx".}