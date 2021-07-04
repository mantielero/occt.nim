##  Created on: 1991-06-24
##  Created by: Didier PIFFAULT
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
  ../Standard/Standard_Handle, Intf_SeqOfSectionPoint, Intf_SeqOfSectionLine,
  Intf_SeqOfTangentZone, ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Intf_SectionPoint"
discard "forward decl of Intf_SectionLine"
discard "forward decl of Intf_TangentZone"
type
  Intf_Interference* {.importcpp: "Intf_Interference",
                      header: "Intf_Interference.hxx", bycopy.} = object ## ! Gives the number   of  points of  intersection  in the
                                                                    ## !
                                                                    ## interference.
                                                                    ## ! Empty constructor


proc NbSectionPoints*(this: Intf_Interference): Standard_Integer {.noSideEffect,
    importcpp: "NbSectionPoints", header: "Intf_Interference.hxx".}
proc PntValue*(this: Intf_Interference; Index: Standard_Integer): Intf_SectionPoint {.
    noSideEffect, importcpp: "PntValue", header: "Intf_Interference.hxx".}
proc NbSectionLines*(this: Intf_Interference): Standard_Integer {.noSideEffect,
    importcpp: "NbSectionLines", header: "Intf_Interference.hxx".}
proc LineValue*(this: Intf_Interference; Index: Standard_Integer): Intf_SectionLine {.
    noSideEffect, importcpp: "LineValue", header: "Intf_Interference.hxx".}
proc NbTangentZones*(this: Intf_Interference): Standard_Integer {.noSideEffect,
    importcpp: "NbTangentZones", header: "Intf_Interference.hxx".}
proc ZoneValue*(this: Intf_Interference; Index: Standard_Integer): Intf_TangentZone {.
    noSideEffect, importcpp: "ZoneValue", header: "Intf_Interference.hxx".}
proc GetTolerance*(this: Intf_Interference): Standard_Real {.noSideEffect,
    importcpp: "GetTolerance", header: "Intf_Interference.hxx".}
proc Contains*(this: Intf_Interference; ThePnt: Intf_SectionPoint): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Intf_Interference.hxx".}
proc Insert*(this: var Intf_Interference; TheZone: Intf_TangentZone): Standard_Boolean {.
    importcpp: "Insert", header: "Intf_Interference.hxx".}
proc Insert*(this: var Intf_Interference; pdeb: Intf_SectionPoint;
            pfin: Intf_SectionPoint) {.importcpp: "Insert",
                                     header: "Intf_Interference.hxx".}
proc Dump*(this: Intf_Interference) {.noSideEffect, importcpp: "Dump",
                                   header: "Intf_Interference.hxx".}