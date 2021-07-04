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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, NLPlate_SequenceOfHGPPConstraint,
  NLPlate_StackOfPlate, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real

discard "forward decl of Geom_Surface"
discard "forward decl of NLPlate_HGPPConstraint"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_XY"
type
  NLPlate_NLPlate* {.importcpp: "NLPlate_NLPlate", header: "NLPlate_NLPlate.hxx",
                    bycopy.} = object


proc constructNLPlate_NLPlate*(InitialSurface: handle[Geom_Surface]): NLPlate_NLPlate {.
    constructor, importcpp: "NLPlate_NLPlate(@)", header: "NLPlate_NLPlate.hxx".}
proc Load*(this: var NLPlate_NLPlate; GConst: handle[NLPlate_HGPPConstraint]) {.
    importcpp: "Load", header: "NLPlate_NLPlate.hxx".}
proc Solve*(this: var NLPlate_NLPlate; ord: Standard_Integer = 2;
           InitialConsraintOrder: Standard_Integer = 1) {.importcpp: "Solve",
    header: "NLPlate_NLPlate.hxx".}
proc Solve2*(this: var NLPlate_NLPlate; ord: Standard_Integer = 2;
            InitialConsraintOrder: Standard_Integer = 1) {.importcpp: "Solve2",
    header: "NLPlate_NLPlate.hxx".}
proc IncrementalSolve*(this: var NLPlate_NLPlate; ord: Standard_Integer = 2;
                      InitialConsraintOrder: Standard_Integer = 1;
                      NbIncrements: Standard_Integer = 4;
                      UVSliding: Standard_Boolean = Standard_False) {.
    importcpp: "IncrementalSolve", header: "NLPlate_NLPlate.hxx".}
proc IsDone*(this: NLPlate_NLPlate): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "NLPlate_NLPlate.hxx".}
proc destroy*(this: var NLPlate_NLPlate) {.importcpp: "destroy",
                                       header: "NLPlate_NLPlate.hxx".}
proc destroyNLPlate_NLPlate*(this: var NLPlate_NLPlate) {.
    importcpp: "#.~NLPlate_NLPlate()", header: "NLPlate_NLPlate.hxx".}
proc Init*(this: var NLPlate_NLPlate) {.importcpp: "Init",
                                    header: "NLPlate_NLPlate.hxx".}
proc Evaluate*(this: NLPlate_NLPlate; point2d: gp_XY): gp_XYZ {.noSideEffect,
    importcpp: "Evaluate", header: "NLPlate_NLPlate.hxx".}
proc EvaluateDerivative*(this: NLPlate_NLPlate; point2d: gp_XY; iu: Standard_Integer;
                        iv: Standard_Integer): gp_XYZ {.noSideEffect,
    importcpp: "EvaluateDerivative", header: "NLPlate_NLPlate.hxx".}
proc Continuity*(this: NLPlate_NLPlate): Standard_Integer {.noSideEffect,
    importcpp: "Continuity", header: "NLPlate_NLPlate.hxx".}
proc ConstraintsSliding*(this: var NLPlate_NLPlate;
                        NbIterations: Standard_Integer = 3) {.
    importcpp: "ConstraintsSliding", header: "NLPlate_NLPlate.hxx".}
proc MaxActiveConstraintOrder*(this: NLPlate_NLPlate): Standard_Integer {.
    noSideEffect, importcpp: "MaxActiveConstraintOrder",
    header: "NLPlate_NLPlate.hxx".}