import ../toploc/toploc_types
import ../gp/gp_types
import ../standard/standard_types
import graphic3d_types
import ../bnd/bnd_types





##  Created on: 1991-06-12
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





proc clear*(this: var Graphic3dStructure; withDestruction: bool = true) {.cdecl,
    importcpp: "Clear", header: "Graphic3d_Structure.hxx".}
proc destroyGraphic3dStructure*(this: var Graphic3dStructure) {.cdecl,
    importcpp: "#.~Graphic3d_Structure()", header: "Graphic3d_Structure.hxx".}
proc display*(this: var Graphic3dStructure) {.cdecl, importcpp: "Display",
    header: "Graphic3d_Structure.hxx".}
proc displayPriority*(this: Graphic3dStructure): cint {.noSideEffect, cdecl,
    importcpp: "DisplayPriority", header: "Graphic3d_Structure.hxx".}
proc erase*(this: var Graphic3dStructure) {.cdecl, importcpp: "Erase", header: "Graphic3d_Structure.hxx".}
proc highlight*(this: var Graphic3dStructure;
               theStyle: Handle[Graphic3dPresentationAttributes];
               theToUpdateMgr: bool = true) {.cdecl, importcpp: "Highlight",
    header: "Graphic3d_Structure.hxx".}
proc remove*(this: var Graphic3dStructure) {.cdecl, importcpp: "Remove", header: "Graphic3d_Structure.hxx".}
proc calculateBoundBox*(this: var Graphic3dStructure) {.cdecl,
    importcpp: "CalculateBoundBox", header: "Graphic3d_Structure.hxx".}
proc setInfiniteState*(this: var Graphic3dStructure; theToSet: bool) {.cdecl,
    importcpp: "SetInfiniteState", header: "Graphic3d_Structure.hxx".}
proc setDisplayPriority*(this: var Graphic3dStructure; priority: cint) {.cdecl,
    importcpp: "SetDisplayPriority", header: "Graphic3d_Structure.hxx".}
proc resetDisplayPriority*(this: var Graphic3dStructure) {.cdecl,
    importcpp: "ResetDisplayPriority", header: "Graphic3d_Structure.hxx".}
proc setZLayer*(this: var Graphic3dStructure; theLayerId: Graphic3dZLayerId) {.cdecl,
    importcpp: "SetZLayer", header: "Graphic3d_Structure.hxx".}
proc getZLayer*(this: Graphic3dStructure): Graphic3dZLayerId {.noSideEffect, cdecl,
    importcpp: "GetZLayer", header: "Graphic3d_Structure.hxx".}
proc setClipPlanes*(this: var Graphic3dStructure;
                   thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.cdecl,
    importcpp: "SetClipPlanes", header: "Graphic3d_Structure.hxx".}
proc clipPlanes*(this: Graphic3dStructure): Handle[Graphic3dSequenceOfHClipPlane] {.
    noSideEffect, cdecl, importcpp: "ClipPlanes", header: "Graphic3d_Structure.hxx".}
proc setVisible*(this: var Graphic3dStructure; aValue: bool) {.cdecl,
    importcpp: "SetVisible", header: "Graphic3d_Structure.hxx".}
proc setVisual*(this: var Graphic3dStructure; aVisual: Graphic3dTypeOfStructure) {.
    cdecl, importcpp: "SetVisual", header: "Graphic3d_Structure.hxx".}
proc setZoomLimit*(this: var Graphic3dStructure; limitInf: cfloat; limitSup: cfloat) {.
    cdecl, importcpp: "SetZoomLimit", header: "Graphic3d_Structure.hxx".}
proc setIsForHighlight*(this: var Graphic3dStructure; isForHighlight: bool) {.cdecl,
    importcpp: "SetIsForHighlight", header: "Graphic3d_Structure.hxx".}
proc unHighlight*(this: var Graphic3dStructure) {.cdecl, importcpp: "UnHighlight",
    header: "Graphic3d_Structure.hxx".}
proc compute*(this: var Graphic3dStructure) {.cdecl, importcpp: "Compute",
    header: "Graphic3d_Structure.hxx".}
proc computeHLR*(this: var Graphic3dStructure;
                theProjector: Handle[Graphic3dCamera];
                theStructure: var Handle[Graphic3dStructure]) {.cdecl,
    importcpp: "computeHLR", header: "Graphic3d_Structure.hxx".}
proc reCompute*(this: var Graphic3dStructure) {.cdecl, importcpp: "ReCompute",
    header: "Graphic3d_Structure.hxx".}
proc reCompute*(this: var Graphic3dStructure;
               aProjector: Handle[Graphic3dDataStructureManager]) {.cdecl,
    importcpp: "ReCompute", header: "Graphic3d_Structure.hxx".}
proc containsFacet*(this: Graphic3dStructure): bool {.noSideEffect, cdecl,
    importcpp: "ContainsFacet", header: "Graphic3d_Structure.hxx".}
