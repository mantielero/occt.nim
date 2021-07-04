##  Created on: 1991-09-05
##  Created by: NW,JPB,CAL
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Aspect/Aspect_GenId, ../Aspect/Aspect_TypeOfHighlightMethod, Graphic3d_CView,
  Graphic3d_MapOfObject, Graphic3d_MapOfStructure, Graphic3d_ViewAffinity,
  Graphic3d_ZLayerId, Graphic3d_ZLayerSettings, ../Standard/Standard_Transient,
  ../NCollection/NCollection_IndexedMap, ../Standard/Standard,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_Type, ../TColStd/TColStd_Array2OfReal

type
  Graphic3d_IndexedMapOfView* = NCollection_IndexedMap[ptr Graphic3d_CView]

discard "forward decl of Graphic3d_GraphicDriver"
discard "forward decl of Graphic3d_Structure"
discard "forward decl of Graphic3d_DataStructureManager"
type
  Graphic3d_StructureManager* {.importcpp: "Graphic3d_StructureManager",
                               header: "Graphic3d_StructureManager.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Initializes
                                                                                                          ## the
                                                                                                          ## ViewManager.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Currently
                                                                                                          ## creating
                                                                                                          ## of
                                                                                                          ## more
                                                                                                          ## than
                                                                                                          ## 100
                                                                                                          ## viewer
                                                                                                          ## instances
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## is
                                                                                                          ## not
                                                                                                          ## supported
                                                                                                          ## and
                                                                                                          ## leads
                                                                                                          ## to
                                                                                                          ## InitializationError
                                                                                                          ## and
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## initialization
                                                                                                          ## failure.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## This
                                                                                                          ## limitation
                                                                                                          ## might
                                                                                                          ## be
                                                                                                          ## addressed
                                                                                                          ## in
                                                                                                          ## some
                                                                                                          ## future
                                                                                                          ## OCCT
                                                                                                          ## releases.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Warning:
                                                                                                          ## Raises
                                                                                                          ## InitialisationError
                                                                                                          ## if
                                                                                                          ## the
                                                                                                          ## initialization
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## of
                                                                                                          ## the
                                                                                                          ## ViewManager
                                                                                                          ## failed.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## the
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## structures
                                                                                                          ## displayed
                                                                                                          ## in
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## visualizer
                                                                                                          ## <me>.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## the
                                                                                                          ## structure
                                                                                                          ## displayed
                                                                                                          ## in
                                                                                                          ## visualizer
                                                                                                          ## <me>.

  Graphic3d_StructureManagerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_StructureManager::get_type_name(@)",
                              header: "Graphic3d_StructureManager.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_StructureManager::get_type_descriptor(@)",
    header: "Graphic3d_StructureManager.hxx".}
proc DynamicType*(this: Graphic3d_StructureManager): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_StructureManager.hxx".}
proc constructGraphic3d_StructureManager*(
    theDriver: handle[Graphic3d_GraphicDriver]): Graphic3d_StructureManager {.
    constructor, importcpp: "Graphic3d_StructureManager(@)",
    header: "Graphic3d_StructureManager.hxx".}
proc destroyGraphic3d_StructureManager*(this: var Graphic3d_StructureManager) {.
    importcpp: "#.~Graphic3d_StructureManager()",
    header: "Graphic3d_StructureManager.hxx".}
proc Update*(this: Graphic3d_StructureManager;
            theLayerId: Graphic3d_ZLayerId = Graphic3d_ZLayerId_UNKNOWN) {.
    noSideEffect, importcpp: "Update", header: "Graphic3d_StructureManager.hxx".}
proc Remove*(this: var Graphic3d_StructureManager) {.importcpp: "Remove",
    header: "Graphic3d_StructureManager.hxx".}
proc Erase*(this: var Graphic3d_StructureManager) {.importcpp: "Erase",
    header: "Graphic3d_StructureManager.hxx".}
proc DisplayedStructures*(this: Graphic3d_StructureManager;
                         SG: var Graphic3d_MapOfStructure) {.noSideEffect,
    importcpp: "DisplayedStructures", header: "Graphic3d_StructureManager.hxx".}
proc HighlightedStructures*(this: Graphic3d_StructureManager;
                           SG: var Graphic3d_MapOfStructure) {.noSideEffect,
    importcpp: "HighlightedStructures", header: "Graphic3d_StructureManager.hxx".}
proc ReCompute*(this: var Graphic3d_StructureManager;
               theStructure: handle[Graphic3d_Structure]) {.
    importcpp: "ReCompute", header: "Graphic3d_StructureManager.hxx".}
proc ReCompute*(this: var Graphic3d_StructureManager;
               theStructure: handle[Graphic3d_Structure];
               theProjector: handle[Graphic3d_DataStructureManager]) {.
    importcpp: "ReCompute", header: "Graphic3d_StructureManager.hxx".}
proc Clear*(this: var Graphic3d_StructureManager;
           theStructure: ptr Graphic3d_Structure;
           theWithDestruction: Standard_Boolean) {.importcpp: "Clear",
    header: "Graphic3d_StructureManager.hxx".}
proc Connect*(this: var Graphic3d_StructureManager;
             theMother: ptr Graphic3d_Structure;
             theDaughter: ptr Graphic3d_Structure) {.importcpp: "Connect",
    header: "Graphic3d_StructureManager.hxx".}
