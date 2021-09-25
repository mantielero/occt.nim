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

discard "forward decl of Graphic3d_GraphicDriver"
discard "forward decl of Graphic3d_StructureManager"
type
  Graphic3dCStructure* {.importcpp: "Graphic3d_CStructure",
                        header: "Graphic3d_CStructure.hxx", bycopy.} = object of StandardTransient ##
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
    id* {.importc: "Id".}: cint
    myZLayer* {.importc: "myZLayer".}: Graphic3dZLayerId
    priority* {.importc: "Priority".}: cint
    previousPriority* {.importc: "PreviousPriority".}: cint
    containsFacet* {.importc: "ContainsFacet".}: cint
    viewAffinity* {.importc: "ViewAffinity".}: Handle[Graphic3dViewAffinity] ## !< view affinity mask
    isInfinite* {.importc: "IsInfinite", bitsize: 1.}: cuint
    stick* {.importc: "stick", bitsize: 1.}: cuint ## !< displaying state - should be set when structure has been added to scene graph (but can be in hidden state)
    highlight* {.importc: "highlight", bitsize: 1.}: cuint
    visible* {.importc: "visible", bitsize: 1.}: cuint ## !< visibility flag - can be used to suppress structure while leaving it in the scene graph
    hLRValidation* {.importc: "HLRValidation", bitsize: 1.}: cuint
    isForHighlight* {.importc: "IsForHighlight", bitsize: 1.}: cuint
    isMutable* {.importc: "IsMutable", bitsize: 1.}: cuint
    is2dText* {.importc: "Is2dText", bitsize: 1.}: cuint
    ## ! Current highlight style; is set only if highlight flag is true
    ## !< A status specifying is structure needs to be rendered after BVH tree traverse
    ## !< Flag responsible for checking of bounding box clipping before drawing of object


proc graphicDriver*(this: Graphic3dCStructure): Handle[Graphic3dGraphicDriver] {.
    noSideEffect, importcpp: "GraphicDriver", header: "Graphic3d_CStructure.hxx".}
proc groups*(this: Graphic3dCStructure): Graphic3dSequenceOfGroup {.noSideEffect,
    importcpp: "Groups", header: "Graphic3d_CStructure.hxx".}
proc transformation*(this: Graphic3dCStructure): Handle[TopLocDatum3D] {.
    noSideEffect, importcpp: "Transformation", header: "Graphic3d_CStructure.hxx".}
proc setTransformation*(this: var Graphic3dCStructure;
                       theTrsf: Handle[TopLocDatum3D]) {.
    importcpp: "SetTransformation", header: "Graphic3d_CStructure.hxx".}
proc transformPersistence*(this: Graphic3dCStructure): Handle[
    Graphic3dTransformPers] {.noSideEffect, importcpp: "TransformPersistence",
                             header: "Graphic3d_CStructure.hxx".}
proc setTransformPersistence*(this: var Graphic3dCStructure;
                             theTrsfPers: Handle[Graphic3dTransformPers]) {.
    importcpp: "SetTransformPersistence", header: "Graphic3d_CStructure.hxx".}
proc clipPlanes*(this: Graphic3dCStructure): Handle[Graphic3dSequenceOfHClipPlane] {.
    noSideEffect, importcpp: "ClipPlanes", header: "Graphic3d_CStructure.hxx".}
proc setClipPlanes*(this: var Graphic3dCStructure;
                   thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.
    importcpp: "SetClipPlanes", header: "Graphic3d_CStructure.hxx".}
proc boundingBox*(this: Graphic3dCStructure): Graphic3dBndBox3d {.noSideEffect,
    importcpp: "BoundingBox", header: "Graphic3d_CStructure.hxx".}
proc changeBoundingBox*(this: var Graphic3dCStructure): var Graphic3dBndBox3d {.
    importcpp: "ChangeBoundingBox", header: "Graphic3d_CStructure.hxx".}
proc isVisible*(this: Graphic3dCStructure): bool {.noSideEffect,
    importcpp: "IsVisible", header: "Graphic3d_CStructure.hxx".}
proc isVisible*(this: Graphic3dCStructure; theViewId: int): bool {.noSideEffect,
    importcpp: "IsVisible", header: "Graphic3d_CStructure.hxx".}
