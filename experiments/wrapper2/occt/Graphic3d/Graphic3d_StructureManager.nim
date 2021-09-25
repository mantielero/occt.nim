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

type
  Graphic3dIndexedMapOfView* = NCollectionIndexedMap[ptr Graphic3dCView]

discard "forward decl of Graphic3d_GraphicDriver"
discard "forward decl of Graphic3d_Structure"
discard "forward decl of Graphic3d_DataStructureManager"
type
  Graphic3dStructureManager* {.importcpp: "Graphic3d_StructureManager",
                              header: "Graphic3d_StructureManager.hxx", bycopy.} = object of StandardTransient ##
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

  Graphic3dStructureManagerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_StructureManager::get_type_name(@)",
                            header: "Graphic3d_StructureManager.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_StructureManager::get_type_descriptor(@)",
    header: "Graphic3d_StructureManager.hxx".}
proc dynamicType*(this: Graphic3dStructureManager): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_StructureManager.hxx".}
proc constructGraphic3dStructureManager*(theDriver: Handle[Graphic3dGraphicDriver]): Graphic3dStructureManager {.
    constructor, importcpp: "Graphic3d_StructureManager(@)",
    header: "Graphic3d_StructureManager.hxx".}
proc destroyGraphic3dStructureManager*(this: var Graphic3dStructureManager) {.
    importcpp: "#.~Graphic3d_StructureManager()",
    header: "Graphic3d_StructureManager.hxx".}
proc update*(this: Graphic3dStructureManager;
            theLayerId: Graphic3dZLayerId = graphic3dZLayerIdUNKNOWN) {.
    noSideEffect, importcpp: "Update", header: "Graphic3d_StructureManager.hxx".}
proc remove*(this: var Graphic3dStructureManager) {.importcpp: "Remove",
    header: "Graphic3d_StructureManager.hxx".}
proc erase*(this: var Graphic3dStructureManager) {.importcpp: "Erase",
    header: "Graphic3d_StructureManager.hxx".}
proc displayedStructures*(this: Graphic3dStructureManager;
                         sg: var Graphic3dMapOfStructure) {.noSideEffect,
    importcpp: "DisplayedStructures", header: "Graphic3d_StructureManager.hxx".}
proc highlightedStructures*(this: Graphic3dStructureManager;
                           sg: var Graphic3dMapOfStructure) {.noSideEffect,
    importcpp: "HighlightedStructures", header: "Graphic3d_StructureManager.hxx".}
proc reCompute*(this: var Graphic3dStructureManager;
               theStructure: Handle[Graphic3dStructure]) {.importcpp: "ReCompute",
    header: "Graphic3d_StructureManager.hxx".}
proc reCompute*(this: var Graphic3dStructureManager;
               theStructure: Handle[Graphic3dStructure];
               theProjector: Handle[Graphic3dDataStructureManager]) {.
    importcpp: "ReCompute", header: "Graphic3d_StructureManager.hxx".}
proc clear*(this: var Graphic3dStructureManager;
           theStructure: ptr Graphic3dStructure; theWithDestruction: bool) {.
    importcpp: "Clear", header: "Graphic3d_StructureManager.hxx".}
proc connect*(this: var Graphic3dStructureManager;
             theMother: ptr Graphic3dStructure; theDaughter: ptr Graphic3dStructure) {.
    importcpp: "Connect", header: "Graphic3d_StructureManager.hxx".}
proc disconnect*(this: var Graphic3dStructureManager;
                theMother: ptr Graphic3dStructure;
                theDaughter: ptr Graphic3dStructure) {.importcpp: "Disconnect",
    header: "Graphic3d_StructureManager.hxx".}
proc display*(this: var Graphic3dStructureManager;
             theStructure: Handle[Graphic3dStructure]) {.importcpp: "Display",
    header: "Graphic3d_StructureManager.hxx".}
proc erase*(this: var Graphic3dStructureManager;
           theStructure: Handle[Graphic3dStructure]) {.importcpp: "Erase",
    header: "Graphic3d_StructureManager.hxx".}
proc highlight*(this: var Graphic3dStructureManager;
               theStructure: Handle[Graphic3dStructure]) {.importcpp: "Highlight",
    header: "Graphic3d_StructureManager.hxx".}
