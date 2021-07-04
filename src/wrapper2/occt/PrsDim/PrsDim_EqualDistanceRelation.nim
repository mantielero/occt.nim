##  Created on: 1998-01-24
##  Created by: Julia GERASIMOVA
##  Copyright (c) 1998-1999 Matra Datavision
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
  PrsDim_Relation, PrsDim_TypeOfDist, ../DsgPrs/DsgPrs_ArrowSide

discard "forward decl of Geom_Plane"
discard "forward decl of PrsDim_EqualDistanceRelation"
type
  Handle_PrsDim_EqualDistanceRelation* = handle[PrsDim_EqualDistanceRelation]

## ! A framework to display equivalent distances between
## ! shapes and a given plane.
## ! The distance is the length of a projection from the
## ! shape to the plane.
## ! These distances are used to compare shapes by this vector alone.

type
  PrsDim_EqualDistanceRelation* {.importcpp: "PrsDim_EqualDistanceRelation",
                                 header: "PrsDim_EqualDistanceRelation.hxx",
                                 bycopy.} = object of PrsDim_Relation ## ! Constructs a framework to display equivalent
                                                                 ## ! distances between the shapes aShape1, aShape2,
                                                                 ## ! aShape3, aShape4 and the plane aPlane.
                                                                 ## ! The distance is the length of a projection from the
                                                                 ## ! shape to the plane.
                                                                 ## ! Computes the location of an intreval between
                                                                 ## ! between two edges. FirstAttach , SecondAttach
                                                                 ## ! are the returned extreme points of the interval.

  PrsDim_EqualDistanceRelationbase_type* = PrsDim_Relation

proc get_type_name*(): cstring {.importcpp: "PrsDim_EqualDistanceRelation::get_type_name(@)",
                              header: "PrsDim_EqualDistanceRelation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_EqualDistanceRelation::get_type_descriptor(@)",
    header: "PrsDim_EqualDistanceRelation.hxx".}
proc DynamicType*(this: PrsDim_EqualDistanceRelation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "PrsDim_EqualDistanceRelation.hxx".}
proc constructPrsDim_EqualDistanceRelation*(aShape1: TopoDS_Shape;
    aShape2: TopoDS_Shape; aShape3: TopoDS_Shape; aShape4: TopoDS_Shape;
    aPlane: handle[Geom_Plane]): PrsDim_EqualDistanceRelation {.constructor,
    importcpp: "PrsDim_EqualDistanceRelation(@)",
    header: "PrsDim_EqualDistanceRelation.hxx".}
proc SetShape3*(this: var PrsDim_EqualDistanceRelation; aShape: TopoDS_Shape) {.
    importcpp: "SetShape3", header: "PrsDim_EqualDistanceRelation.hxx".}
proc Shape3*(this: PrsDim_EqualDistanceRelation): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape3", header: "PrsDim_EqualDistanceRelation.hxx".}
proc SetShape4*(this: var PrsDim_EqualDistanceRelation; aShape: TopoDS_Shape) {.
    importcpp: "SetShape4", header: "PrsDim_EqualDistanceRelation.hxx".}
proc Shape4*(this: PrsDim_EqualDistanceRelation): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape4", header: "PrsDim_EqualDistanceRelation.hxx".}
proc ComputeTwoEdgesLength*(aPresentation: handle[Prs3d_Presentation];
                           aDrawer: handle[Prs3d_Drawer];
                           ArrowSize: Standard_Real; FirstEdge: TopoDS_Edge;
                           SecondEdge: TopoDS_Edge; Plane: handle[Geom_Plane];
                           AutomaticPos: Standard_Boolean;
                           IsSetBndBox: Standard_Boolean; BndBox: Bnd_Box;
                           Position: var gp_Pnt; FirstAttach: var gp_Pnt;
                           SecondAttach: var gp_Pnt; FirstExtreme: var gp_Pnt;
                           SecondExtreme: var gp_Pnt;
                           SymbolPrs: var DsgPrs_ArrowSide) {.
    importcpp: "PrsDim_EqualDistanceRelation::ComputeTwoEdgesLength(@)",
    header: "PrsDim_EqualDistanceRelation.hxx".}
proc ComputeTwoVerticesLength*(aPresentation: handle[Prs3d_Presentation];
                              aDrawer: handle[Prs3d_Drawer];
                              ArrowSize: Standard_Real;
                              FirstVertex: TopoDS_Vertex;
                              SecondVertex: TopoDS_Vertex;
                              Plane: handle[Geom_Plane];
                              AutomaticPos: Standard_Boolean;
                              IsSetBndBox: Standard_Boolean; BndBox: Bnd_Box;
                              TypeDist: PrsDim_TypeOfDist; Position: var gp_Pnt;
                              FirstAttach: var gp_Pnt; SecondAttach: var gp_Pnt;
                              FirstExtreme: var gp_Pnt; SecondExtreme: var gp_Pnt;
                              SymbolPrs: var DsgPrs_ArrowSide) {.
    importcpp: "PrsDim_EqualDistanceRelation::ComputeTwoVerticesLength(@)",
    header: "PrsDim_EqualDistanceRelation.hxx".}
proc ComputeOneEdgeOneVertexLength*(aPresentation: handle[Prs3d_Presentation];
                                   aDrawer: handle[Prs3d_Drawer];
                                   ArrowSize: Standard_Real;
                                   FirstShape: TopoDS_Shape;
                                   SecondShape: TopoDS_Shape;
                                   Plane: handle[Geom_Plane];
                                   AutomaticPos: Standard_Boolean;
                                   IsSetBndBox: Standard_Boolean; BndBox: Bnd_Box;
                                   Position: var gp_Pnt; FirstAttach: var gp_Pnt;
                                   SecondAttach: var gp_Pnt;
                                   FirstExtreme: var gp_Pnt;
                                   SecondExtreme: var gp_Pnt;
                                   SymbolPrs: var DsgPrs_ArrowSide) {.importcpp: "PrsDim_EqualDistanceRelation::ComputeOneEdgeOneVertexLength(@)",
    header: "PrsDim_EqualDistanceRelation.hxx".}