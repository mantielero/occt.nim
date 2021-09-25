##  Created on: 1998-11-10
##  Created by: Igor FEOKTISTOV
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

discard "forward decl of PLib_Base"
discard "forward decl of Standard_ConstructionError"
type
  FEmToolElementsOfRefMatrix* {.importcpp: "FEmTool_ElementsOfRefMatrix",
                               header: "FEmTool_ElementsOfRefMatrix.hxx", bycopy.} = object of MathFunctionSet


proc constructFEmToolElementsOfRefMatrix*(theBase: Handle[PLibBase]; derOrder: int): FEmToolElementsOfRefMatrix {.
    constructor, importcpp: "FEmTool_ElementsOfRefMatrix(@)",
    header: "FEmTool_ElementsOfRefMatrix.hxx".}
proc nbVariables*(this: FEmToolElementsOfRefMatrix): int {.noSideEffect,
    importcpp: "NbVariables", header: "FEmTool_ElementsOfRefMatrix.hxx".}
proc nbEquations*(this: FEmToolElementsOfRefMatrix): int {.noSideEffect,
    importcpp: "NbEquations", header: "FEmTool_ElementsOfRefMatrix.hxx".}
proc value*(this: var FEmToolElementsOfRefMatrix; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "FEmTool_ElementsOfRefMatrix.hxx".}
