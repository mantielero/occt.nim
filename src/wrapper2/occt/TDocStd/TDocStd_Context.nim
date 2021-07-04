##  Created on: 1998-06-08
##  Created by: Isabelle GRIGNON
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean

type
  TDocStd_Context* {.importcpp: "TDocStd_Context", header: "TDocStd_Context.hxx",
                    bycopy.} = object


proc constructTDocStd_Context*(): TDocStd_Context {.constructor,
    importcpp: "TDocStd_Context(@)", header: "TDocStd_Context.hxx".}
proc SetModifiedReferences*(this: var TDocStd_Context; Mod: Standard_Boolean) {.
    importcpp: "SetModifiedReferences", header: "TDocStd_Context.hxx".}
proc ModifiedReferences*(this: TDocStd_Context): Standard_Boolean {.noSideEffect,
    importcpp: "ModifiedReferences", header: "TDocStd_Context.hxx".}