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


proc determineTransition*(pos1: IntRes2dPosition; tan1: var Vec2d; norm1: Vec2d;
                         trans1: var IntRes2dTransition; pos2: IntRes2dPosition;
                         tan2: var Vec2d; norm2: Vec2d;
                         trans2: var IntRes2dTransition; tol: cfloat) {.
    importcpp: "IntImpParGen::DetermineTransition(@)", header: "IntImpParGen.hxx".}
proc determineTransition*(pos1: IntRes2dPosition; tan1: var Vec2d;
                         trans1: var IntRes2dTransition; pos2: IntRes2dPosition;
                         tan2: var Vec2d; trans2: var IntRes2dTransition; tol: cfloat): bool {.
    importcpp: "IntImpParGen::DetermineTransition(@)", header: "IntImpParGen.hxx".}
proc determinePosition*(pos1: var IntRes2dPosition; dom1: IntRes2dDomain; p1: Pnt2d;
                       tol: cfloat) {.importcpp: "IntImpParGen::DeterminePosition(@)",
                                    header: "IntImpParGen.hxx".}
proc normalizeOnDomain*(par1: var cfloat; dom1: IntRes2dDomain): cfloat {.
    importcpp: "IntImpParGen::NormalizeOnDomain(@)", header: "IntImpParGen.hxx".}

























