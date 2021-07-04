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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_ListOfShape

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


proc ConcatenateWire*(Wire: TopoDS_Wire; Option: GeomAbs_Shape;
                     AngularTolerance: Standard_Real = 1.0e-4): TopoDS_Wire {.
    importcpp: "BRepAlgo::ConcatenateWire(@)", header: "BRepAlgo.hxx".}
proc ConcatenateWireC0*(Wire: TopoDS_Wire): TopoDS_Edge {.
    importcpp: "BRepAlgo::ConcatenateWireC0(@)", header: "BRepAlgo.hxx".}
proc IsValid*(S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "BRepAlgo::IsValid(@)", header: "BRepAlgo.hxx".}
proc IsValid*(theArgs: TopTools_ListOfShape; theResult: TopoDS_Shape;
             closedSolid: Standard_Boolean = Standard_False;
             GeomCtrl: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "BRepAlgo::IsValid(@)", header: "BRepAlgo.hxx".}
proc IsTopologicallyValid*(S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "BRepAlgo::IsTopologicallyValid(@)", header: "BRepAlgo.hxx".}