proc groups*(this: Graphic3dStructure): Graphic3dSequenceOfGroup {.noSideEffect,
    cdecl, importcpp: "Groups", header: "Graphic3d_Structure.hxx".}
proc numberOfGroups*(this: Graphic3dStructure): cint {.noSideEffect, cdecl,
    importcpp: "NumberOfGroups", header: "Graphic3d_Structure.hxx".}
proc newGroup*(this: var Graphic3dStructure): Handle[Graphic3dGroup] {.cdecl,
    importcpp: "NewGroup", header: "Graphic3d_Structure.hxx".}
proc currentGroup*(this: var Graphic3dStructure): Handle[Graphic3dGroup] {.cdecl,
    importcpp: "CurrentGroup", header: "Graphic3d_Structure.hxx".}
proc highlightStyle*(this: Graphic3dStructure): Handle[
    Graphic3dPresentationAttributes] {.noSideEffect, cdecl,
                                      importcpp: "HighlightStyle", header: "Graphic3d_Structure.hxx".}
proc isDeleted*(this: Graphic3dStructure): bool {.noSideEffect, cdecl,
    importcpp: "IsDeleted", header: "Graphic3d_Structure.hxx".}
proc isDisplayed*(this: Graphic3dStructure): bool {.noSideEffect, cdecl,
    importcpp: "IsDisplayed", header: "Graphic3d_Structure.hxx".}
proc isEmpty*(this: Graphic3dStructure): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "Graphic3d_Structure.hxx".}
proc isInfinite*(this: Graphic3dStructure): bool {.noSideEffect, cdecl,
    importcpp: "IsInfinite", header: "Graphic3d_Structure.hxx".}
proc isHighlighted*(this: Graphic3dStructure): bool {.noSideEffect, cdecl,
    importcpp: "IsHighlighted", header: "Graphic3d_Structure.hxx".}
proc isTransformed*(this: Graphic3dStructure): bool {.noSideEffect, cdecl,
    importcpp: "IsTransformed", header: "Graphic3d_Structure.hxx".}
proc isVisible*(this: Graphic3dStructure): bool {.noSideEffect, cdecl,
    importcpp: "IsVisible", header: "Graphic3d_Structure.hxx".}
proc minMaxValues*(this: Graphic3dStructure; theToIgnoreInfiniteFlag: bool = false): BndBox {.
    noSideEffect, cdecl, importcpp: "MinMaxValues", header: "Graphic3d_Structure.hxx".}
proc visual*(this: Graphic3dStructure): Graphic3dTypeOfStructure {.noSideEffect,
    cdecl, importcpp: "Visual", header: "Graphic3d_Structure.hxx".}
proc acceptConnection*(theStructure1: ptr Graphic3dStructure;
                      theStructure2: ptr Graphic3dStructure;
                      theType: Graphic3dTypeOfConnection): bool {.cdecl,
    importcpp: "Graphic3d_Structure::AcceptConnection(@)", header: "Graphic3d_Structure.hxx".}
proc ancestors*(this: Graphic3dStructure; sg: var Graphic3dMapOfStructure) {.
    noSideEffect, cdecl, importcpp: "Ancestors", header: "Graphic3d_Structure.hxx".}
proc connect*(this: var Graphic3dStructure; theStructure: ptr Graphic3dStructure;
             theType: Graphic3dTypeOfConnection; theWithCheck: bool = false) {.cdecl,
    importcpp: "Connect", header: "Graphic3d_Structure.hxx".}
proc connect*(this: var Graphic3dStructure; thePrs: Handle[Graphic3dStructure]) {.
    cdecl, importcpp: "Connect", header: "Graphic3d_Structure.hxx".}
proc descendants*(this: Graphic3dStructure; sg: var Graphic3dMapOfStructure) {.
    noSideEffect, cdecl, importcpp: "Descendants", header: "Graphic3d_Structure.hxx".}
proc disconnect*(this: var Graphic3dStructure; theStructure: ptr Graphic3dStructure) {.
    cdecl, importcpp: "Disconnect", header: "Graphic3d_Structure.hxx".}
proc remove*(this: var Graphic3dStructure; thePrs: Handle[Graphic3dStructure]) {.
    cdecl, importcpp: "Remove", header: "Graphic3d_Structure.hxx".}
proc disconnectAll*(this: var Graphic3dStructure; aType: Graphic3dTypeOfConnection) {.
    cdecl, importcpp: "DisconnectAll", header: "Graphic3d_Structure.hxx".}
proc removeAll*(this: var Graphic3dStructure) {.cdecl, importcpp: "RemoveAll",
    header: "Graphic3d_Structure.hxx".}
