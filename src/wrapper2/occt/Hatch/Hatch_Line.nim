##  Created on: 1992-08-18
##  Created by: Modelistation
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../gp/gp_Lin2d, Hatch_LineForm,
  Hatch_SequenceOfParameter, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Hatch_Hatcher"
discard "forward decl of gp_Lin2d"
type
  Hatch_Line* {.importcpp: "Hatch_Line", header: "Hatch_Line.hxx", bycopy.} = object


proc constructHatch_Line*(): Hatch_Line {.constructor, importcpp: "Hatch_Line(@)",
                                       header: "Hatch_Line.hxx".}
proc constructHatch_Line*(L: gp_Lin2d; T: Hatch_LineForm): Hatch_Line {.constructor,
    importcpp: "Hatch_Line(@)", header: "Hatch_Line.hxx".}
proc AddIntersection*(this: var Hatch_Line; Par1: Standard_Real;
                     Start: Standard_Boolean; Index: Standard_Integer;
                     Par2: Standard_Real; theToler: Standard_Real) {.
    importcpp: "AddIntersection", header: "Hatch_Line.hxx".}