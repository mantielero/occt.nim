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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Address,
  ../IntCurve/IntCurve_IConicTool, ../math/math_FunctionWithDerivative,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of IntCurve_IConicTool"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
type
  Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter* {.importcpp: "Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter", header: "Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter.hxx",
      bycopy.} = object of math_FunctionWithDerivative ## ! Constructor of the class.


proc constructGeom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter*(
    IT: IntCurve_IConicTool; PC: Adaptor2d_Curve2d): Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter {.
    constructor, importcpp: "Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter(@)", header: "Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc Value*(this: var Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter;
           Param: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc Derivative*(this: var Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter;
                Param: Standard_Real; D: var Standard_Real): Standard_Boolean {.
    importcpp: "Derivative", header: "Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter.hxx".}
proc Values*(this: var Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter;
            Param: Standard_Real; F: var Standard_Real; D: var Standard_Real): Standard_Boolean {.
    importcpp: "Values", header: "Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter.hxx".}