#proc network*(theStructure: ptr Graphic3dStructure;
#             theType: Graphic3dTypeOfConnection;
#             theSet: var NCollectionMap[ptr Graphic3dStructure]) {.cdecl,
#    importcpp: "Graphic3d_Structure::Network(@)", header: "Graphic3d_Structure.hxx".}
proc setOwner*(this: var Graphic3dStructure; theOwner: pointer) {.cdecl,
    importcpp: "SetOwner", header: "Graphic3d_Structure.hxx".}
proc owner*(this: Graphic3dStructure): pointer {.noSideEffect, cdecl,
    importcpp: "Owner", header: "Graphic3d_Structure.hxx".}
proc setHLRValidation*(this: var Graphic3dStructure; theFlag: bool) {.cdecl,
    importcpp: "SetHLRValidation", header: "Graphic3d_Structure.hxx".}
proc hLRValidation*(this: Graphic3dStructure): bool {.noSideEffect, cdecl,
    importcpp: "HLRValidation", header: "Graphic3d_Structure.hxx".}
proc transformation*(this: Graphic3dStructure): Handle[TopLocDatum3D] {.
    noSideEffect, cdecl, importcpp: "Transformation", header: "Graphic3d_Structure.hxx".}
proc setTransformation*(this: var Graphic3dStructure; theTrsf: Handle[TopLocDatum3D]) {.
    cdecl, importcpp: "SetTransformation", header: "Graphic3d_Structure.hxx".}
proc transform*(this: var Graphic3dStructure; theTrsf: Handle[TopLocDatum3D]) {.cdecl,
    importcpp: "Transform", header: "Graphic3d_Structure.hxx".}
proc setTransformPersistence*(this: var Graphic3dStructure;
                             theTrsfPers: Handle[Graphic3dTransformPers]) {.cdecl,
    importcpp: "SetTransformPersistence", header: "Graphic3d_Structure.hxx".}
proc transformPersistence*(this: Graphic3dStructure): Handle[Graphic3dTransformPers] {.
    noSideEffect, cdecl, importcpp: "TransformPersistence", header: "Graphic3d_Structure.hxx".}
proc setMutable*(this: var Graphic3dStructure; theIsMutable: bool) {.cdecl,
    importcpp: "SetMutable", header: "Graphic3d_Structure.hxx".}
proc isMutable*(this: Graphic3dStructure): bool {.noSideEffect, cdecl,
    importcpp: "IsMutable", header: "Graphic3d_Structure.hxx".}
proc computeVisual*(this: Graphic3dStructure): Graphic3dTypeOfStructure {.
    noSideEffect, cdecl, importcpp: "ComputeVisual", header: "Graphic3d_Structure.hxx".}
proc graphicClear*(this: var Graphic3dStructure; withDestruction: bool) {.cdecl,
    importcpp: "GraphicClear", header: "Graphic3d_Structure.hxx".}
proc graphicConnect*(this: var Graphic3dStructure;
                    theDaughter: Handle[Graphic3dStructure]) {.cdecl,
    importcpp: "GraphicConnect", header: "Graphic3d_Structure.hxx".}
proc graphicDisconnect*(this: var Graphic3dStructure;
                       theDaughter: Handle[Graphic3dStructure]) {.cdecl,
    importcpp: "GraphicDisconnect", header: "Graphic3d_Structure.hxx".}
proc graphicTransform*(this: var Graphic3dStructure; theTrsf: Handle[TopLocDatum3D]) {.
    cdecl, importcpp: "GraphicTransform", header: "Graphic3d_Structure.hxx".}
proc identification*(this: Graphic3dStructure): cint {.noSideEffect, cdecl,
    importcpp: "Identification", header: "Graphic3d_Structure.hxx".}
proc printNetwork*(aStructure: Handle[Graphic3dStructure];
                  aType: Graphic3dTypeOfConnection) {.cdecl,
    importcpp: "Graphic3d_Structure::PrintNetwork(@)", header: "Graphic3d_Structure.hxx".}
proc remove*(this: var Graphic3dStructure; thePtr: ptr Graphic3dStructure;
            theType: Graphic3dTypeOfConnection) {.cdecl, importcpp: "Remove",
    header: "Graphic3d_Structure.hxx".}
proc setComputeVisual*(this: var Graphic3dStructure;
                      theVisual: Graphic3dTypeOfStructure) {.cdecl,
    importcpp: "SetComputeVisual", header: "Graphic3d_Structure.hxx".}
proc transforms*(theTrsf: gp_Trsf; theX: cfloat; theY: cfloat; theZ: cfloat;
                theNewX: var cfloat; theNewY: var cfloat; theNewZ: var cfloat) {.cdecl,
    importcpp: "Graphic3d_Structure::Transforms(@)", header: "Graphic3d_Structure.hxx".}
proc cStructure*(this: Graphic3dStructure): Handle[Graphic3dCStructure] {.
    noSideEffect, cdecl, importcpp: "CStructure", header: "Graphic3d_Structure.hxx".}
proc dumpJson*(this: Graphic3dStructure; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_Structure.hxx".}


