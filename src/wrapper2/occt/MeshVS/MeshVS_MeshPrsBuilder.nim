##  Created on: 2003-10-10
##  Created by: Alexander SOLOVYOV
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  MeshVS_PrsBuilder, MeshVS_DisplayModeFlags, MeshVS_BuilderPriority,
  ../TColStd/TColStd_PackedMapOfInteger, ../TColStd/TColStd_Array1OfReal,
  MeshVS_HArray1OfSequenceOfInteger

discard "forward decl of MeshVS_Mesh"
discard "forward decl of MeshVS_DataSource"
discard "forward decl of Graphic3d_ArrayOfSegments"
discard "forward decl of Graphic3d_ArrayOfTriangles"
discard "forward decl of Graphic3d_ArrayOfPrimitives"
discard "forward decl of Graphic3d_AspectFillArea3d"
discard "forward decl of Graphic3d_AspectLine3d"
discard "forward decl of MeshVS_MeshPrsBuilder"
type
  Handle_MeshVS_MeshPrsBuilder* = handle[MeshVS_MeshPrsBuilder]

## ! This class provides methods to compute base mesh presentation

type
  MeshVS_MeshPrsBuilder* {.importcpp: "MeshVS_MeshPrsBuilder",
                          header: "MeshVS_MeshPrsBuilder.hxx", bycopy.} = object of MeshVS_PrsBuilder ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## builder
                                                                                               ## with
                                                                                               ## certain
                                                                                               ## display
                                                                                               ## mode
                                                                                               ## flags,
                                                                                               ## data
                                                                                               ## source,
                                                                                               ## ID
                                                                                               ## and
                                                                                               ## priority
                                                                                               ##
                                                                                               ## !
                                                                                               ## Add
                                                                                               ## to
                                                                                               ## array
                                                                                               ## of
                                                                                               ## polylines
                                                                                               ## some
                                                                                               ## lines
                                                                                               ## representing
                                                                                               ## link


proc constructMeshVS_MeshPrsBuilder*(Parent: handle[MeshVS_Mesh]; Flags: MeshVS_DisplayModeFlags = MeshVS_DMF_OCCMask;
                                    DS: handle[MeshVS_DataSource] = 0;
                                    Id: Standard_Integer = -1; Priority: MeshVS_BuilderPriority = MeshVS_BP_Mesh): MeshVS_MeshPrsBuilder {.
    constructor, importcpp: "MeshVS_MeshPrsBuilder(@)",
    header: "MeshVS_MeshPrsBuilder.hxx".}
proc Build*(this: MeshVS_MeshPrsBuilder; Prs: handle[Prs3d_Presentation];
           IDs: TColStd_PackedMapOfInteger;
           IDsToExclude: var TColStd_PackedMapOfInteger;
           IsElement: Standard_Boolean; DisplayMode: Standard_Integer) {.
    noSideEffect, importcpp: "Build", header: "MeshVS_MeshPrsBuilder.hxx".}
proc BuildNodes*(this: MeshVS_MeshPrsBuilder; Prs: handle[Prs3d_Presentation];
                IDs: TColStd_PackedMapOfInteger;
                IDsToExclude: var TColStd_PackedMapOfInteger;
                DisplayMode: Standard_Integer) {.noSideEffect,
    importcpp: "BuildNodes", header: "MeshVS_MeshPrsBuilder.hxx".}
proc BuildElements*(this: MeshVS_MeshPrsBuilder; Prs: handle[Prs3d_Presentation];
                   IDs: TColStd_PackedMapOfInteger;
                   IDsToExclude: var TColStd_PackedMapOfInteger;
                   DisplayMode: Standard_Integer) {.noSideEffect,
    importcpp: "BuildElements", header: "MeshVS_MeshPrsBuilder.hxx".}
proc BuildHilightPrs*(this: MeshVS_MeshPrsBuilder; Prs: handle[Prs3d_Presentation];
                     IDs: TColStd_PackedMapOfInteger; IsElement: Standard_Boolean) {.
    noSideEffect, importcpp: "BuildHilightPrs", header: "MeshVS_MeshPrsBuilder.hxx".}
proc AddVolumePrs*(Topo: handle[MeshVS_HArray1OfSequenceOfInteger];
                  Nodes: TColStd_Array1OfReal; NbNodes: Standard_Integer;
                  Array: handle[Graphic3d_ArrayOfPrimitives];
                  IsReflected: Standard_Boolean; IsShrinked: Standard_Boolean;
                  IsSelect: Standard_Boolean; ShrinkCoef: Standard_Real) {.
    importcpp: "MeshVS_MeshPrsBuilder::AddVolumePrs(@)",
    header: "MeshVS_MeshPrsBuilder.hxx".}
proc HowManyPrimitives*(Topo: handle[MeshVS_HArray1OfSequenceOfInteger];
                       AsPolygons: Standard_Boolean; IsSelect: Standard_Boolean;
                       NbNodes: Standard_Integer; Vertices: var Standard_Integer;
                       Bounds: var Standard_Integer) {.
    importcpp: "MeshVS_MeshPrsBuilder::HowManyPrimitives(@)",
    header: "MeshVS_MeshPrsBuilder.hxx".}
type
  MeshVS_MeshPrsBuilderbase_type* = MeshVS_PrsBuilder

proc get_type_name*(): cstring {.importcpp: "MeshVS_MeshPrsBuilder::get_type_name(@)",
                              header: "MeshVS_MeshPrsBuilder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_MeshPrsBuilder::get_type_descriptor(@)",
    header: "MeshVS_MeshPrsBuilder.hxx".}
proc DynamicType*(this: MeshVS_MeshPrsBuilder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "MeshVS_MeshPrsBuilder.hxx".}