##  Created on: 2011-10-11
##  Created by: Roman KOZLOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # when defined(VTK_USE_64BIT_IDS):
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   when defined(win32) and not defined(win64):
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #     discard
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # else:
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   when defined(_WIN64):
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #     discard
type
  IVtkIdType* = VtkIdType
  IVtkPointId* = IVtkIdType
  IVtkFaceId* = IVtkIdType
  IVtkEdgeId* = IVtkIdType
  IVtkShapeIdList* = NCollectionList[IVtkIdType]
  IVtkPointIdList* = NCollectionList[IVtkPointId]
  IVtkSubShapeMap* = NCollectionDataMap[IVtkIdType, IVtkShapeIdList]
  IVtkIdTypeMap* = NCollectionMap[IVtkIdType]
  IVtkPnt2dList* = NCollectionList[Xy]

## ! @enum IVtk_SelectionMode Selection modes for 3D shapes
## !
## ! Enumeration that describes all supported selection modes for 3D shapes.
## ! SM_None means that the shape should become non-selectable.
## ! SM_Shape makes the shape selectable as a whole.
## ! Other modes activate selection of sub-shapes of corresponding types.

type
  IVtkSelectionMode* {.size: sizeof(cint), importcpp: "IVtk_SelectionMode",
                      header: "IVtk_Types.hxx".} = enum
    SM_None = -1,               ## !< No selection
    SM_Shape = 0,               ## !< Shape selection
    SM_Vertex = 1,              ## !< Vertex selection
    SM_Edge = 2,                ## !< Edge selection
    SM_Wire = 3,                ## !< Wire selection
    SM_Face = 4,                ## !< Face selection
    SM_Shell = 5,               ## !< Shell selection
    SM_Solid = 6,               ## !< Solid selection
    SM_CompSolid = 7,           ## !< CompSolid selection
    SM_Compound = 8             ## !< Compound selection
  IVtkSelectionModeList* = NCollectionList[IVtkSelectionMode]


## ! @enum IVtk_MeshType Types of mesh parts for 3D shapes
## !
## ! Enumeration that describes all supported types of mesh parts for 3D shapes.

type
  IVtkMeshType* {.size: sizeof(cint), importcpp: "IVtk_MeshType",
                 header: "IVtk_Types.hxx".} = enum
    MT_Undefined = -1,          ## !< Undefined
    MT_IsoLine = 0,             ## !< Isoline
    MT_FreeVertex = 1,          ## !< Free vertex
    MT_SharedVertex = 2,        ## !< Shared vertex
    MT_FreeEdge = 3,            ## !< Free edge
    MT_BoundaryEdge = 4,        ## !< Boundary edge (related to a single face)
    MT_SharedEdge = 5,          ## !< Shared edge (related to several faces)
    MT_WireFrameFace = 6,       ## !< Wireframe face
    MT_ShadedFace = 7,          ## !< Shaded face
    MT_SeamEdge = 8


## ! @enum IVtk_DisplayMode Display modes for 3D shapes
## !
## ! Enumeration that describes all supported display modes for 3D shapes.

type
  IVtkDisplayMode* {.size: sizeof(cint), importcpp: "IVtk_DisplayMode",
                    header: "IVtk_Types.hxx".} = enum
    DM_Wireframe = 0,           ## !< Wireframe display mode
    DM_Shading = 1


























































