##  Created on: 1998-04-09
##  Created by: Andre LIEUTIER
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Geom_Surface"
discard "forward decl of NLPlate_HGPPConstraint"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_XY"
type
  NLPlateNLPlate* {.importcpp: "NLPlate_NLPlate", header: "NLPlate_NLPlate.hxx",
                   bycopy.} = object


proc constructNLPlateNLPlate*(initialSurface: Handle[GeomSurface]): NLPlateNLPlate {.
    constructor, importcpp: "NLPlate_NLPlate(@)", header: "NLPlate_NLPlate.hxx".}
proc load*(this: var NLPlateNLPlate; gConst: Handle[NLPlateHGPPConstraint]) {.
    importcpp: "Load", header: "NLPlate_NLPlate.hxx".}
proc solve*(this: var NLPlateNLPlate; ord: cint = 2; initialConsraintOrder: cint = 1) {.
    importcpp: "Solve", header: "NLPlate_NLPlate.hxx".}
proc solve2*(this: var NLPlateNLPlate; ord: cint = 2; initialConsraintOrder: cint = 1) {.
    importcpp: "Solve2", header: "NLPlate_NLPlate.hxx".}
proc incrementalSolve*(this: var NLPlateNLPlate; ord: cint = 2;
                      initialConsraintOrder: cint = 1; nbIncrements: cint = 4;
                      uVSliding: bool = false) {.importcpp: "IncrementalSolve",
    header: "NLPlate_NLPlate.hxx".}
proc isDone*(this: NLPlateNLPlate): bool {.noSideEffect, importcpp: "IsDone",
                                       header: "NLPlate_NLPlate.hxx".}
proc destroy*(this: var NLPlateNLPlate) {.importcpp: "destroy",
                                      header: "NLPlate_NLPlate.hxx".}
proc destroyNLPlateNLPlate*(this: var NLPlateNLPlate) {.
    importcpp: "#.~NLPlate_NLPlate()", header: "NLPlate_NLPlate.hxx".}
proc init*(this: var NLPlateNLPlate) {.importcpp: "Init",
                                   header: "NLPlate_NLPlate.hxx".}
proc evaluate*(this: NLPlateNLPlate; point2d: Xy): Xyz {.noSideEffect,
    importcpp: "Evaluate", header: "NLPlate_NLPlate.hxx".}
proc evaluateDerivative*(this: NLPlateNLPlate; point2d: Xy; iu: cint; iv: cint): Xyz {.
    noSideEffect, importcpp: "EvaluateDerivative", header: "NLPlate_NLPlate.hxx".}
proc continuity*(this: NLPlateNLPlate): cint {.noSideEffect, importcpp: "Continuity",
    header: "NLPlate_NLPlate.hxx".}
proc constraintsSliding*(this: var NLPlateNLPlate; nbIterations: cint = 3) {.
    importcpp: "ConstraintsSliding", header: "NLPlate_NLPlate.hxx".}
proc maxActiveConstraintOrder*(this: NLPlateNLPlate): cint {.noSideEffect,
    importcpp: "MaxActiveConstraintOrder", header: "NLPlate_NLPlate.hxx".}

























