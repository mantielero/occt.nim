##  Created on: 1995-01-27
##  Created by: Marie Jose MARTZ
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

discard "forward decl of BRepToIGES_BREntity"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Face"
type
  BRepToIGES_BRShell* {.importcpp: "BRepToIGES_BRShell",
                       header: "BRepToIGES_BRShell.hxx", bycopy.} = object of BRepToIGES_BREntity


proc constructBRepToIGES_BRShell*(): BRepToIGES_BRShell {.constructor,
    importcpp: "BRepToIGES_BRShell(@)", header: "BRepToIGES_BRShell.hxx".}
proc constructBRepToIGES_BRShell*(br: BRepToIGES_BREntity): BRepToIGES_BRShell {.
    constructor, importcpp: "BRepToIGES_BRShell(@)",
    header: "BRepToIGES_BRShell.hxx".}
proc transferShell*(this: var BRepToIGES_BRShell; start: TopoDS_Shape;
                   theProgress: MessageProgressRange = messageProgressRange()): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferShell",
                         header: "BRepToIGES_BRShell.hxx".}
proc transferShell*(this: var BRepToIGES_BRShell; start: TopoDS_Shell;
                   theProgress: MessageProgressRange = messageProgressRange()): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferShell",
                         header: "BRepToIGES_BRShell.hxx".}
proc transferFace*(this: var BRepToIGES_BRShell; start: TopoDS_Face;
                  theProgress: MessageProgressRange = messageProgressRange()): Handle[
    IGESDataIGESEntity] {.importcpp: "TransferFace",
                         header: "BRepToIGES_BRShell.hxx".}

























