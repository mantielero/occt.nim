##  Created on: 1992-06-04
##  Created by: Jacques GOUSSARD
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

discard "forward decl of IntCurve_IConicTool"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
type
  Geom2dIntMyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter* {.importcpp: "Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter", header: "Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter.hxx",
      bycopy.} = object of MathFunctionWithDerivative ## ! Constructor of the class.


proc constructGeom2dIntMyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter*(
    it: IntCurveIConicTool; pc: Adaptor2dCurve2d): Geom2dIntMyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter(@)", header: "Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc value*(this: var Geom2dIntMyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter;
           param: StandardReal; f: var StandardReal): StandardBoolean {.
    importcpp: "Value", header: "Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc derivative*(this: var Geom2dIntMyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter;
                param: StandardReal; d: var StandardReal): StandardBoolean {.
    importcpp: "Derivative", header: "Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc values*(this: var Geom2dIntMyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter;
            param: StandardReal; f: var StandardReal; d: var StandardReal): StandardBoolean {.
    importcpp: "Values", header: "Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter.hxx".}