proc Disconnect*(this: var Graphic3d_StructureManager;
                theMother: ptr Graphic3d_Structure;
                theDaughter: ptr Graphic3d_Structure) {.importcpp: "Disconnect",
    header: "Graphic3d_StructureManager.hxx".}
proc Display*(this: var Graphic3d_StructureManager;
             theStructure: handle[Graphic3d_Structure]) {.importcpp: "Display",
    header: "Graphic3d_StructureManager.hxx".}
proc Erase*(this: var Graphic3d_StructureManager;
           theStructure: handle[Graphic3d_Structure]) {.importcpp: "Erase",
    header: "Graphic3d_StructureManager.hxx".}
proc Highlight*(this: var Graphic3d_StructureManager;
               theStructure: handle[Graphic3d_Structure]) {.
    importcpp: "Highlight", header: "Graphic3d_StructureManager.hxx".}
proc SetTransform*(this: var Graphic3d_StructureManager;
                  theStructure: handle[Graphic3d_Structure];
                  theTrsf: handle[TopLoc_Datum3D]) {.importcpp: "SetTransform",
    header: "Graphic3d_StructureManager.hxx".}
proc ChangeDisplayPriority*(this: var Graphic3d_StructureManager;
                           theStructure: handle[Graphic3d_Structure];
                           theOldPriority: Standard_Integer;
                           theNewPriority: Standard_Integer) {.
    importcpp: "ChangeDisplayPriority", header: "Graphic3d_StructureManager.hxx".}
proc ChangeZLayer*(this: var Graphic3d_StructureManager;
                  theStructure: handle[Graphic3d_Structure];
                  theLayerId: Graphic3d_ZLayerId) {.importcpp: "ChangeZLayer",
    header: "Graphic3d_StructureManager.hxx".}
proc GraphicDriver*(this: Graphic3d_StructureManager): handle[
    Graphic3d_GraphicDriver] {.noSideEffect, importcpp: "GraphicDriver",
                              header: "Graphic3d_StructureManager.hxx".}
proc Identification*(this: var Graphic3d_StructureManager;
                    theView: ptr Graphic3d_CView): Standard_Integer {.
    importcpp: "Identification", header: "Graphic3d_StructureManager.hxx".}
proc UnIdentification*(this: var Graphic3d_StructureManager;
                      theView: ptr Graphic3d_CView) {.
    importcpp: "UnIdentification", header: "Graphic3d_StructureManager.hxx".}
proc DefinedViews*(this: Graphic3d_StructureManager): Graphic3d_IndexedMapOfView {.
    noSideEffect, importcpp: "DefinedViews",
    header: "Graphic3d_StructureManager.hxx".}
proc MaxNumOfViews*(this: Graphic3d_StructureManager): Standard_Integer {.
    noSideEffect, importcpp: "MaxNumOfViews",
    header: "Graphic3d_StructureManager.hxx".}
proc Identification*(this: Graphic3d_StructureManager; AId: Standard_Integer): handle[
    Graphic3d_Structure] {.noSideEffect, importcpp: "Identification",
                          header: "Graphic3d_StructureManager.hxx".}
proc UnHighlight*(this: var Graphic3d_StructureManager;
                 AStructure: handle[Graphic3d_Structure]) {.
    importcpp: "UnHighlight", header: "Graphic3d_StructureManager.hxx".}
proc UnHighlight*(this: var Graphic3d_StructureManager) {.importcpp: "UnHighlight",
    header: "Graphic3d_StructureManager.hxx".}
proc RecomputeStructures*(this: var Graphic3d_StructureManager) {.
    importcpp: "RecomputeStructures", header: "Graphic3d_StructureManager.hxx".}
proc RecomputeStructures*(this: var Graphic3d_StructureManager; theStructures: NCollection_Map[
    ptr Graphic3d_Structure]) {.importcpp: "RecomputeStructures",
                              header: "Graphic3d_StructureManager.hxx".}
proc RegisterObject*(this: var Graphic3d_StructureManager;
                    theObject: handle[Standard_Transient]): handle[
    Graphic3d_ViewAffinity] {.importcpp: "RegisterObject",
                             header: "Graphic3d_StructureManager.hxx".}
proc UnregisterObject*(this: var Graphic3d_StructureManager;
                      theObject: handle[Standard_Transient]) {.
    importcpp: "UnregisterObject", header: "Graphic3d_StructureManager.hxx".}
proc ObjectAffinity*(this: Graphic3d_StructureManager;
                    theObject: handle[Standard_Transient]): handle[
    Graphic3d_ViewAffinity] {.noSideEffect, importcpp: "ObjectAffinity",
                             header: "Graphic3d_StructureManager.hxx".}
proc IsDeviceLost*(this: Graphic3d_StructureManager): Standard_Boolean {.
    noSideEffect, importcpp: "IsDeviceLost",
    header: "Graphic3d_StructureManager.hxx".}
proc SetDeviceLost*(this: var Graphic3d_StructureManager) {.
    importcpp: "SetDeviceLost", header: "Graphic3d_StructureManager.hxx".}
proc DumpJson*(this: Graphic3d_StructureManager; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_StructureManager.hxx".}
discard "forward decl of Graphic3d_StructureManager"
type
  Handle_Graphic3d_StructureManager* = handle[Graphic3d_StructureManager]
