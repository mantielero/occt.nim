import ../tcollection/tcollection_types
import osd_types



##  Created on: 1992-05-18
##  Created by: Stephan GARNAUD (ARM)
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



proc newOSD_Error*(): OSD_Error {.cdecl, constructor, importcpp: "OSD_Error(@)",
                               header: "OSD_Error.hxx".}
proc perror*(this: var OSD_Error) {.cdecl, importcpp: "Perror", header: "OSD_Error.hxx".}
proc setValue*(this: var OSD_Error; errcode: cint; `from`: cint;
              message: TCollectionAsciiString) {.cdecl, importcpp: "SetValue",
    header: "OSD_Error.hxx".}
proc error*(this: OSD_Error): cint {.noSideEffect, cdecl, importcpp: "Error",
                                 header: "OSD_Error.hxx".}
proc failed*(this: OSD_Error): bool {.noSideEffect, cdecl, importcpp: "Failed",
                                  header: "OSD_Error.hxx".}
proc reset*(this: var OSD_Error) {.cdecl, importcpp: "Reset", header: "OSD_Error.hxx".}

