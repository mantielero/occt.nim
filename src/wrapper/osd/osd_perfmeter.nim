import osd_types



##  Created on: 2002-04-03
##  Created by: Michael SAZONOV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

## ! This class enables measuring the CPU time between two points of code execution, regardless of the scope of these points of code.
## ! A meter is identified by its name (string). So multiple objects in various places of user code may point to the same meter.
## ! The results will be printed on stdout upon finish of the program.
## ! For details see OSD_PerfMeter.h



proc newOSD_PerfMeter*(): OSD_PerfMeter {.cdecl, constructor,
                                       importcpp: "OSD_PerfMeter(@)",
                                       header: "OSD_PerfMeter.hxx".}
proc newOSD_PerfMeter*(theMeter: cstring; theToAutoStart: bool = true): OSD_PerfMeter {.
    cdecl, constructor, importcpp: "OSD_PerfMeter(@)", header: "OSD_PerfMeter.hxx".}
proc init*(this: var OSD_PerfMeter; theMeter: cstring) {.cdecl, importcpp: "Init",
    header: "OSD_PerfMeter.hxx".}
proc start*(this: OSD_PerfMeter) {.noSideEffect, cdecl, importcpp: "Start",
                                header: "OSD_PerfMeter.hxx".}
proc stop*(this: OSD_PerfMeter) {.noSideEffect, cdecl, importcpp: "Stop",
                               header: "OSD_PerfMeter.hxx".}
proc tick*(this: OSD_PerfMeter) {.noSideEffect, cdecl, importcpp: "Tick",
                               header: "OSD_PerfMeter.hxx".}
proc flush*(this: OSD_PerfMeter) {.noSideEffect, cdecl, importcpp: "Flush",
                                header: "OSD_PerfMeter.hxx".}
proc destroyOSD_PerfMeter*(this: var OSD_PerfMeter) {.cdecl,
    importcpp: "#.~OSD_PerfMeter()", header: "OSD_PerfMeter.hxx".}

