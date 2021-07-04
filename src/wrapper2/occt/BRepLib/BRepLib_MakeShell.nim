##  Created on: 1995-01-04
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, BRepLib_ShellError, BRepLib_MakeShape,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Shell"
type
  BRepLib_MakeShell* {.importcpp: "BRepLib_MakeShell",
                      header: "BRepLib_MakeShell.hxx", bycopy.} = object of BRepLib_MakeShape ##
                                                                                       ## !
                                                                                       ## Not
                                                                                       ## done.


proc constructBRepLib_MakeShell*(): BRepLib_MakeShell {.constructor,
    importcpp: "BRepLib_MakeShell(@)", header: "BRepLib_MakeShell.hxx".}
proc constructBRepLib_MakeShell*(S: handle[Geom_Surface];
                                Segment: Standard_Boolean = Standard_False): BRepLib_MakeShell {.
    constructor, importcpp: "BRepLib_MakeShell(@)", header: "BRepLib_MakeShell.hxx".}
proc constructBRepLib_MakeShell*(S: handle[Geom_Surface]; UMin: Standard_Real;
                                UMax: Standard_Real; VMin: Standard_Real;
                                VMax: Standard_Real;
                                Segment: Standard_Boolean = Standard_False): BRepLib_MakeShell {.
    constructor, importcpp: "BRepLib_MakeShell(@)", header: "BRepLib_MakeShell.hxx".}
proc Init*(this: var BRepLib_MakeShell; S: handle[Geom_Surface]; UMin: Standard_Real;
          UMax: Standard_Real; VMin: Standard_Real; VMax: Standard_Real;
          Segment: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "BRepLib_MakeShell.hxx".}
proc Error*(this: BRepLib_MakeShell): BRepLib_ShellError {.noSideEffect,
    importcpp: "Error", header: "BRepLib_MakeShell.hxx".}
proc Shell*(this: BRepLib_MakeShell): TopoDS_Shell {.noSideEffect,
    importcpp: "Shell", header: "BRepLib_MakeShell.hxx".}
converter `TopoDS_Shell`*(this: BRepLib_MakeShell): TopoDS_Shell {.noSideEffect,
    importcpp: "BRepLib_MakeShell::operator TopoDS_Shell",
    header: "BRepLib_MakeShell.hxx".}