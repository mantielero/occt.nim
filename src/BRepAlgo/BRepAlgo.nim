##  Created on: 1997-01-17
##  Created by: Didier PIFFAULT
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

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepAlgo_BooleanOperation"
discard "forward decl of BRepAlgo_Fuse"
discard "forward decl of BRepAlgo_Cut"
discard "forward decl of BRepAlgo_Common"
discard "forward decl of BRepAlgo_Section"
discard "forward decl of BRepAlgo_Loop"
discard "forward decl of BRepAlgo_Tool"
discard "forward decl of BRepAlgo_Image"
discard "forward decl of BRepAlgo_AsDes"
discard "forward decl of BRepAlgo_FaceRestrictor"
discard "forward decl of BRepAlgo_NormalProjection"
type
  BRepAlgo* {.importcpp: "BRepAlgo", header: "BRepAlgo.hxx", bycopy.} = object ## ! this method makes a wire whose edges are C1 from
                                                                       ## ! a Wire whose edges could be G1. It removes a vertex
                                                                       ## ! between G1 edges.
                                                                       ## ! Option can be G1 or C1.


proc concatenateWire*(wire: TopoDS_Wire; option: GeomAbsShape;
                     angularTolerance: cfloat = 1.0e-4): TopoDS_Wire {.
    importcpp: "BRepAlgo::ConcatenateWire(@)", header: "BRepAlgo.hxx".}
proc concatenateWireC0*(wire: TopoDS_Wire): TopoDS_Edge {.
    importcpp: "BRepAlgo::ConcatenateWireC0(@)", header: "BRepAlgo.hxx".}
proc isValid*(s: TopoDS_Shape): bool {.importcpp: "BRepAlgo::IsValid(@)",
                                   header: "BRepAlgo.hxx".}
proc isValid*(theArgs: TopToolsListOfShape; theResult: TopoDS_Shape;
             closedSolid: bool = false; geomCtrl: bool = true): bool {.
    importcpp: "BRepAlgo::IsValid(@)", header: "BRepAlgo.hxx".}
proc isTopologicallyValid*(s: TopoDS_Shape): bool {.
    importcpp: "BRepAlgo::IsTopologicallyValid(@)", header: "BRepAlgo.hxx".}

























