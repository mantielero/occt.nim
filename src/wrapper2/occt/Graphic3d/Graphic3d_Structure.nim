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

import
  Graphic3d_BndBox4f, Graphic3d_BndBox4d, Graphic3d_CStructure,
  Graphic3d_MapOfStructure, Graphic3d_SequenceOfGroup,
  Graphic3d_SequenceOfHClipPlane, Graphic3d_TypeOfComposition,
  Graphic3d_TypeOfConnection, Graphic3d_TypeOfStructure, Graphic3d_TransformPers,
  Graphic3d_TransModeFlags, Graphic3d_Vertex, Graphic3d_ZLayerId,
  ../NCollection/NCollection_IndexedMap

discard "forward decl of Graphic3d_StructureManager"
discard "forward decl of Graphic3d_DataStructureManager"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pnt"
discard "forward decl of Graphic3d_Structure"
type
  Handle_Graphic3d_Structure* = handle[Graphic3d_Structure]

## ! This class allows the definition a graphic object.
## ! This graphic structure can be displayed, erased, or highlighted.
## ! This graphic structure can be connected with another graphic structure.

type
  Graphic3d_Structure* {.importcpp: "Graphic3d_Structure",
                        header: "Graphic3d_Structure.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## graphic
                                                                                            ## object
                                                                                            ## in
                                                                                            ## the
                                                                                            ## manager
                                                                                            ## theManager.
                                                                                            ##
                                                                                            ## !
                                                                                            ## It
                                                                                            ## will
                                                                                            ## appear
                                                                                            ## in
                                                                                            ## all
                                                                                            ## the
                                                                                            ## views
                                                                                            ## of
                                                                                            ## the
                                                                                            ## visualiser.
                                                                                            ##
                                                                                            ## !
                                                                                            ## The
                                                                                            ## structure
                                                                                            ## is
                                                                                            ## not
                                                                                            ## displayed
                                                                                            ## when
                                                                                            ## it
                                                                                            ## is
                                                                                            ## created.
                                                                                            ##
                                                                                            ## !
                                                                                            ## @param
                                                                                            ## theManager
                                                                                            ## structure
                                                                                            ## manager
                                                                                            ## holding
                                                                                            ## this
                                                                                            ## structure
                                                                                            ##
                                                                                            ## !
                                                                                            ## @param
                                                                                            ## theLinkPrs
                                                                                            ## another
                                                                                            ## structure
                                                                                            ## for
                                                                                            ## creating
                                                                                            ## a
                                                                                            ## shadow
                                                                                            ## (linked)
                                                                                            ## structure
                                                                                            ##
                                                                                            ## !
                                                                                            ## Transforms
                                                                                            ## boundaries
                                                                                            ## with
                                                                                            ## <theTrsf>
                                                                                            ## transformation.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Suppress
                                                                                            ## in
                                                                                            ## the
                                                                                            ## structure
                                                                                            ## <me>,
                                                                                            ## the
                                                                                            ## group
                                                                                            ## theGroup.
                                                                                            ##
                                                                                            ## !
                                                                                            ## It
                                                                                            ## will
                                                                                            ## be
                                                                                            ## erased
                                                                                            ## at
                                                                                            ## the
                                                                                            ## next
                                                                                            ## screen
                                                                                            ## update.

  Graphic3d_Structurebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_Structure::get_type_name(@)",
                              header: "Graphic3d_Structure.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_Structure::get_type_descriptor(@)",
    header: "Graphic3d_Structure.hxx".}
proc DynamicType*(this: Graphic3d_Structure): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Structure.hxx".}
proc constructGraphic3d_Structure*(theManager: handle[Graphic3d_StructureManager];
    theLinkPrs: handle[Graphic3d_Structure] = handle[Graphic3d_Structure]()): Graphic3d_Structure {.
    constructor, importcpp: "Graphic3d_Structure(@)",
    header: "Graphic3d_Structure.hxx".}
proc Clear*(this: var Graphic3d_Structure;
           WithDestruction: Standard_Boolean = Standard_True) {.importcpp: "Clear",
    header: "Graphic3d_Structure.hxx".}
proc destroyGraphic3d_Structure*(this: var Graphic3d_Structure) {.
    importcpp: "#.~Graphic3d_Structure()", header: "Graphic3d_Structure.hxx".}
proc Display*(this: var Graphic3d_Structure) {.importcpp: "Display",
    header: "Graphic3d_Structure.hxx".}
proc DisplayPriority*(this: Graphic3d_Structure): Standard_Integer {.noSideEffect,
    importcpp: "DisplayPriority", header: "Graphic3d_Structure.hxx".}
proc Erase*(this: var Graphic3d_Structure) {.importcpp: "Erase",
    header: "Graphic3d_Structure.hxx".}
