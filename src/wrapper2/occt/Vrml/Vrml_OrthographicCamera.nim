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
  ../Standard/Standard_Handle, ../gp/gp_Vec, Vrml_SFRotation,
  ../Standard/Standard_Real, ../Standard/Standard_OStream

discard "forward decl of gp_Vec"
discard "forward decl of Vrml_SFRotation"
type
  Vrml_OrthographicCamera* {.importcpp: "Vrml_OrthographicCamera",
                            header: "Vrml_OrthographicCamera.hxx", bycopy.} = object


proc constructVrml_OrthographicCamera*(): Vrml_OrthographicCamera {.constructor,
    importcpp: "Vrml_OrthographicCamera(@)", header: "Vrml_OrthographicCamera.hxx".}
proc constructVrml_OrthographicCamera*(aPosition: gp_Vec;
                                      aOrientation: Vrml_SFRotation;
                                      aFocalDistance: Standard_Real;
                                      aHeight: Standard_Real): Vrml_OrthographicCamera {.
    constructor, importcpp: "Vrml_OrthographicCamera(@)",
    header: "Vrml_OrthographicCamera.hxx".}
proc SetPosition*(this: var Vrml_OrthographicCamera; aPosition: gp_Vec) {.
    importcpp: "SetPosition", header: "Vrml_OrthographicCamera.hxx".}
proc Position*(this: Vrml_OrthographicCamera): gp_Vec {.noSideEffect,
    importcpp: "Position", header: "Vrml_OrthographicCamera.hxx".}
proc SetOrientation*(this: var Vrml_OrthographicCamera;
                    aOrientation: Vrml_SFRotation) {.importcpp: "SetOrientation",
    header: "Vrml_OrthographicCamera.hxx".}
proc Orientation*(this: Vrml_OrthographicCamera): Vrml_SFRotation {.noSideEffect,
    importcpp: "Orientation", header: "Vrml_OrthographicCamera.hxx".}
proc SetFocalDistance*(this: var Vrml_OrthographicCamera;
                      aFocalDistance: Standard_Real) {.
    importcpp: "SetFocalDistance", header: "Vrml_OrthographicCamera.hxx".}
proc FocalDistance*(this: Vrml_OrthographicCamera): Standard_Real {.noSideEffect,
    importcpp: "FocalDistance", header: "Vrml_OrthographicCamera.hxx".}
proc SetHeight*(this: var Vrml_OrthographicCamera; aHeight: Standard_Real) {.
    importcpp: "SetHeight", header: "Vrml_OrthographicCamera.hxx".}
proc Height*(this: Vrml_OrthographicCamera): Standard_Real {.noSideEffect,
    importcpp: "Height", header: "Vrml_OrthographicCamera.hxx".}
proc Print*(this: Vrml_OrthographicCamera; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_OrthographicCamera.hxx".}