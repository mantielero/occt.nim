##  Created on: 1998-03-26
##  Created by: # Andre LIEUTIER
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
  ../Standard/Standard_Handle, Plate_LinearXYZConstraint,
  ../TColgp/TColgp_SequenceOfXY

discard "forward decl of Plate_LinearXYZConstraint"
type
  Plate_GlobalTranslationConstraint* {.importcpp: "Plate_GlobalTranslationConstraint", header: "Plate_GlobalTranslationConstraint.hxx",
                                      bycopy.} = object


proc constructPlate_GlobalTranslationConstraint*(SOfXY: TColgp_SequenceOfXY): Plate_GlobalTranslationConstraint {.
    constructor, importcpp: "Plate_GlobalTranslationConstraint(@)",
    header: "Plate_GlobalTranslationConstraint.hxx".}
proc LXYZC*(this: Plate_GlobalTranslationConstraint): Plate_LinearXYZConstraint {.
    noSideEffect, importcpp: "LXYZC",
    header: "Plate_GlobalTranslationConstraint.hxx".}