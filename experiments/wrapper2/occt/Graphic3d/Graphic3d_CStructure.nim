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
  Graphic3d_BndBox3d, Graphic3d_Group, Graphic3d_PresentationAttributes,
  Graphic3d_SequenceOfGroup, Graphic3d_SequenceOfHClipPlane,
  Graphic3d_TypeOfComposition, Graphic3d_ViewAffinity, Graphic3d_TransformPers,
  Graphic3d_Vec3, Graphic3d_ZLayerId, ../TopLoc/TopLoc_Datum3D,
  ../NCollection/NCollection_IndexedMap

discard "forward decl of Graphic3d_GraphicDriver"
discard "forward decl of Graphic3d_StructureManager"
type
  Graphic3d_CStructure* {.importcpp: "Graphic3d_CStructure",
                         header: "Graphic3d_CStructure.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Auxiliary
                                                                                              ## wrapper
                                                                                              ## to
                                                                                              ## iterate
                                                                                              ## through
                                                                                              ## structure
                                                                                              ## list.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @return
                                                                                              ## graphic
                                                                                              ## driver
                                                                                              ## created
                                                                                              ## this
                                                                                              ## structure
                                                                                              ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## FALSE
                                                                                              ## if
                                                                                              ## the
                                                                                              ## structure
                                                                                              ## hits
                                                                                              ## the
                                                                                              ## current
                                                                                              ## view
                                                                                              ## volume,
                                                                                              ## otherwise
                                                                                              ## returns
                                                                                              ## TRUE.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Update
                                                                                              ## structure
                                                                                              ## visibility
                                                                                              ## state
                                                                                              ##
                                                                                              ## !
                                                                                              ## Create
                                                                                              ## empty
                                                                                              ## structure.
    Id* {.importc: "Id".}: cint
    myZLayer* {.importc: "myZLayer".}: Graphic3d_ZLayerId
    Priority* {.importc: "Priority".}: cint
    PreviousPriority* {.importc: "PreviousPriority".}: cint
    ContainsFacet* {.importc: "ContainsFacet".}: cint
    ViewAffinity* {.importc: "ViewAffinity".}: handle[Graphic3d_ViewAffinity] ## !< view affinity mask
    IsInfinite* {.importc: "IsInfinite", bitsize: 1.}: cuint
    stick* {.importc: "stick", bitsize: 1.}: cuint ## !< displaying state - should be set when structure has been added to scene graph (but can be in hidden state)
    highlight* {.importc: "highlight", bitsize: 1.}: cuint
    visible* {.importc: "visible", bitsize: 1.}: cuint ## !< visibility flag - can be used to suppress structure while leaving it in the scene graph
    HLRValidation* {.importc: "HLRValidation", bitsize: 1.}: cuint
    IsForHighlight* {.importc: "IsForHighlight", bitsize: 1.}: cuint
    IsMutable* {.importc: "IsMutable", bitsize: 1.}: cuint
    Is2dText* {.importc: "Is2dText", bitsize: 1.}: cuint
    ## ! Current highlight style; is set only if highlight flag is true
    ## !< A status specifying is structure needs to be rendered after BVH tree traverse
    ## !< Flag responsible for checking of bounding box clipping before drawing of object


proc GraphicDriver*(this: Graphic3d_CStructure): handle[Graphic3d_GraphicDriver] {.
    noSideEffect, importcpp: "GraphicDriver", header: "Graphic3d_CStructure.hxx".}
proc Groups*(this: Graphic3d_CStructure): Graphic3d_SequenceOfGroup {.noSideEffect,
    importcpp: "Groups", header: "Graphic3d_CStructure.hxx".}
proc Transformation*(this: Graphic3d_CStructure): handle[TopLoc_Datum3D] {.
    noSideEffect, importcpp: "Transformation", header: "Graphic3d_CStructure.hxx".}
proc SetTransformation*(this: var Graphic3d_CStructure;
                       theTrsf: handle[TopLoc_Datum3D]) {.
    importcpp: "SetTransformation", header: "Graphic3d_CStructure.hxx".}
proc TransformPersistence*(this: Graphic3d_CStructure): handle[
    Graphic3d_TransformPers] {.noSideEffect, importcpp: "TransformPersistence",
                              header: "Graphic3d_CStructure.hxx".}
proc SetTransformPersistence*(this: var Graphic3d_CStructure;
                             theTrsfPers: handle[Graphic3d_TransformPers]) {.
    importcpp: "SetTransformPersistence", header: "Graphic3d_CStructure.hxx".}
proc ClipPlanes*(this: Graphic3d_CStructure): handle[Graphic3d_SequenceOfHClipPlane] {.
    noSideEffect, importcpp: "ClipPlanes", header: "Graphic3d_CStructure.hxx".}
proc SetClipPlanes*(this: var Graphic3d_CStructure;
                   thePlanes: handle[Graphic3d_SequenceOfHClipPlane]) {.
    importcpp: "SetClipPlanes", header: "Graphic3d_CStructure.hxx".}
proc BoundingBox*(this: Graphic3d_CStructure): Graphic3d_BndBox3d {.noSideEffect,
    importcpp: "BoundingBox", header: "Graphic3d_CStructure.hxx".}
proc ChangeBoundingBox*(this: var Graphic3d_CStructure): var Graphic3d_BndBox3d {.
    importcpp: "ChangeBoundingBox", header: "Graphic3d_CStructure.hxx".}
proc IsVisible*(this: Graphic3d_CStructure): bool {.noSideEffect,
    importcpp: "IsVisible", header: "Graphic3d_CStructure.hxx".}
proc IsVisible*(this: Graphic3d_CStructure; theViewId: Standard_Integer): bool {.
    noSideEffect, importcpp: "IsVisible", header: "Graphic3d_CStructure.hxx".}
proc SetZLayer*(this: var Graphic3d_CStructure; theLayerIndex: Graphic3d_ZLayerId) {.
    importcpp: "SetZLayer", header: "Graphic3d_CStructure.hxx".}
proc ZLayer*(this: Graphic3d_CStructure): Graphic3d_ZLayerId {.noSideEffect,
    importcpp: "ZLayer", header: "Graphic3d_CStructure.hxx".}
proc HighlightStyle*(this: Graphic3d_CStructure): handle[
    Graphic3d_PresentationAttributes] {.noSideEffect, importcpp: "HighlightStyle",
                                       header: "Graphic3d_CStructure.hxx".}
proc IsCulled*(this: Graphic3d_CStructure): Standard_Boolean {.noSideEffect,
    importcpp: "IsCulled", header: "Graphic3d_CStructure.hxx".}
proc SetCulled*(this: Graphic3d_CStructure; theIsCulled: Standard_Boolean) {.
    noSideEffect, importcpp: "SetCulled", header: "Graphic3d_CStructure.hxx".}
proc MarkAsNotCulled*(this: Graphic3d_CStructure) {.noSideEffect,
    importcpp: "MarkAsNotCulled", header: "Graphic3d_CStructure.hxx".}
proc BndBoxClipCheck*(this: Graphic3d_CStructure): Standard_Boolean {.noSideEffect,
    importcpp: "BndBoxClipCheck", header: "Graphic3d_CStructure.hxx".}
proc SetBndBoxClipCheck*(this: var Graphic3d_CStructure;
                        theBndBoxClipCheck: Standard_Boolean) {.
    importcpp: "SetBndBoxClipCheck", header: "Graphic3d_CStructure.hxx".}
proc IsAlwaysRendered*(this: Graphic3d_CStructure): Standard_Boolean {.noSideEffect,
    importcpp: "IsAlwaysRendered", header: "Graphic3d_CStructure.hxx".}
proc OnVisibilityChanged*(this: var Graphic3d_CStructure) {.
    importcpp: "OnVisibilityChanged", header: "Graphic3d_CStructure.hxx".}
proc Clear*(this: var Graphic3d_CStructure) {.importcpp: "Clear",
    header: "Graphic3d_CStructure.hxx".}
proc Connect*(this: var Graphic3d_CStructure; theStructure: var Graphic3d_CStructure) {.
    importcpp: "Connect", header: "Graphic3d_CStructure.hxx".}
proc Disconnect*(this: var Graphic3d_CStructure;
                theStructure: var Graphic3d_CStructure) {.importcpp: "Disconnect",
    header: "Graphic3d_CStructure.hxx".}
proc GraphicHighlight*(this: var Graphic3d_CStructure;
                      theStyle: handle[Graphic3d_PresentationAttributes]) {.
    importcpp: "GraphicHighlight", header: "Graphic3d_CStructure.hxx".}
proc GraphicUnhighlight*(this: var Graphic3d_CStructure) {.
    importcpp: "GraphicUnhighlight", header: "Graphic3d_CStructure.hxx".}
proc ShadowLink*(this: Graphic3d_CStructure;
                theManager: handle[Graphic3d_StructureManager]): handle[
    Graphic3d_CStructure] {.noSideEffect, importcpp: "ShadowLink",
                           header: "Graphic3d_CStructure.hxx".}
proc NewGroup*(this: var Graphic3d_CStructure;
              theStruct: handle[Graphic3d_Structure]): handle[Graphic3d_Group] {.
    importcpp: "NewGroup", header: "Graphic3d_CStructure.hxx".}
proc RemoveGroup*(this: var Graphic3d_CStructure; theGroup: handle[Graphic3d_Group]) {.
    importcpp: "RemoveGroup", header: "Graphic3d_CStructure.hxx".}
proc updateLayerTransformation*(this: var Graphic3d_CStructure) {.
    importcpp: "updateLayerTransformation", header: "Graphic3d_CStructure.hxx".}
proc DumpJson*(this: Graphic3d_CStructure; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_CStructure.hxx".}
type
  Graphic3d_CStructurebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_CStructure::get_type_name(@)",
                              header: "Graphic3d_CStructure.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_CStructure::get_type_descriptor(@)",
    header: "Graphic3d_CStructure.hxx".}
proc DynamicType*(this: Graphic3d_CStructure): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_CStructure.hxx".}
discard "forward decl of Graphic3d_CStructure"
type
  Handle_Graphic3d_CStructure* = handle[Graphic3d_CStructure]
