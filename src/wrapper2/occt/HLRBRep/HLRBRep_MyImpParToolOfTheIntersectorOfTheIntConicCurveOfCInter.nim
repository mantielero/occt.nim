##  Created on: 1992-10-14
##  Created by: Christophe MARION
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
discard "forward decl of HLRBRep_CurveTool"
type
  HLRBRepMyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter* {.importcpp: "HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter", header: "HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter.hxx",
      bycopy.} = object of MathFunctionWithDerivative ## ! Constructor of the class.


proc constructHLRBRepMyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter*(
    it: IntCurveIConicTool; pc: StandardAddress): HLRBRepMyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter {.
    constructor, importcpp: "HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter(@)", header: "HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter.hxx".}
proc value*(this: var HLRBRepMyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter;
           param: StandardReal; f: var StandardReal): StandardBoolean {.
    importcpp: "Value", header: "HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter.hxx".}
proc derivative*(this: var HLRBRepMyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter;
                param: StandardReal; d: var StandardReal): StandardBoolean {.
    importcpp: "Derivative", header: "HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter.hxx".}
proc values*(this: var HLRBRepMyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter;
            param: StandardReal; f: var StandardReal; d: var StandardReal): StandardBoolean {.
    importcpp: "Values", header: "HLRBRep_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfCInter.hxx".}

