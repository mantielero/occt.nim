##  Created on: 2011-08-01
##  Created by: Sergey ZERCHANINOV
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

import
  ../Graphic3d/Graphic3d_CStructure, ../Graphic3d/Graphic3d_SequenceOfHClipPlane,
  OpenGl_Aspects, OpenGl_GraphicDriver, OpenGl_Group, OpenGl_Matrix, OpenGl_Vec,
  OpenGl_Workspace, ../NCollection/NCollection_List

discard "forward decl of OpenGl_GraphicDriver"
discard "forward decl of OpenGl_Structure"
type
  Handle_OpenGl_Structure* = handle[OpenGl_Structure]
  OpenGl_ListOfStructure* = NCollection_List[ptr OpenGl_Structure]

## ! Implementation of low-level graphic structure.

type
  OpenGl_Structure* {.importcpp: "OpenGl_Structure",
                     header: "OpenGl_Structure.hxx", bycopy.} = object of Graphic3d_CStructure ##
                                                                                        ## !
                                                                                        ## Auxiliary
                                                                                        ## wrapper
                                                                                        ## to
                                                                                        ## iterate
                                                                                        ## OpenGl_Structure
                                                                                        ## sequence.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Create
                                                                                        ## empty
                                                                                        ## structure
                                                                                        ##
                                                                                        ## !
                                                                                        ## Access
                                                                                        ## graphic
                                                                                        ## driver
    ## !< transformation, actually used for rendering (includes Local Origin shift)
    ## !< Used to tell OpenGl to interpret polygons in clockwise order.

  OpenGl_Structurebase_type* = Graphic3d_CStructure

proc get_type_name*(): cstring {.importcpp: "OpenGl_Structure::get_type_name(@)",
                              header: "OpenGl_Structure.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_Structure::get_type_descriptor(@)",
    header: "OpenGl_Structure.hxx".}
proc DynamicType*(this: OpenGl_Structure): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_Structure.hxx".}
type
  OpenGl_StructureStructIterator* = SubclassStructIterator[OpenGl_Structure]
  OpenGl_StructureGroupIterator* = SubclassGroupIterator[OpenGl_Group]

proc constructOpenGl_Structure*(theManager: handle[Graphic3d_StructureManager]): OpenGl_Structure {.
    constructor, importcpp: "OpenGl_Structure(@)", header: "OpenGl_Structure.hxx".}
proc OnVisibilityChanged*(this: var OpenGl_Structure) {.
    importcpp: "OnVisibilityChanged", header: "OpenGl_Structure.hxx".}
proc Clear*(this: var OpenGl_Structure) {.importcpp: "Clear",
                                      header: "OpenGl_Structure.hxx".}
proc Connect*(this: var OpenGl_Structure; theStructure: var Graphic3d_CStructure) {.
    importcpp: "Connect", header: "OpenGl_Structure.hxx".}
proc Disconnect*(this: var OpenGl_Structure; theStructure: var Graphic3d_CStructure) {.
    importcpp: "Disconnect", header: "OpenGl_Structure.hxx".}
proc SetTransformation*(this: var OpenGl_Structure; theTrsf: handle[TopLoc_Datum3D]) {.
    importcpp: "SetTransformation", header: "OpenGl_Structure.hxx".}
proc SetTransformPersistence*(this: var OpenGl_Structure;
                             theTrsfPers: handle[Graphic3d_TransformPers]) {.
    importcpp: "SetTransformPersistence", header: "OpenGl_Structure.hxx".}
proc SetZLayer*(this: var OpenGl_Structure; theLayerIndex: Graphic3d_ZLayerId) {.
    importcpp: "SetZLayer", header: "OpenGl_Structure.hxx".}
proc GraphicHighlight*(this: var OpenGl_Structure;
                      theStyle: handle[Graphic3d_PresentationAttributes]) {.
    importcpp: "GraphicHighlight", header: "OpenGl_Structure.hxx".}
proc GraphicUnhighlight*(this: var OpenGl_Structure) {.
    importcpp: "GraphicUnhighlight", header: "OpenGl_Structure.hxx".}
proc ShadowLink*(this: OpenGl_Structure;
                theManager: handle[Graphic3d_StructureManager]): handle[
    Graphic3d_CStructure] {.noSideEffect, importcpp: "ShadowLink",
                           header: "OpenGl_Structure.hxx".}
proc NewGroup*(this: var OpenGl_Structure; theStruct: handle[Graphic3d_Structure]): handle[
    Graphic3d_Group] {.importcpp: "NewGroup", header: "OpenGl_Structure.hxx".}
proc RemoveGroup*(this: var OpenGl_Structure; theGroup: handle[Graphic3d_Group]) {.
    importcpp: "RemoveGroup", header: "OpenGl_Structure.hxx".}
proc GlDriver*(this: OpenGl_Structure): ptr OpenGl_GraphicDriver {.noSideEffect,
    importcpp: "GlDriver", header: "OpenGl_Structure.hxx".}
proc Clear*(this: var OpenGl_Structure; theGlCtx: handle[OpenGl_Context]) {.
    importcpp: "Clear", header: "OpenGl_Structure.hxx".}
proc Render*(this: OpenGl_Structure; theWorkspace: handle[OpenGl_Workspace]) {.
    noSideEffect, importcpp: "Render", header: "OpenGl_Structure.hxx".}
proc Release*(this: var OpenGl_Structure; theGlCtx: handle[OpenGl_Context]) {.
    importcpp: "Release", header: "OpenGl_Structure.hxx".}
proc ReleaseGlResources*(this: var OpenGl_Structure;
                        theGlCtx: handle[OpenGl_Context]) {.
    importcpp: "ReleaseGlResources", header: "OpenGl_Structure.hxx".}
proc InstancedStructure*(this: OpenGl_Structure): ptr OpenGl_Structure {.
    noSideEffect, importcpp: "InstancedStructure", header: "OpenGl_Structure.hxx".}
proc ModificationState*(this: OpenGl_Structure): Standard_Size {.noSideEffect,
    importcpp: "ModificationState", header: "OpenGl_Structure.hxx".}
proc ResetModificationState*(this: OpenGl_Structure) {.noSideEffect,
    importcpp: "ResetModificationState", header: "OpenGl_Structure.hxx".}
proc IsRaytracable*(this: OpenGl_Structure): Standard_Boolean {.noSideEffect,
    importcpp: "IsRaytracable", header: "OpenGl_Structure.hxx".}
proc updateLayerTransformation*(this: var OpenGl_Structure) {.
    importcpp: "updateLayerTransformation", header: "OpenGl_Structure.hxx".}
proc DumpJson*(this: OpenGl_Structure; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_Structure.hxx".}