proc Highlight*(this: var Graphic3d_Structure;
               theStyle: handle[Graphic3d_PresentationAttributes];
               theToUpdateMgr: Standard_Boolean = Standard_True) {.
    importcpp: "Highlight", header: "Graphic3d_Structure.hxx".}
proc Remove*(this: var Graphic3d_Structure) {.importcpp: "Remove",
    header: "Graphic3d_Structure.hxx".}
proc CalculateBoundBox*(this: var Graphic3d_Structure) {.
    importcpp: "CalculateBoundBox", header: "Graphic3d_Structure.hxx".}
proc SetInfiniteState*(this: var Graphic3d_Structure; theToSet: Standard_Boolean) {.
    importcpp: "SetInfiniteState", header: "Graphic3d_Structure.hxx".}
proc SetDisplayPriority*(this: var Graphic3d_Structure; Priority: Standard_Integer) {.
    importcpp: "SetDisplayPriority", header: "Graphic3d_Structure.hxx".}
proc ResetDisplayPriority*(this: var Graphic3d_Structure) {.
    importcpp: "ResetDisplayPriority", header: "Graphic3d_Structure.hxx".}
proc SetZLayer*(this: var Graphic3d_Structure; theLayerId: Graphic3d_ZLayerId) {.
    importcpp: "SetZLayer", header: "Graphic3d_Structure.hxx".}
proc GetZLayer*(this: Graphic3d_Structure): Graphic3d_ZLayerId {.noSideEffect,
    importcpp: "GetZLayer", header: "Graphic3d_Structure.hxx".}
proc SetClipPlanes*(this: var Graphic3d_Structure;
                   thePlanes: handle[Graphic3d_SequenceOfHClipPlane]) {.
    importcpp: "SetClipPlanes", header: "Graphic3d_Structure.hxx".}
proc ClipPlanes*(this: Graphic3d_Structure): handle[Graphic3d_SequenceOfHClipPlane] {.
    noSideEffect, importcpp: "ClipPlanes", header: "Graphic3d_Structure.hxx".}
proc SetVisible*(this: var Graphic3d_Structure; AValue: Standard_Boolean) {.
    importcpp: "SetVisible", header: "Graphic3d_Structure.hxx".}
proc SetVisual*(this: var Graphic3d_Structure; AVisual: Graphic3d_TypeOfStructure) {.
    importcpp: "SetVisual", header: "Graphic3d_Structure.hxx".}
proc SetZoomLimit*(this: var Graphic3d_Structure; LimitInf: Standard_Real;
                  LimitSup: Standard_Real) {.importcpp: "SetZoomLimit",
    header: "Graphic3d_Structure.hxx".}
proc SetIsForHighlight*(this: var Graphic3d_Structure;
                       isForHighlight: Standard_Boolean) {.
    importcpp: "SetIsForHighlight", header: "Graphic3d_Structure.hxx".}
proc UnHighlight*(this: var Graphic3d_Structure) {.importcpp: "UnHighlight",
    header: "Graphic3d_Structure.hxx".}
proc Compute*(this: var Graphic3d_Structure) {.importcpp: "Compute",
    header: "Graphic3d_Structure.hxx".}
proc computeHLR*(this: var Graphic3d_Structure;
                theProjector: handle[Graphic3d_Camera];
                theStructure: var handle[Graphic3d_Structure]) {.
    importcpp: "computeHLR", header: "Graphic3d_Structure.hxx".}
proc ReCompute*(this: var Graphic3d_Structure) {.importcpp: "ReCompute",
    header: "Graphic3d_Structure.hxx".}
proc ReCompute*(this: var Graphic3d_Structure;
               aProjector: handle[Graphic3d_DataStructureManager]) {.
    importcpp: "ReCompute", header: "Graphic3d_Structure.hxx".}
proc ContainsFacet*(this: Graphic3d_Structure): Standard_Boolean {.noSideEffect,
    importcpp: "ContainsFacet", header: "Graphic3d_Structure.hxx".}
proc Groups*(this: Graphic3d_Structure): Graphic3d_SequenceOfGroup {.noSideEffect,
    importcpp: "Groups", header: "Graphic3d_Structure.hxx".}
proc NumberOfGroups*(this: Graphic3d_Structure): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfGroups", header: "Graphic3d_Structure.hxx".}
proc NewGroup*(this: var Graphic3d_Structure): handle[Graphic3d_Group] {.
    importcpp: "NewGroup", header: "Graphic3d_Structure.hxx".}
proc CurrentGroup*(this: var Graphic3d_Structure): handle[Graphic3d_Group] {.
    importcpp: "CurrentGroup", header: "Graphic3d_Structure.hxx".}
proc HighlightStyle*(this: Graphic3d_Structure): handle[
    Graphic3d_PresentationAttributes] {.noSideEffect, importcpp: "HighlightStyle",
                                       header: "Graphic3d_Structure.hxx".}
