##  Created by: DAUTRY Philippe
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

## ! This class provides options closure management.

type
  TDF_ClosureMode* {.importcpp: "TDF_ClosureMode", header: "TDF_ClosureMode.hxx",
                    bycopy.} = object ## ! Creates an objet with all modes set to <aMode>.


proc constructTDF_ClosureMode*(aMode: Standard_Boolean = Standard_True): TDF_ClosureMode {.
    constructor, importcpp: "TDF_ClosureMode(@)", header: "TDF_ClosureMode.hxx".}
proc Descendants*(this: var TDF_ClosureMode; aStatus: Standard_Boolean) {.
    importcpp: "Descendants", header: "TDF_ClosureMode.hxx".}
proc Descendants*(this: TDF_ClosureMode): Standard_Boolean {.noSideEffect,
    importcpp: "Descendants", header: "TDF_ClosureMode.hxx".}
proc References*(this: var TDF_ClosureMode; aStatus: Standard_Boolean) {.
    importcpp: "References", header: "TDF_ClosureMode.hxx".}
proc References*(this: TDF_ClosureMode): Standard_Boolean {.noSideEffect,
    importcpp: "References", header: "TDF_ClosureMode.hxx".}