proc setZLayer*(this: var Graphic3dCStructure; theLayerIndex: Graphic3dZLayerId) {.
    importcpp: "SetZLayer", header: "Graphic3d_CStructure.hxx".}
proc zLayer*(this: Graphic3dCStructure): Graphic3dZLayerId {.noSideEffect,
    importcpp: "ZLayer", header: "Graphic3d_CStructure.hxx".}
proc highlightStyle*(this: Graphic3dCStructure): Handle[
    Graphic3dPresentationAttributes] {.noSideEffect, importcpp: "HighlightStyle",
                                      header: "Graphic3d_CStructure.hxx".}
proc isCulled*(this: Graphic3dCStructure): bool {.noSideEffect,
    importcpp: "IsCulled", header: "Graphic3d_CStructure.hxx".}
proc setCulled*(this: Graphic3dCStructure; theIsCulled: bool) {.noSideEffect,
    importcpp: "SetCulled", header: "Graphic3d_CStructure.hxx".}
proc markAsNotCulled*(this: Graphic3dCStructure) {.noSideEffect,
    importcpp: "MarkAsNotCulled", header: "Graphic3d_CStructure.hxx".}
proc bndBoxClipCheck*(this: Graphic3dCStructure): bool {.noSideEffect,
    importcpp: "BndBoxClipCheck", header: "Graphic3d_CStructure.hxx".}
proc setBndBoxClipCheck*(this: var Graphic3dCStructure; theBndBoxClipCheck: bool) {.
    importcpp: "SetBndBoxClipCheck", header: "Graphic3d_CStructure.hxx".}
proc isAlwaysRendered*(this: Graphic3dCStructure): bool {.noSideEffect,
    importcpp: "IsAlwaysRendered", header: "Graphic3d_CStructure.hxx".}
proc onVisibilityChanged*(this: var Graphic3dCStructure) {.
    importcpp: "OnVisibilityChanged", header: "Graphic3d_CStructure.hxx".}
proc clear*(this: var Graphic3dCStructure) {.importcpp: "Clear",
    header: "Graphic3d_CStructure.hxx".}
proc connect*(this: var Graphic3dCStructure; theStructure: var Graphic3dCStructure) {.
    importcpp: "Connect", header: "Graphic3d_CStructure.hxx".}
proc disconnect*(this: var Graphic3dCStructure;
                theStructure: var Graphic3dCStructure) {.importcpp: "Disconnect",
    header: "Graphic3d_CStructure.hxx".}
proc graphicHighlight*(this: var Graphic3dCStructure;
                      theStyle: Handle[Graphic3dPresentationAttributes]) {.
    importcpp: "GraphicHighlight", header: "Graphic3d_CStructure.hxx".}
proc graphicUnhighlight*(this: var Graphic3dCStructure) {.
    importcpp: "GraphicUnhighlight", header: "Graphic3d_CStructure.hxx".}
proc shadowLink*(this: Graphic3dCStructure;
                theManager: Handle[Graphic3dStructureManager]): Handle[
    Graphic3dCStructure] {.noSideEffect, importcpp: "ShadowLink",
                          header: "Graphic3d_CStructure.hxx".}
proc newGroup*(this: var Graphic3dCStructure; theStruct: Handle[Graphic3dStructure]): Handle[
    Graphic3dGroup] {.importcpp: "NewGroup", header: "Graphic3d_CStructure.hxx".}
proc removeGroup*(this: var Graphic3dCStructure; theGroup: Handle[Graphic3dGroup]) {.
    importcpp: "RemoveGroup", header: "Graphic3d_CStructure.hxx".}
proc updateLayerTransformation*(this: var Graphic3dCStructure) {.
    importcpp: "updateLayerTransformation", header: "Graphic3d_CStructure.hxx".}
proc dumpJson*(this: Graphic3dCStructure; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Graphic3d_CStructure.hxx".}
type
  Graphic3dCStructurebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_CStructure::get_type_name(@)",
                            header: "Graphic3d_CStructure.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_CStructure::get_type_descriptor(@)",
    header: "Graphic3d_CStructure.hxx".}
proc dynamicType*(this: Graphic3dCStructure): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_CStructure.hxx".}
discard "forward decl of Graphic3d_CStructure"
type
  HandleGraphic3dCStructure* = Handle[Graphic3dCStructure]

