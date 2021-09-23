##  Created on: 1992-03-02
##  Created by: Laurent BUCHARD
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../IntRes2d/IntRes2d_Position,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of gp_Vec2d"
discard "forward decl of IntRes2d_Transition"
discard "forward decl of IntRes2d_Domain"
discard "forward decl of gp_Pnt2d"
discard "forward decl of IntImpParGen_ImpTool"
discard "forward decl of IntImpParGen_ImpParTool"
discard "forward decl of IntImpParGen_Intersector"
discard "forward decl of IntImpParGen_MyImpParTool"
type
  IntImpParGen* {.importcpp: "IntImpParGen", header: "IntImpParGen.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Template
                                                                                   ## class
                                                                                   ## for
                                                                                   ## an
                                                                                   ## implicit
                                                                                   ## curve.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Math
                                                                                   ## function,
                                                                                   ## instantiated
                                                                                   ## inside
                                                                                   ## the
                                                                                   ## Intersector.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Tool
                                                                                   ## used
                                                                                   ## by
                                                                                   ## the
                                                                                   ## package
                                                                                   ## IntCurve
                                                                                   ## and
                                                                                   ## IntImpParGen


proc DetermineTransition*(Pos1: IntRes2d_Position; Tan1: var gp_Vec2d;
                         Norm1: gp_Vec2d; Trans1: var IntRes2d_Transition;
                         Pos2: IntRes2d_Position; Tan2: var gp_Vec2d;
                         Norm2: gp_Vec2d; Trans2: var IntRes2d_Transition;
                         Tol: Standard_Real) {.
    importcpp: "IntImpParGen::DetermineTransition(@)", header: "IntImpParGen.hxx".}
proc DetermineTransition*(Pos1: IntRes2d_Position; Tan1: var gp_Vec2d;
                         Trans1: var IntRes2d_Transition; Pos2: IntRes2d_Position;
                         Tan2: var gp_Vec2d; Trans2: var IntRes2d_Transition;
                         Tol: Standard_Real): Standard_Boolean {.
    importcpp: "IntImpParGen::DetermineTransition(@)", header: "IntImpParGen.hxx".}
proc DeterminePosition*(Pos1: var IntRes2d_Position; Dom1: IntRes2d_Domain;
                       P1: gp_Pnt2d; Tol: Standard_Real) {.
    importcpp: "IntImpParGen::DeterminePosition(@)", header: "IntImpParGen.hxx".}
proc NormalizeOnDomain*(Par1: var Standard_Real; Dom1: IntRes2d_Domain): Standard_Real {.
    importcpp: "IntImpParGen::NormalizeOnDomain(@)", header: "IntImpParGen.hxx".}