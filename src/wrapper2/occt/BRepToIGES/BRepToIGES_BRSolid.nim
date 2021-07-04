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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepToIGES_BREntity

discard "forward decl of BRepToIGES_BREntity"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_CompSolid"
discard "forward decl of TopoDS_Compound"
type
  BRepToIGES_BRSolid* {.importcpp: "BRepToIGES_BRSolid",
                       header: "BRepToIGES_BRSolid.hxx", bycopy.} = object of BRepToIGES_BREntity


proc constructBRepToIGES_BRSolid*(): BRepToIGES_BRSolid {.constructor,
    importcpp: "BRepToIGES_BRSolid(@)", header: "BRepToIGES_BRSolid.hxx".}
proc constructBRepToIGES_BRSolid*(BR: BRepToIGES_BREntity): BRepToIGES_BRSolid {.
    constructor, importcpp: "BRepToIGES_BRSolid(@)",
    header: "BRepToIGES_BRSolid.hxx".}
proc TransferSolid*(this: var BRepToIGES_BRSolid; start: TopoDS_Shape;
                   theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    IGESData_IGESEntity] {.importcpp: "TransferSolid",
                          header: "BRepToIGES_BRSolid.hxx".}
proc TransferSolid*(this: var BRepToIGES_BRSolid; start: TopoDS_Solid;
                   theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    IGESData_IGESEntity] {.importcpp: "TransferSolid",
                          header: "BRepToIGES_BRSolid.hxx".}
proc TransferCompSolid*(this: var BRepToIGES_BRSolid; start: TopoDS_CompSolid;
    theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    IGESData_IGESEntity] {.importcpp: "TransferCompSolid",
                          header: "BRepToIGES_BRSolid.hxx".}
proc TransferCompound*(this: var BRepToIGES_BRSolid; start: TopoDS_Compound;
    theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    IGESData_IGESEntity] {.importcpp: "TransferCompound",
                          header: "BRepToIGES_BRSolid.hxx".}