##  Created on: 1993-09-28
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TColgp/TColgp_HArray2OfPnt, ../TColStd/TColStd_HArray2OfReal,
  ../Standard/Standard_Integer, ../TColgp/TColgp_Array2OfPnt,
  ../TColStd/TColStd_Array2OfReal

discard "forward decl of Standard_NoSuchObject"
type
  GeomFill_Filling* {.importcpp: "GeomFill_Filling",
                     header: "GeomFill_Filling.hxx", bycopy.} = object


proc constructGeomFill_Filling*(): GeomFill_Filling {.constructor,
    importcpp: "GeomFill_Filling(@)", header: "GeomFill_Filling.hxx".}
proc NbUPoles*(this: GeomFill_Filling): Standard_Integer {.noSideEffect,
    importcpp: "NbUPoles", header: "GeomFill_Filling.hxx".}
proc NbVPoles*(this: GeomFill_Filling): Standard_Integer {.noSideEffect,
    importcpp: "NbVPoles", header: "GeomFill_Filling.hxx".}
proc Poles*(this: GeomFill_Filling; Poles: var TColgp_Array2OfPnt) {.noSideEffect,
    importcpp: "Poles", header: "GeomFill_Filling.hxx".}
proc isRational*(this: GeomFill_Filling): Standard_Boolean {.noSideEffect,
    importcpp: "isRational", header: "GeomFill_Filling.hxx".}
proc Weights*(this: GeomFill_Filling; Weights: var TColStd_Array2OfReal) {.
    noSideEffect, importcpp: "Weights", header: "GeomFill_Filling.hxx".}