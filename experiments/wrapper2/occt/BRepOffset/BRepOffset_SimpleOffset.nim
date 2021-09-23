##  Created on: 2016-10-14
##  Created by: Alexander MALYSHEV
##  Copyright (c) 1999-2016 OPEN CASCADE SAS
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
  ../BRepTools/BRepTools_Modification, ../GeomAbs/GeomAbs_Shape,
  ../Geom2d/Geom2d_Curve, ../Standard/Standard_Real, ../Standard/Standard_Macro,
  ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../NCollection/NCollection_DataMap

discard "forward decl of BRepOffset_SimpleOffset"
discard "forward decl of BRepOffset_SimpleOffset"
type
  Handle_BRepOffset_SimpleOffset* = handle[BRepOffset_SimpleOffset]

## ! This class represents mechanism of simple offset algorithm i. e.
## ! topology-preserve offset construction without intersection.
## !
## ! The list below shows mapping scheme:
## ! - Each surface is mapped to its geometric offset surface.
## ! - For each edge, pcurves are mapped to the same pcurves on offset surfaces.
## ! - For each edge, 3d curve is constructed by re-approximation of pcurve on the first offset face.
## ! - Position of each vertex in a result shell is computed as average point of all ends of edges shared by that vertex.
## ! - Tolerances are updated according to the resulting geometry.

type
  BRepOffset_SimpleOffset* {.importcpp: "BRepOffset_SimpleOffset",
                            header: "BRepOffset_SimpleOffset.hxx", bycopy.} = object of BRepTools_Modification ##
                                                                                                        ## !
                                                                                                        ## Method
                                                                                                        ## to
                                                                                                        ## fill
                                                                                                        ## new
                                                                                                        ## face
                                                                                                        ## data
                                                                                                        ## for
                                                                                                        ## single
                                                                                                        ## face.
    ## ! Map of edges to new edges information.
    ## ! Map of vertices to new vertices information.
    ## ! Offset value.
    ## ! Tolerance.

  BRepOffset_SimpleOffsetbase_type* = BRepTools_Modification

proc get_type_name*(): cstring {.importcpp: "BRepOffset_SimpleOffset::get_type_name(@)",
                              header: "BRepOffset_SimpleOffset.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepOffset_SimpleOffset::get_type_descriptor(@)",
    header: "BRepOffset_SimpleOffset.hxx".}
proc DynamicType*(this: BRepOffset_SimpleOffset): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepOffset_SimpleOffset.hxx".}
proc constructBRepOffset_SimpleOffset*(theInputShape: TopoDS_Shape;
                                      theOffsetValue: Standard_Real;
                                      theTolerance: Standard_Real): BRepOffset_SimpleOffset {.
    constructor, importcpp: "BRepOffset_SimpleOffset(@)",
    header: "BRepOffset_SimpleOffset.hxx".}
proc NewSurface*(this: var BRepOffset_SimpleOffset; F: TopoDS_Face;
                S: var handle[Geom_Surface]; L: var TopLoc_Location;
                Tol: var Standard_Real; RevWires: var Standard_Boolean;
                RevFace: var Standard_Boolean): Standard_Boolean {.
    importcpp: "NewSurface", header: "BRepOffset_SimpleOffset.hxx".}
proc NewCurve*(this: var BRepOffset_SimpleOffset; E: TopoDS_Edge;
              C: var handle[Geom_Curve]; L: var TopLoc_Location;
              Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewCurve",
    header: "BRepOffset_SimpleOffset.hxx".}
proc NewPoint*(this: var BRepOffset_SimpleOffset; V: TopoDS_Vertex; P: var gp_Pnt;
              Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewPoint",
    header: "BRepOffset_SimpleOffset.hxx".}
proc NewCurve2d*(this: var BRepOffset_SimpleOffset; E: TopoDS_Edge; F: TopoDS_Face;
                NewE: TopoDS_Edge; NewF: TopoDS_Face; C: var handle[Geom2d_Curve];
                Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewCurve2d",
    header: "BRepOffset_SimpleOffset.hxx".}
proc NewParameter*(this: var BRepOffset_SimpleOffset; V: TopoDS_Vertex;
                  E: TopoDS_Edge; P: var Standard_Real; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewParameter", header: "BRepOffset_SimpleOffset.hxx".}
proc Continuity*(this: var BRepOffset_SimpleOffset; E: TopoDS_Edge; F1: TopoDS_Face;
                F2: TopoDS_Face; NewE: TopoDS_Edge; NewF1: TopoDS_Face;
                NewF2: TopoDS_Face): GeomAbs_Shape {.importcpp: "Continuity",
    header: "BRepOffset_SimpleOffset.hxx".}