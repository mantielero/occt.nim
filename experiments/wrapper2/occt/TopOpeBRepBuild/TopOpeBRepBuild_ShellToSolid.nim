##  Created on: 1997-10-02
##  Created by: Xuan Trang PHAM PHU
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

discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
type
  TopOpeBRepBuildShellToSolid* {.importcpp: "TopOpeBRepBuild_ShellToSolid",
                                header: "TopOpeBRepBuild_ShellToSolid.hxx", bycopy.} = object


proc constructTopOpeBRepBuildShellToSolid*(): TopOpeBRepBuildShellToSolid {.
    constructor, importcpp: "TopOpeBRepBuild_ShellToSolid(@)",
    header: "TopOpeBRepBuild_ShellToSolid.hxx".}
proc init*(this: var TopOpeBRepBuildShellToSolid) {.importcpp: "Init",
    header: "TopOpeBRepBuild_ShellToSolid.hxx".}
proc addShell*(this: var TopOpeBRepBuildShellToSolid; sh: TopoDS_Shell) {.
    importcpp: "AddShell", header: "TopOpeBRepBuild_ShellToSolid.hxx".}
proc makeSolids*(this: var TopOpeBRepBuildShellToSolid; so: TopoDS_Solid;
                lSo: var TopToolsListOfShape) {.importcpp: "MakeSolids",
    header: "TopOpeBRepBuild_ShellToSolid.hxx".}
