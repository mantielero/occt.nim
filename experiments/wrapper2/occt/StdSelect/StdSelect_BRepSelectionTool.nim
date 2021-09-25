##  Created on: 1995-03-08
##  Created by: Mister rmi
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of SelectMgr_SelectableObject"
discard "forward decl of StdSelect_BRepOwner"
discard "forward decl of TopoDS_Face"
type
  StdSelectBRepSelectionTool* {.importcpp: "StdSelect_BRepSelectionTool",
                               header: "StdSelect_BRepSelectionTool.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Decomposition
                                                                                       ## of
                                                                                       ## <aShape>
                                                                                       ## into
                                                                                       ## sensitive
                                                                                       ## entities
                                                                                       ## following
                                                                                       ##
                                                                                       ## !
                                                                                       ## a
                                                                                       ## mode
                                                                                       ## of
                                                                                       ## decomposition
                                                                                       ## <aType>.
                                                                                       ## These
                                                                                       ## entities
                                                                                       ## are
                                                                                       ## stored
                                                                                       ## in
                                                                                       ## <aSelection>.
                                                                                       ##
                                                                                       ## !
                                                                                       ## BrepOwners
                                                                                       ## are
                                                                                       ## created
                                                                                       ## to
                                                                                       ## store
                                                                                       ## the
                                                                                       ## identity
                                                                                       ## of
                                                                                       ## the
                                                                                       ## picked
                                                                                       ## shapes
                                                                                       ##
                                                                                       ## !
                                                                                       ## during
                                                                                       ## the
                                                                                       ## selection
                                                                                       ## process.
                                                                                       ##
                                                                                       ## !
                                                                                       ## In
                                                                                       ## those
                                                                                       ## BRepOwners
                                                                                       ## is
                                                                                       ## also
                                                                                       ## stored
                                                                                       ## the
                                                                                       ## original
                                                                                       ## shape.
                                                                                       ##
                                                                                       ## !
                                                                                       ## But
                                                                                       ## One
                                                                                       ## can't
                                                                                       ## get
                                                                                       ## the
                                                                                       ## selectable
                                                                                       ## object
                                                                                       ## which
                                                                                       ## was
                                                                                       ## decomposed
                                                                                       ## to
                                                                                       ## give
                                                                                       ##
                                                                                       ## !
                                                                                       ## the
                                                                                       ## sensitive
                                                                                       ## entities.
                                                                                       ##
                                                                                       ## !
                                                                                       ## maximal
                                                                                       ## parameter
                                                                                       ## is
                                                                                       ## used
                                                                                       ## for
                                                                                       ## infinite
                                                                                       ## objects,
                                                                                       ## to
                                                                                       ## limit
                                                                                       ## the
                                                                                       ## sensitive
                                                                                       ## Domain....
                                                                                       ##
                                                                                       ## !
                                                                                       ## If
                                                                                       ## AutoTriangulation
                                                                                       ## =
                                                                                       ## True,
                                                                                       ## a
                                                                                       ## Triangulation
                                                                                       ## will
                                                                                       ## be
                                                                                       ##
                                                                                       ## !
                                                                                       ## computed
                                                                                       ## for
                                                                                       ## faces
                                                                                       ## which
                                                                                       ## have
                                                                                       ## no
                                                                                       ## existing
                                                                                       ## one.
                                                                                       ##
                                                                                       ## !
                                                                                       ## if
                                                                                       ## AutoTriangulation
                                                                                       ## =
                                                                                       ## False
                                                                                       ## the
                                                                                       ## old
                                                                                       ## algorithm
                                                                                       ## will
                                                                                       ## be
                                                                                       ##
                                                                                       ## !
                                                                                       ## called
                                                                                       ## to
                                                                                       ## compute
                                                                                       ## sensitive
                                                                                       ## entities
                                                                                       ## on
                                                                                       ## faces.


proc load*(aSelection: Handle[SelectMgrSelection]; aShape: TopoDS_Shape;
          aType: TopAbsShapeEnum; theDeflection: float; theDeviationAngle: float;
          autoTriangulation: bool = true; aPriority: int = -1; nbPOnEdge: int = 9;
          maximalParameter: float = 500) {.importcpp: "StdSelect_BRepSelectionTool::Load(@)", header: "StdSelect_BRepSelectionTool.hxx".}
proc load*(aSelection: Handle[SelectMgrSelection];
          origin: Handle[SelectMgrSelectableObject]; aShape: TopoDS_Shape;
          aType: TopAbsShapeEnum; theDeflection: float; theDeviationAngle: float;
          autoTriangulation: bool = true; aPriority: int = -1; nbPOnEdge: int = 9;
          maximalParameter: float = 500) {.importcpp: "StdSelect_BRepSelectionTool::Load(@)", header: "StdSelect_BRepSelectionTool.hxx".}
proc getStandardPriority*(theShape: TopoDS_Shape; theType: TopAbsShapeEnum): int {.
    importcpp: "StdSelect_BRepSelectionTool::GetStandardPriority(@)",
    header: "StdSelect_BRepSelectionTool.hxx".}
proc computeSensitive*(theShape: TopoDS_Shape;
                      theOwner: Handle[SelectMgrEntityOwner];
                      theSelection: Handle[SelectMgrSelection];
                      theDeflection: float; theDeflAngle: float; theNbPOnEdge: int;
                      theMaxiParam: float; theAutoTriang: bool = true) {.
    importcpp: "StdSelect_BRepSelectionTool::ComputeSensitive(@)",
    header: "StdSelect_BRepSelectionTool.hxx".}
proc getSensitiveForFace*(theFace: TopoDS_Face;
                         theOwner: Handle[SelectMgrEntityOwner];
                         theOutList: var Select3D_EntitySequence;
                         theAutoTriang: bool = true; theNbPOnEdge: int = 9;
                         theMaxiParam: float = 500; theInteriorFlag: bool = true): bool {.
    importcpp: "StdSelect_BRepSelectionTool::GetSensitiveForFace(@)",
    header: "StdSelect_BRepSelectionTool.hxx".}
proc getEdgeSensitive*(theShape: TopoDS_Shape;
                      theOwner: Handle[SelectMgrEntityOwner];
                      theSelection: Handle[SelectMgrSelection];
                      theDeflection: float; theDeviationAngle: float;
                      theNbPOnEdge: int; theMaxiParam: float;
                      theSensitive: var Handle[Select3D_SensitiveEntity]) {.
    importcpp: "StdSelect_BRepSelectionTool::GetEdgeSensitive(@)",
    header: "StdSelect_BRepSelectionTool.hxx".}
proc preBuildBVH*(theSelection: Handle[SelectMgrSelection]) {.
    importcpp: "StdSelect_BRepSelectionTool::PreBuildBVH(@)",
    header: "StdSelect_BRepSelectionTool.hxx".}
