##  Created on: 1991-04-11
##  Created by: Michel CHAUVAT
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../GProp/GProp_GProps

discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of gp_Pnt"
type
  BRepGProp_Cinert* {.importcpp: "BRepGProp_Cinert",
                     header: "BRepGProp_Cinert.hxx", bycopy.} = object of GProp_GProps


proc constructBRepGProp_Cinert*(): BRepGProp_Cinert {.constructor,
    importcpp: "BRepGProp_Cinert(@)", header: "BRepGProp_Cinert.hxx".}
proc constructBRepGProp_Cinert*(C: BRepAdaptor_Curve; CLocation: gp_Pnt): BRepGProp_Cinert {.
    constructor, importcpp: "BRepGProp_Cinert(@)", header: "BRepGProp_Cinert.hxx".}
proc SetLocation*(this: var BRepGProp_Cinert; CLocation: gp_Pnt) {.
    importcpp: "SetLocation", header: "BRepGProp_Cinert.hxx".}
proc Perform*(this: var BRepGProp_Cinert; C: BRepAdaptor_Curve) {.
    importcpp: "Perform", header: "BRepGProp_Cinert.hxx".}