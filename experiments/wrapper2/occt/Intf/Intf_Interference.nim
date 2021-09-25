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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Intf_SectionPoint"
discard "forward decl of Intf_SectionLine"
discard "forward decl of Intf_TangentZone"
type
  IntfInterference* {.importcpp: "Intf_Interference",
                     header: "Intf_Interference.hxx", bycopy.} = object ## ! Gives the number   of  points of  intersection  in the
                                                                   ## ! interference.
                                                                   ## ! Empty constructor


proc nbSectionPoints*(this: IntfInterference): int {.noSideEffect,
    importcpp: "NbSectionPoints", header: "Intf_Interference.hxx".}
proc pntValue*(this: IntfInterference; index: int): IntfSectionPoint {.noSideEffect,
    importcpp: "PntValue", header: "Intf_Interference.hxx".}
proc nbSectionLines*(this: IntfInterference): int {.noSideEffect,
    importcpp: "NbSectionLines", header: "Intf_Interference.hxx".}
proc lineValue*(this: IntfInterference; index: int): IntfSectionLine {.noSideEffect,
    importcpp: "LineValue", header: "Intf_Interference.hxx".}
proc nbTangentZones*(this: IntfInterference): int {.noSideEffect,
    importcpp: "NbTangentZones", header: "Intf_Interference.hxx".}
proc zoneValue*(this: IntfInterference; index: int): IntfTangentZone {.noSideEffect,
    importcpp: "ZoneValue", header: "Intf_Interference.hxx".}
proc getTolerance*(this: IntfInterference): float {.noSideEffect,
    importcpp: "GetTolerance", header: "Intf_Interference.hxx".}
proc contains*(this: IntfInterference; thePnt: IntfSectionPoint): bool {.noSideEffect,
    importcpp: "Contains", header: "Intf_Interference.hxx".}
proc insert*(this: var IntfInterference; theZone: IntfTangentZone): bool {.
    importcpp: "Insert", header: "Intf_Interference.hxx".}
proc insert*(this: var IntfInterference; pdeb: IntfSectionPoint;
            pfin: IntfSectionPoint) {.importcpp: "Insert",
                                    header: "Intf_Interference.hxx".}
proc dump*(this: IntfInterference) {.noSideEffect, importcpp: "Dump",
                                  header: "Intf_Interference.hxx".}
