

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
  ##  POP pour NT
  type
    Topkro* {.importcpp: "TOPKRO", header: "TopOpeBRepTool_KRO.hxx", bycopy.} = object of OSD_Chronometer

  proc newTopkro*(n: TCollectionAsciiString): Topkro {.cdecl, constructor,
      importcpp: "TOPKRO(@)", header: "TopOpeBRepTool_KRO.hxx".}
  proc start*(this: var Topkro) {.cdecl, importcpp: "Start", header: "TopOpeBRepTool_KRO.hxx".}
  proc stop*(this: var Topkro) {.cdecl, importcpp: "Stop", header: "TopOpeBRepTool_KRO.hxx".}
  proc print*(this: var Topkro; os: var StandardOStream) {.cdecl, importcpp: "Print",
      header: "TopOpeBRepTool_KRO.hxx".}
