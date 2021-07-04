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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../SelectMgr/SelectMgr_Selection,
  ../TopAbs/TopAbs_ShapeEnum, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Select3D/Select3D_SensitiveEntity, ../Select3D/Select3D_EntitySequence,
  StdSelect_BRepOwner

discard "forward decl of TopoDS_Shape"
discard "forward decl of SelectMgr_SelectableObject"
discard "forward decl of StdSelect_BRepOwner"
discard "forward decl of TopoDS_Face"
type
  StdSelect_BRepSelectionTool* {.importcpp: "StdSelect_BRepSelectionTool",
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


proc Load*(aSelection: handle[SelectMgr_Selection]; aShape: TopoDS_Shape;
          aType: TopAbs_ShapeEnum; theDeflection: Standard_Real;
          theDeviationAngle: Standard_Real;
          AutoTriangulation: Standard_Boolean = Standard_True;
          aPriority: Standard_Integer = -1; NbPOnEdge: Standard_Integer = 9;
          MaximalParameter: Standard_Real = 500) {.
    importcpp: "StdSelect_BRepSelectionTool::Load(@)",
    header: "StdSelect_BRepSelectionTool.hxx".}
proc Load*(aSelection: handle[SelectMgr_Selection];
          Origin: handle[SelectMgr_SelectableObject]; aShape: TopoDS_Shape;
          aType: TopAbs_ShapeEnum; theDeflection: Standard_Real;
          theDeviationAngle: Standard_Real;
          AutoTriangulation: Standard_Boolean = Standard_True;
          aPriority: Standard_Integer = -1; NbPOnEdge: Standard_Integer = 9;
          MaximalParameter: Standard_Real = 500) {.
    importcpp: "StdSelect_BRepSelectionTool::Load(@)",
    header: "StdSelect_BRepSelectionTool.hxx".}
proc GetStandardPriority*(theShape: TopoDS_Shape; theType: TopAbs_ShapeEnum): Standard_Integer {.
    importcpp: "StdSelect_BRepSelectionTool::GetStandardPriority(@)",
    header: "StdSelect_BRepSelectionTool.hxx".}
proc ComputeSensitive*(theShape: TopoDS_Shape;
                      theOwner: handle[SelectMgr_EntityOwner];
                      theSelection: handle[SelectMgr_Selection];
                      theDeflection: Standard_Real; theDeflAngle: Standard_Real;
                      theNbPOnEdge: Standard_Integer; theMaxiParam: Standard_Real;
                      theAutoTriang: Standard_Boolean = Standard_True) {.
    importcpp: "StdSelect_BRepSelectionTool::ComputeSensitive(@)",
    header: "StdSelect_BRepSelectionTool.hxx".}
proc GetSensitiveForFace*(theFace: TopoDS_Face;
                         theOwner: handle[SelectMgr_EntityOwner];
                         theOutList: var Select3D_EntitySequence;
                         theAutoTriang: Standard_Boolean = Standard_True;
                         theNbPOnEdge: Standard_Integer = 9;
                         theMaxiParam: Standard_Real = 500;
                         theInteriorFlag: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "StdSelect_BRepSelectionTool::GetSensitiveForFace(@)",
    header: "StdSelect_BRepSelectionTool.hxx".}
proc GetEdgeSensitive*(theShape: TopoDS_Shape;
                      theOwner: handle[SelectMgr_EntityOwner];
                      theSelection: handle[SelectMgr_Selection];
                      theDeflection: Standard_Real;
                      theDeviationAngle: Standard_Real;
                      theNbPOnEdge: Standard_Integer; theMaxiParam: Standard_Real;
                      theSensitive: var handle[Select3D_SensitiveEntity]) {.
    importcpp: "StdSelect_BRepSelectionTool::GetEdgeSensitive(@)",
    header: "StdSelect_BRepSelectionTool.hxx".}
proc PreBuildBVH*(theSelection: handle[SelectMgr_Selection]) {.
    importcpp: "StdSelect_BRepSelectionTool::PreBuildBVH(@)",
    header: "StdSelect_BRepSelectionTool.hxx".}