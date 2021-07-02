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

discard "forward decl of MeshVS_Mesh"
discard "forward decl of MeshVS_DataSource"
discard "forward decl of Graphic3d_ArrayOfSegments"
discard "forward decl of Graphic3d_ArrayOfTriangles"
discard "forward decl of Graphic3d_ArrayOfPrimitives"
discard "forward decl of Graphic3d_AspectFillArea3d"
discard "forward decl of Graphic3d_AspectLine3d"
discard "forward decl of MeshVS_MeshPrsBuilder"
type
  HandleMeshVS_MeshPrsBuilder* = Handle[MeshVS_MeshPrsBuilder]

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


proc constructMeshVS_MeshPrsBuilder*(parent: Handle[MeshVS_Mesh]; flags: MeshVS_DisplayModeFlags = meshVS_DMF_OCCMask;
                                    ds: Handle[MeshVS_DataSource] = 0;
                                    id: StandardInteger = -1; priority: MeshVS_BuilderPriority = meshVS_BP_Mesh): MeshVS_MeshPrsBuilder {.
    constructor, importcpp: "MeshVS_MeshPrsBuilder(@)",
    header: "MeshVS_MeshPrsBuilder.hxx".}
proc build*(this: MeshVS_MeshPrsBuilder; prs: Handle[Prs3dPresentation];
           iDs: TColStdPackedMapOfInteger;
           iDsToExclude: var TColStdPackedMapOfInteger; isElement: StandardBoolean;
           displayMode: StandardInteger) {.noSideEffect, importcpp: "Build",
    header: "MeshVS_MeshPrsBuilder.hxx".}
proc buildNodes*(this: MeshVS_MeshPrsBuilder; prs: Handle[Prs3dPresentation];
                iDs: TColStdPackedMapOfInteger;
                iDsToExclude: var TColStdPackedMapOfInteger;
                displayMode: StandardInteger) {.noSideEffect,
    importcpp: "BuildNodes", header: "MeshVS_MeshPrsBuilder.hxx".}
proc buildElements*(this: MeshVS_MeshPrsBuilder; prs: Handle[Prs3dPresentation];
                   iDs: TColStdPackedMapOfInteger;
                   iDsToExclude: var TColStdPackedMapOfInteger;
                   displayMode: StandardInteger) {.noSideEffect,
    importcpp: "BuildElements", header: "MeshVS_MeshPrsBuilder.hxx".}
proc buildHilightPrs*(this: MeshVS_MeshPrsBuilder; prs: Handle[Prs3dPresentation];
                     iDs: TColStdPackedMapOfInteger; isElement: StandardBoolean) {.
    noSideEffect, importcpp: "BuildHilightPrs", header: "MeshVS_MeshPrsBuilder.hxx".}
proc addVolumePrs*(topo: Handle[MeshVS_HArray1OfSequenceOfInteger];
                  nodes: TColStdArray1OfReal; nbNodes: StandardInteger;
                  array: Handle[Graphic3dArrayOfPrimitives];
                  isReflected: StandardBoolean; isShrinked: StandardBoolean;
                  isSelect: StandardBoolean; shrinkCoef: StandardReal) {.
    importcpp: "MeshVS_MeshPrsBuilder::AddVolumePrs(@)",
    header: "MeshVS_MeshPrsBuilder.hxx".}
proc howManyPrimitives*(topo: Handle[MeshVS_HArray1OfSequenceOfInteger];
                       asPolygons: StandardBoolean; isSelect: StandardBoolean;
                       nbNodes: StandardInteger; vertices: var StandardInteger;
                       bounds: var StandardInteger) {.
    importcpp: "MeshVS_MeshPrsBuilder::HowManyPrimitives(@)",
    header: "MeshVS_MeshPrsBuilder.hxx".}
type
  MeshVS_MeshPrsBuilderbaseType* = MeshVS_PrsBuilder

proc getTypeName*(): cstring {.importcpp: "MeshVS_MeshPrsBuilder::get_type_name(@)",
                            header: "MeshVS_MeshPrsBuilder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_MeshPrsBuilder::get_type_descriptor(@)",
    header: "MeshVS_MeshPrsBuilder.hxx".}
proc dynamicType*(this: MeshVS_MeshPrsBuilder): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_MeshPrsBuilder.hxx".}

