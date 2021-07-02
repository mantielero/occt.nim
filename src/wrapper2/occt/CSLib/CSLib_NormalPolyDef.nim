##  Created on: 1996-08-23
##  Created by: Benoit TANNIOU
##  Copyright (c) 1996-1999 Matra Datavision
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

type
  CSLibNormalPolyDef* {.importcpp: "CSLib_NormalPolyDef",
                       header: "CSLib_NormalPolyDef.hxx", bycopy.} = object of MathFunctionWithDerivative


proc constructCSLibNormalPolyDef*(k0: StandardInteger; li: TColStdArray1OfReal): CSLibNormalPolyDef {.
    constructor, importcpp: "CSLib_NormalPolyDef(@)",
    header: "CSLib_NormalPolyDef.hxx".}
proc value*(this: var CSLibNormalPolyDef; x: StandardReal; f: var StandardReal): StandardBoolean {.
    importcpp: "Value", header: "CSLib_NormalPolyDef.hxx".}
proc derivative*(this: var CSLibNormalPolyDef; x: StandardReal; d: var StandardReal): StandardBoolean {.
    importcpp: "Derivative", header: "CSLib_NormalPolyDef.hxx".}
proc values*(this: var CSLibNormalPolyDef; x: StandardReal; f: var StandardReal;
            d: var StandardReal): StandardBoolean {.importcpp: "Values",
    header: "CSLib_NormalPolyDef.hxx".}

