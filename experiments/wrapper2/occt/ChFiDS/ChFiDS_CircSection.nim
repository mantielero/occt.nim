##  Created on: 1996-03-06
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../gp/gp_Circ, ../gp/gp_Lin,
  ../Standard/Standard_Real

discard "forward decl of gp_Circ"
discard "forward decl of gp_Lin"
type
  ChFiDS_CircSection* {.importcpp: "ChFiDS_CircSection",
                       header: "ChFiDS_CircSection.hxx", bycopy.} = object


proc constructChFiDS_CircSection*(): ChFiDS_CircSection {.constructor,
    importcpp: "ChFiDS_CircSection(@)", header: "ChFiDS_CircSection.hxx".}
proc Set*(this: var ChFiDS_CircSection; C: gp_Circ; F: Standard_Real; L: Standard_Real) {.
    importcpp: "Set", header: "ChFiDS_CircSection.hxx".}
proc Set*(this: var ChFiDS_CircSection; C: gp_Lin; F: Standard_Real; L: Standard_Real) {.
    importcpp: "Set", header: "ChFiDS_CircSection.hxx".}
proc Get*(this: ChFiDS_CircSection; C: var gp_Circ; F: var Standard_Real;
         L: var Standard_Real) {.noSideEffect, importcpp: "Get",
                              header: "ChFiDS_CircSection.hxx".}
proc Get*(this: ChFiDS_CircSection; C: var gp_Lin; F: var Standard_Real;
         L: var Standard_Real) {.noSideEffect, importcpp: "Get",
                              header: "ChFiDS_CircSection.hxx".}