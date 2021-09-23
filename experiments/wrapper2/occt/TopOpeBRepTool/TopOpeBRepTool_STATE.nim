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
  import
    ../Standard/Standard_Type, ../TopAbs/TopAbs_State

  ##  -----------------------------------------------------------------------
  ##  TopOpeBRepTool_STATE : class of 4 booleans matching TopAbs_State values
  ##  -----------------------------------------------------------------------
  type
    TopOpeBRepTool_STATE* {.importcpp: "TopOpeBRepTool_STATE",
                           header: "TopOpeBRepTool_STATE.hxx", bycopy.} = object

  proc constructTopOpeBRepTool_STATE*(name: cstring;
                                     b: Standard_Boolean = Standard_False): TopOpeBRepTool_STATE {.
      constructor, importcpp: "TopOpeBRepTool_STATE(@)",
      header: "TopOpeBRepTool_STATE.hxx".}
  proc Set*(this: var TopOpeBRepTool_STATE; b: Standard_Boolean) {.importcpp: "Set",
      header: "TopOpeBRepTool_STATE.hxx".}
  proc Set*(this: var TopOpeBRepTool_STATE; S: TopAbs_State; b: Standard_Boolean) {.
      importcpp: "Set", header: "TopOpeBRepTool_STATE.hxx".}
  proc Set*(this: var TopOpeBRepTool_STATE; b: Standard_Boolean; n: Standard_Integer;
           a: cstringArray) {.importcpp: "Set", header: "TopOpeBRepTool_STATE.hxx".}
  proc Get*(this: var TopOpeBRepTool_STATE; S: TopAbs_State): Standard_Boolean {.
      importcpp: "Get", header: "TopOpeBRepTool_STATE.hxx".}
  proc Get*(this: var TopOpeBRepTool_STATE): Standard_Boolean {.importcpp: "Get",
      header: "TopOpeBRepTool_STATE.hxx".}
  proc Print*(this: var TopOpeBRepTool_STATE) {.importcpp: "Print",
      header: "TopOpeBRepTool_STATE.hxx".}