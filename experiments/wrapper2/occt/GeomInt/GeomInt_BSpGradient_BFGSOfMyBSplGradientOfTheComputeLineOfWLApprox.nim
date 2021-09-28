##  Created on: 1995-01-27
##  Created by: Jacques GOUSSARD
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

discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of math_MultipleVarFunctionWithGradient"
type
  GeomIntBSpGradientBFGSOfMyBSplGradientOfTheComputeLineOfWLApprox* {.importcpp: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox", header: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx",
      bycopy.} = object of MathBFGS


proc `new`*(this: var GeomIntBSpGradientBFGSOfMyBSplGradientOfTheComputeLineOfWLApprox;
           theSize: csize_t): pointer {.importcpp: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox::operator new", header: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc `delete`*(this: var GeomIntBSpGradientBFGSOfMyBSplGradientOfTheComputeLineOfWLApprox;
              theAddress: pointer) {.importcpp: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox::operator delete", header: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc `new[]`*(this: var GeomIntBSpGradientBFGSOfMyBSplGradientOfTheComputeLineOfWLApprox;
             theSize: csize_t): pointer {.importcpp: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox::operator new[]", header: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc `delete[]`*(this: var GeomIntBSpGradientBFGSOfMyBSplGradientOfTheComputeLineOfWLApprox;
                theAddress: pointer) {.importcpp: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox::operator delete[]", header: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc `new`*(this: var GeomIntBSpGradientBFGSOfMyBSplGradientOfTheComputeLineOfWLApprox;
           a2: csize_t; theAddress: pointer): pointer {.importcpp: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox::operator new", header: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc `delete`*(this: var GeomIntBSpGradientBFGSOfMyBSplGradientOfTheComputeLineOfWLApprox;
              a2: pointer; a3: pointer) {.importcpp: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox::operator delete", header: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc constructGeomIntBSpGradientBFGSOfMyBSplGradientOfTheComputeLineOfWLApprox*(
    f: var MathMultipleVarFunctionWithGradient; startingPoint: MathVector;
    tolerance3d: StandardReal; tolerance2d: StandardReal; eps: StandardReal;
    nbIterations: int = 200): GeomIntBSpGradientBFGSOfMyBSplGradientOfTheComputeLineOfWLApprox {.
    constructor, importcpp: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox(@)", header: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc isSolutionReached*(this: GeomIntBSpGradientBFGSOfMyBSplGradientOfTheComputeLineOfWLApprox;
                       f: var MathMultipleVarFunctionWithGradient): StandardBoolean {.
    noSideEffect, importcpp: "IsSolutionReached", header: "GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx".}