proc IsDeleted*(this: Graphic3d_Structure): Standard_Boolean {.noSideEffect,
    importcpp: "IsDeleted", header: "Graphic3d_Structure.hxx".}
proc IsDisplayed*(this: Graphic3d_Structure): Standard_Boolean {.noSideEffect,
    importcpp: "IsDisplayed", header: "Graphic3d_Structure.hxx".}
proc IsEmpty*(this: Graphic3d_Structure): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Graphic3d_Structure.hxx".}
proc IsInfinite*(this: Graphic3d_Structure): Standard_Boolean {.noSideEffect,
    importcpp: "IsInfinite", header: "Graphic3d_Structure.hxx".}
proc IsHighlighted*(this: Graphic3d_Structure): Standard_Boolean {.noSideEffect,
    importcpp: "IsHighlighted", header: "Graphic3d_Structure.hxx".}
proc IsTransformed*(this: Graphic3d_Structure): Standard_Boolean {.noSideEffect,
    importcpp: "IsTransformed", header: "Graphic3d_Structure.hxx".}
proc IsVisible*(this: Graphic3d_Structure): Standard_Boolean {.noSideEffect,
    importcpp: "IsVisible", header: "Graphic3d_Structure.hxx".}
proc MinMaxValues*(this: Graphic3d_Structure;
                  theToIgnoreInfiniteFlag: Standard_Boolean = Standard_False): Bnd_Box {.
    noSideEffect, importcpp: "MinMaxValues", header: "Graphic3d_Structure.hxx".}
proc Visual*(this: Graphic3d_Structure): Graphic3d_TypeOfStructure {.noSideEffect,
    importcpp: "Visual", header: "Graphic3d_Structure.hxx".}
proc AcceptConnection*(theStructure1: ptr Graphic3d_Structure;
                      theStructure2: ptr Graphic3d_Structure;
                      theType: Graphic3d_TypeOfConnection): Standard_Boolean {.
    importcpp: "Graphic3d_Structure::AcceptConnection(@)",
    header: "Graphic3d_Structure.hxx".}
proc Ancestors*(this: Graphic3d_Structure; SG: var Graphic3d_MapOfStructure) {.
    noSideEffect, importcpp: "Ancestors", header: "Graphic3d_Structure.hxx".}
proc Connect*(this: var Graphic3d_Structure; theStructure: ptr Graphic3d_Structure;
             theType: Graphic3d_TypeOfConnection;
             theWithCheck: Standard_Boolean = Standard_False) {.
    importcpp: "Connect", header: "Graphic3d_Structure.hxx".}
## !!!Ignored construct:  Standard_DEPRECATED ( Deprecated short-cut ) void Connect ( const opencascade :: handle < Graphic3d_Structure > [end of template] & thePrs ) { Connect ( thePrs . get ( ) , Graphic3d_TOC_DESCENDANT ) ; } ! Returns the group of structures connected to <me>. void Descendants ( Graphic3d_MapOfStructure & SG ) const ;
## Error: identifier expected, but got: Deprecated short-cut!!!

proc Disconnect*(this: var Graphic3d_Structure;
                theStructure: ptr Graphic3d_Structure) {.importcpp: "Disconnect",
    header: "Graphic3d_Structure.hxx".}
## !!!Ignored construct:  Standard_DEPRECATED ( Deprecated alias for Disconnect() ) void Remove ( const opencascade :: handle < Graphic3d_Structure > [end of template] & thePrs ) { Disconnect ( thePrs . get ( ) ) ; } ! If Atype is TOC_DESCENDANT then suppress all
## ! the connections with the child structures of <me>.
## ! If Atype is TOC_ANCESTOR then suppress all
## ! the connections with the parent structures of <me>. void DisconnectAll ( const Graphic3d_TypeOfConnection AType ) ;
## Error: identifier expected, but got: Deprecated alias for Disconnect()!!!

## !!!Ignored construct:  Standard_DEPRECATED ( Deprecated alias for DisconnectAll() ) void RemoveAll ( ) { DisconnectAll ( Graphic3d_TOC_DESCENDANT ) ; } ! Returns <ASet> the group of structures :
## ! - directly or indirectly connected to <AStructure> if the
## ! TypeOfConnection == TOC_DESCENDANT
## ! - to which <AStructure> is directly or indirectly connected
## ! if the TypeOfConnection == TOC_ANCESTOR static void Network ( Graphic3d_Structure * theStructure , const Graphic3d_TypeOfConnection theType , NCollection_Map < Graphic3d_Structure * > & theSet ) ;
## Error: identifier expected, but got: Deprecated alias for DisconnectAll()!!!

proc SetOwner*(this: var Graphic3d_Structure; theOwner: Standard_Address) {.
    importcpp: "SetOwner", header: "Graphic3d_Structure.hxx".}
