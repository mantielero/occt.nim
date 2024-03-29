



##  Created on: 1997-10-22
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1997-1999 Matra Datavision
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
  ##  -----------------------------------------------------------------------
  ##  TopOpeBRepTool_STATE : class of 4 booleans matching TopAbs_State values
  ##  -----------------------------------------------------------------------
  type
    TopOpeBRepToolSTATE* {.importcpp: "TopOpeBRepTool_STATE",
                          header: "TopOpeBRepTool_STATE.hxx", bycopy.} = object

  proc newTopOpeBRepToolSTATE*(name: cstring; b: bool = false): TopOpeBRepToolSTATE {.
      cdecl, constructor, importcpp: "TopOpeBRepTool_STATE(@)", header: "TopOpeBRepTool_STATE.hxx".}
  proc set*(this: var TopOpeBRepToolSTATE; b: bool) {.cdecl, importcpp: "Set",
      header: "TopOpeBRepTool_STATE.hxx".}
  proc set*(this: var TopOpeBRepToolSTATE; s: TopAbsState; b: bool) {.cdecl,
      importcpp: "Set", header: "TopOpeBRepTool_STATE.hxx".}
  proc set*(this: var TopOpeBRepToolSTATE; b: bool; n: cint; a: cstringArray) {.cdecl,
      importcpp: "Set", header: "TopOpeBRepTool_STATE.hxx".}
  proc get*(this: var TopOpeBRepToolSTATE; s: TopAbsState): bool {.cdecl,
      importcpp: "Get", header: "TopOpeBRepTool_STATE.hxx".}
  proc get*(this: var TopOpeBRepToolSTATE): bool {.cdecl, importcpp: "Get",
      header: "TopOpeBRepTool_STATE.hxx".}
  proc print*(this: var TopOpeBRepToolSTATE) {.cdecl, importcpp: "Print",
      header: "TopOpeBRepTool_STATE.hxx".}

