##  Created on: 1992-03-04
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

discard "forward decl of IntCurve_IConicTool"
discard "forward decl of IntCurve_PConic"
discard "forward decl of IntCurve_PConicTool"
type
  IntCurveMyImpParToolOfIntImpConicParConic* {.
      importcpp: "IntCurve_MyImpParToolOfIntImpConicParConic",
      header: "IntCurve_MyImpParToolOfIntImpConicParConic.hxx", bycopy.} = object of MathFunctionWithDerivative ##
                                                                                                         ## !
                                                                                                         ## Constructor
                                                                                                         ## of
                                                                                                         ## the
                                                                                                         ## class.


proc constructIntCurveMyImpParToolOfIntImpConicParConic*(it: IntCurveIConicTool;
    pc: IntCurvePConic): IntCurveMyImpParToolOfIntImpConicParConic {.constructor,
    importcpp: "IntCurve_MyImpParToolOfIntImpConicParConic(@)",
    header: "IntCurve_MyImpParToolOfIntImpConicParConic.hxx".}
proc value*(this: var IntCurveMyImpParToolOfIntImpConicParConic; param: float;
           f: var float): bool {.importcpp: "Value", header: "IntCurve_MyImpParToolOfIntImpConicParConic.hxx".}
proc derivative*(this: var IntCurveMyImpParToolOfIntImpConicParConic; param: float;
                d: var float): bool {.importcpp: "Derivative", header: "IntCurve_MyImpParToolOfIntImpConicParConic.hxx".}
proc values*(this: var IntCurveMyImpParToolOfIntImpConicParConic; param: float;
            f: var float; d: var float): bool {.importcpp: "Values",
    header: "IntCurve_MyImpParToolOfIntImpConicParConic.hxx".}