proc setTransform*(this: var Graphic3dStructureManager;
                  theStructure: Handle[Graphic3dStructure];
                  theTrsf: Handle[TopLocDatum3D]) {.importcpp: "SetTransform",
    header: "Graphic3d_StructureManager.hxx".}
proc changeDisplayPriority*(this: var Graphic3dStructureManager;
                           theStructure: Handle[Graphic3dStructure];
                           theOldPriority: int; theNewPriority: int) {.
    importcpp: "ChangeDisplayPriority", header: "Graphic3d_StructureManager.hxx".}
proc changeZLayer*(this: var Graphic3dStructureManager;
                  theStructure: Handle[Graphic3dStructure];
                  theLayerId: Graphic3dZLayerId) {.importcpp: "ChangeZLayer",
    header: "Graphic3d_StructureManager.hxx".}
proc graphicDriver*(this: Graphic3dStructureManager): Handle[Graphic3dGraphicDriver] {.
    noSideEffect, importcpp: "GraphicDriver",
    header: "Graphic3d_StructureManager.hxx".}
proc identification*(this: var Graphic3dStructureManager;
                    theView: ptr Graphic3dCView): int {.importcpp: "Identification",
    header: "Graphic3d_StructureManager.hxx".}
proc unIdentification*(this: var Graphic3dStructureManager;
                      theView: ptr Graphic3dCView) {.importcpp: "UnIdentification",
    header: "Graphic3d_StructureManager.hxx".}
proc definedViews*(this: Graphic3dStructureManager): Graphic3dIndexedMapOfView {.
    noSideEffect, importcpp: "DefinedViews",
    header: "Graphic3d_StructureManager.hxx".}
proc maxNumOfViews*(this: Graphic3dStructureManager): int {.noSideEffect,
    importcpp: "MaxNumOfViews", header: "Graphic3d_StructureManager.hxx".}
proc identification*(this: Graphic3dStructureManager; aId: int): Handle[
    Graphic3dStructure] {.noSideEffect, importcpp: "Identification",
                         header: "Graphic3d_StructureManager.hxx".}
proc unHighlight*(this: var Graphic3dStructureManager;
                 aStructure: Handle[Graphic3dStructure]) {.
    importcpp: "UnHighlight", header: "Graphic3d_StructureManager.hxx".}
proc unHighlight*(this: var Graphic3dStructureManager) {.importcpp: "UnHighlight",
    header: "Graphic3d_StructureManager.hxx".}
proc recomputeStructures*(this: var Graphic3dStructureManager) {.
    importcpp: "RecomputeStructures", header: "Graphic3d_StructureManager.hxx".}
proc recomputeStructures*(this: var Graphic3dStructureManager;
                         theStructures: NCollectionMap[ptr Graphic3dStructure]) {.
    importcpp: "RecomputeStructures", header: "Graphic3d_StructureManager.hxx".}
proc registerObject*(this: var Graphic3dStructureManager;
                    theObject: Handle[StandardTransient]): Handle[
    Graphic3dViewAffinity] {.importcpp: "RegisterObject",
                            header: "Graphic3d_StructureManager.hxx".}
proc unregisterObject*(this: var Graphic3dStructureManager;
                      theObject: Handle[StandardTransient]) {.
    importcpp: "UnregisterObject", header: "Graphic3d_StructureManager.hxx".}
proc objectAffinity*(this: Graphic3dStructureManager;
                    theObject: Handle[StandardTransient]): Handle[
    Graphic3dViewAffinity] {.noSideEffect, importcpp: "ObjectAffinity",
                            header: "Graphic3d_StructureManager.hxx".}
proc isDeviceLost*(this: Graphic3dStructureManager): bool {.noSideEffect,
    importcpp: "IsDeviceLost", header: "Graphic3d_StructureManager.hxx".}
proc setDeviceLost*(this: var Graphic3dStructureManager) {.
    importcpp: "SetDeviceLost", header: "Graphic3d_StructureManager.hxx".}
proc dumpJson*(this: Graphic3dStructureManager; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Graphic3d_StructureManager.hxx".}
discard "forward decl of Graphic3d_StructureManager"
type
  HandleGraphic3dStructureManager* = Handle[Graphic3dStructureManager]

