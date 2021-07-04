##  Created on: 1996-10-01
##  Created by: Jean Yves LEBEY
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

when defined(OCCT_DEBUG):
  import
    ../OSD/OSD_Chronometer, ../TCollection/TCollection_AsciiString,
    ../Standard/Standard_OStream

  ##  POP pour NT
  type
    TOPKRO* {.importcpp: "TOPKRO", header: "TopOpeBRepTool_KRO.hxx", bycopy.} = object of OSD_Chronometer

  proc constructTOPKRO*(n: TCollection_AsciiString): TOPKRO {.constructor,
      importcpp: "TOPKRO(@)", header: "TopOpeBRepTool_KRO.hxx".}
  proc Start*(this: var TOPKRO) {.importcpp: "Start", header: "TopOpeBRepTool_KRO.hxx".}
  proc Stop*(this: var TOPKRO) {.importcpp: "Stop", header: "TopOpeBRepTool_KRO.hxx".}
  proc Print*(this: var TOPKRO; OS: var Standard_OStream) {.importcpp: "Print",
      header: "TopOpeBRepTool_KRO.hxx".}