proc Owner*(this: Graphic3d_Structure): Standard_Address {.noSideEffect,
    importcpp: "Owner", header: "Graphic3d_Structure.hxx".}
proc SetHLRValidation*(this: var Graphic3d_Structure; theFlag: Standard_Boolean) {.
    importcpp: "SetHLRValidation", header: "Graphic3d_Structure.hxx".}
proc HLRValidation*(this: Graphic3d_Structure): Standard_Boolean {.noSideEffect,
    importcpp: "HLRValidation", header: "Graphic3d_Structure.hxx".}
proc Transformation*(this: Graphic3d_Structure): handle[TopLoc_Datum3D] {.
    noSideEffect, importcpp: "Transformation", header: "Graphic3d_Structure.hxx".}
proc SetTransformation*(this: var Graphic3d_Structure;
                       theTrsf: handle[TopLoc_Datum3D]) {.
    importcpp: "SetTransformation", header: "Graphic3d_Structure.hxx".}
## !!!Ignored construct:  Standard_DEPRECATED ( This method is deprecated - SetTransformation() should be called instead ) void Transform ( const opencascade :: handle < TopLoc_Datum3D > [end of template] & theTrsf ) { SetTransformation ( theTrsf ) ; } ! Modifies the current transform persistence (pan, zoom or rotate) void SetTransformPersistence ( const opencascade :: handle < Graphic3d_TransformPers > [end of template] & theTrsfPers ) ;
## Error: identifier expected, but got: This method is deprecated - SetTransformation() should be called instead!!!

proc TransformPersistence*(this: Graphic3d_Structure): handle[
    Graphic3d_TransformPers] {.noSideEffect, importcpp: "TransformPersistence",
                              header: "Graphic3d_Structure.hxx".}
proc SetMutable*(this: var Graphic3d_Structure; theIsMutable: Standard_Boolean) {.
    importcpp: "SetMutable", header: "Graphic3d_Structure.hxx".}
proc IsMutable*(this: Graphic3d_Structure): Standard_Boolean {.noSideEffect,
    importcpp: "IsMutable", header: "Graphic3d_Structure.hxx".}
proc ComputeVisual*(this: Graphic3d_Structure): Graphic3d_TypeOfStructure {.
    noSideEffect, importcpp: "ComputeVisual", header: "Graphic3d_Structure.hxx".}
proc GraphicClear*(this: var Graphic3d_Structure; WithDestruction: Standard_Boolean) {.
    importcpp: "GraphicClear", header: "Graphic3d_Structure.hxx".}
proc GraphicConnect*(this: var Graphic3d_Structure;
                    theDaughter: handle[Graphic3d_Structure]) {.
    importcpp: "GraphicConnect", header: "Graphic3d_Structure.hxx".}
proc GraphicDisconnect*(this: var Graphic3d_Structure;
                       theDaughter: handle[Graphic3d_Structure]) {.
    importcpp: "GraphicDisconnect", header: "Graphic3d_Structure.hxx".}
proc GraphicTransform*(this: var Graphic3d_Structure;
                      theTrsf: handle[TopLoc_Datum3D]) {.
    importcpp: "GraphicTransform", header: "Graphic3d_Structure.hxx".}
proc Identification*(this: Graphic3d_Structure): Standard_Integer {.noSideEffect,
    importcpp: "Identification", header: "Graphic3d_Structure.hxx".}
proc PrintNetwork*(AStructure: handle[Graphic3d_Structure];
                  AType: Graphic3d_TypeOfConnection) {.
    importcpp: "Graphic3d_Structure::PrintNetwork(@)",
    header: "Graphic3d_Structure.hxx".}
proc Remove*(this: var Graphic3d_Structure; thePtr: ptr Graphic3d_Structure;
            theType: Graphic3d_TypeOfConnection) {.importcpp: "Remove",
    header: "Graphic3d_Structure.hxx".}
proc SetComputeVisual*(this: var Graphic3d_Structure;
                      theVisual: Graphic3d_TypeOfStructure) {.
    importcpp: "SetComputeVisual", header: "Graphic3d_Structure.hxx".}
proc Transforms*(theTrsf: gp_Trsf; theX: Standard_Real; theY: Standard_Real;
                theZ: Standard_Real; theNewX: var Standard_Real;
                theNewY: var Standard_Real; theNewZ: var Standard_Real) {.
    importcpp: "Graphic3d_Structure::Transforms(@)",
    header: "Graphic3d_Structure.hxx".}
proc CStructure*(this: Graphic3d_Structure): handle[Graphic3d_CStructure] {.
    noSideEffect, importcpp: "CStructure", header: "Graphic3d_Structure.hxx".}
proc DumpJson*(this: Graphic3d_Structure; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_Structure.hxx".}