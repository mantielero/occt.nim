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
  ../Standard/Standard_Handle, BRepToIGES_BREntity, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of BRepToIGES_BREntity"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopoDS_Wire"
type
  BRepToIGES_BRWire* {.importcpp: "BRepToIGES_BRWire",
                      header: "BRepToIGES_BRWire.hxx", bycopy.} = object of BRepToIGES_BREntity


proc constructBRepToIGES_BRWire*(): BRepToIGES_BRWire {.constructor,
    importcpp: "BRepToIGES_BRWire(@)", header: "BRepToIGES_BRWire.hxx".}
proc constructBRepToIGES_BRWire*(BR: BRepToIGES_BREntity): BRepToIGES_BRWire {.
    constructor, importcpp: "BRepToIGES_BRWire(@)", header: "BRepToIGES_BRWire.hxx".}
proc TransferWire*(this: var BRepToIGES_BRWire; start: TopoDS_Shape): handle[
    IGESData_IGESEntity] {.importcpp: "TransferWire",
                          header: "BRepToIGES_BRWire.hxx".}
proc TransferVertex*(this: var BRepToIGES_BRWire; myvertex: TopoDS_Vertex): handle[
    IGESData_IGESEntity] {.importcpp: "TransferVertex",
                          header: "BRepToIGES_BRWire.hxx".}
proc TransferVertex*(this: var BRepToIGES_BRWire; myvertex: TopoDS_Vertex;
                    myedge: TopoDS_Edge; parameter: var Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferVertex",
                          header: "BRepToIGES_BRWire.hxx".}
proc TransferVertex*(this: var BRepToIGES_BRWire; myvertex: TopoDS_Vertex;
                    myedge: TopoDS_Edge; myface: TopoDS_Face;
                    parameter: var Standard_Real): handle[IGESData_IGESEntity] {.
    importcpp: "TransferVertex", header: "BRepToIGES_BRWire.hxx".}
proc TransferVertex*(this: var BRepToIGES_BRWire; myvertex: TopoDS_Vertex;
                    myedge: TopoDS_Edge; mysurface: handle[Geom_Surface];
                    myloc: TopLoc_Location; parameter: var Standard_Real): handle[
    IGESData_IGESEntity] {.importcpp: "TransferVertex",
                          header: "BRepToIGES_BRWire.hxx".}
proc TransferVertex*(this: var BRepToIGES_BRWire; myvertex: TopoDS_Vertex;
                    myface: TopoDS_Face; mypoint: var gp_Pnt2d): handle[
    IGESData_IGESEntity] {.importcpp: "TransferVertex",
                          header: "BRepToIGES_BRWire.hxx".}
proc TransferEdge*(this: var BRepToIGES_BRWire; myedge: TopoDS_Edge;
                  isBRepMode: Standard_Boolean): handle[IGESData_IGESEntity] {.
    importcpp: "TransferEdge", header: "BRepToIGES_BRWire.hxx".}
proc TransferEdge*(this: var BRepToIGES_BRWire; myedge: TopoDS_Edge;
                  myface: TopoDS_Face; length: Standard_Real;
                  isBRepMode: Standard_Boolean): handle[IGESData_IGESEntity] {.
    importcpp: "TransferEdge", header: "BRepToIGES_BRWire.hxx".}
proc TransferWire*(this: var BRepToIGES_BRWire; mywire: TopoDS_Wire): handle[
    IGESData_IGESEntity] {.importcpp: "TransferWire",
                          header: "BRepToIGES_BRWire.hxx".}
proc TransferWire*(this: var BRepToIGES_BRWire; mywire: TopoDS_Wire;
                  myface: TopoDS_Face; mycurve2d: var handle[IGESData_IGESEntity];
                  length: Standard_Real): handle[IGESData_IGESEntity] {.
    importcpp: "TransferWire", header: "BRepToIGES_BRWire.hxx".}