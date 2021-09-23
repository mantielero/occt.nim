##  Created on: 1997-02-12
##  Created by: Alexander BRIVIN
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../gp/gp_Trsf, ../Standard/Standard_OStream

discard "forward decl of gp_Trsf"
type
  Vrml_MatrixTransform* {.importcpp: "Vrml_MatrixTransform",
                         header: "Vrml_MatrixTransform.hxx", bycopy.} = object


proc constructVrml_MatrixTransform*(): Vrml_MatrixTransform {.constructor,
    importcpp: "Vrml_MatrixTransform(@)", header: "Vrml_MatrixTransform.hxx".}
proc constructVrml_MatrixTransform*(aMatrix: gp_Trsf): Vrml_MatrixTransform {.
    constructor, importcpp: "Vrml_MatrixTransform(@)",
    header: "Vrml_MatrixTransform.hxx".}
proc SetMatrix*(this: var Vrml_MatrixTransform; aMatrix: gp_Trsf) {.
    importcpp: "SetMatrix", header: "Vrml_MatrixTransform.hxx".}
proc Matrix*(this: Vrml_MatrixTransform): gp_Trsf {.noSideEffect,
    importcpp: "Matrix", header: "Vrml_MatrixTransform.hxx".}
proc Print*(this: Vrml_MatrixTransform; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_MatrixTransform.hxx".}