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

discard "forward decl of gp_Trsf"
type
  VrmlMatrixTransform* {.importcpp: "Vrml_MatrixTransform",
                        header: "Vrml_MatrixTransform.hxx", bycopy.} = object


proc constructVrmlMatrixTransform*(): VrmlMatrixTransform {.constructor,
    importcpp: "Vrml_MatrixTransform(@)", header: "Vrml_MatrixTransform.hxx".}
proc constructVrmlMatrixTransform*(aMatrix: Trsf): VrmlMatrixTransform {.
    constructor, importcpp: "Vrml_MatrixTransform(@)",
    header: "Vrml_MatrixTransform.hxx".}
proc setMatrix*(this: var VrmlMatrixTransform; aMatrix: Trsf) {.
    importcpp: "SetMatrix", header: "Vrml_MatrixTransform.hxx".}
proc matrix*(this: VrmlMatrixTransform): Trsf {.noSideEffect, importcpp: "Matrix",
    header: "Vrml_MatrixTransform.hxx".}
proc print*(this: VrmlMatrixTransform; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_MatrixTransform.hxx".}
