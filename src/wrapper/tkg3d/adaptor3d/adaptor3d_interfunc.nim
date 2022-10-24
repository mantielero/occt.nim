import adaptor3d_types

##  Created on: 1998-02-18
##  Created by: Jeanine PANCIATICI
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

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_ConstructionError"


proc newAdaptor3dInterFunc*(c: Handle[Adaptor2dHCurve2d]; fixVal: cfloat; fix: cint): Adaptor3dInterFunc {.
    cdecl, constructor, importcpp: "Adaptor3d_InterFunc(@)", header: "Adaptor3d_InterFunc.hxx".}
proc value*(this: var Adaptor3dInterFunc; x: cfloat; f: var cfloat): bool {.cdecl,
    importcpp: "Value", header: "Adaptor3d_InterFunc.hxx".}
proc derivative*(this: var Adaptor3dInterFunc; x: cfloat; d: var cfloat): bool {.cdecl,
    importcpp: "Derivative", header: "Adaptor3d_InterFunc.hxx".}
proc values*(this: var Adaptor3dInterFunc; x: cfloat; f: var cfloat; d: var cfloat): bool {.
    cdecl, importcpp: "Values", header: "Adaptor3d_InterFunc.hxx".}
