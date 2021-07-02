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

discard "forward decl of Graphic3d_StructureManager"
discard "forward decl of Graphic3d_DataStructureManager"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pnt"
discard "forward decl of Graphic3d_Structure"
type
  HandleGraphic3dStructure* = Handle[Graphic3dStructure]

## ! This class allows the definition a graphic object.
## ! This graphic structure can be displayed, erased, or highlighted.
## ! This graphic structure can be connected with another graphic structure.

type
  Graphic3dStructure* {.importcpp: "Graphic3d_Structure",
                       header: "Graphic3d_Structure.hxx", bycopy.} = object of StandardTransient ##
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

  Graphic3dStructurebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_Structure::get_type_name(@)",
                            header: "Graphic3d_Structure.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_Structure::get_type_descriptor(@)",
    header: "Graphic3d_Structure.hxx".}
proc dynamicType*(this: Graphic3dStructure): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Structure.hxx".}
proc constructGraphic3dStructure*(theManager: Handle[Graphic3dStructureManager];
    theLinkPrs: Handle[Graphic3dStructure] = handle[Graphic3dStructure]()): Graphic3dStructure {.
    constructor, importcpp: "Graphic3d_Structure(@)",
    header: "Graphic3d_Structure.hxx".}
proc clear*(this: var Graphic3dStructure;
           withDestruction: StandardBoolean = standardTrue) {.importcpp: "Clear",
    header: "Graphic3d_Structure.hxx".}
proc destroyGraphic3dStructure*(this: var Graphic3dStructure) {.
    importcpp: "#.~Graphic3d_Structure()", header: "Graphic3d_Structure.hxx".}
proc display*(this: var Graphic3dStructure) {.importcpp: "Display",
    header: "Graphic3d_Structure.hxx".}
proc displayPriority*(this: Graphic3dStructure): StandardInteger {.noSideEffect,
    importcpp: "DisplayPriority", header: "Graphic3d_Structure.hxx".}
proc erase*(this: var Graphic3dStructure) {.importcpp: "Erase",
                                        header: "Graphic3d_Structure.hxx".}
proc highlight*(this: var Graphic3dStructure;
               theStyle: Handle[Graphic3dPresentationAttributes];
               theToUpdateMgr: StandardBoolean = standardTrue) {.
    importcpp: "Highlight", header: "Graphic3d_Structure.hxx".}
proc remove*(this: var Graphic3dStructure) {.importcpp: "Remove",
    header: "Graphic3d_Structure.hxx".}
proc calculateBoundBox*(this: var Graphic3dStructure) {.
    importcpp: "CalculateBoundBox", header: "Graphic3d_Structure.hxx".}
proc setInfiniteState*(this: var Graphic3dStructure; theToSet: StandardBoolean) {.
    importcpp: "SetInfiniteState", header: "Graphic3d_Structure.hxx".}
proc setDisplayPriority*(this: var Graphic3dStructure; priority: StandardInteger) {.
    importcpp: "SetDisplayPriority", header: "Graphic3d_Structure.hxx".}
proc resetDisplayPriority*(this: var Graphic3dStructure) {.
    importcpp: "ResetDisplayPriority", header: "Graphic3d_Structure.hxx".}
proc setZLayer*(this: var Graphic3dStructure; theLayerId: Graphic3dZLayerId) {.
    importcpp: "SetZLayer", header: "Graphic3d_Structure.hxx".}
proc getZLayer*(this: Graphic3dStructure): Graphic3dZLayerId {.noSideEffect,
    importcpp: "GetZLayer", header: "Graphic3d_Structure.hxx".}
proc setClipPlanes*(this: var Graphic3dStructure;
                   thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.
    importcpp: "SetClipPlanes", header: "Graphic3d_Structure.hxx".}
proc clipPlanes*(this: Graphic3dStructure): Handle[Graphic3dSequenceOfHClipPlane] {.
    noSideEffect, importcpp: "ClipPlanes", header: "Graphic3d_Structure.hxx".}
proc setVisible*(this: var Graphic3dStructure; aValue: StandardBoolean) {.
    importcpp: "SetVisible", header: "Graphic3d_Structure.hxx".}
proc setVisual*(this: var Graphic3dStructure; aVisual: Graphic3dTypeOfStructure) {.
    importcpp: "SetVisual", header: "Graphic3d_Structure.hxx".}
proc setZoomLimit*(this: var Graphic3dStructure; limitInf: StandardReal;
                  limitSup: StandardReal) {.importcpp: "SetZoomLimit",
    header: "Graphic3d_Structure.hxx".}
proc setIsForHighlight*(this: var Graphic3dStructure;
                       isForHighlight: StandardBoolean) {.
    importcpp: "SetIsForHighlight", header: "Graphic3d_Structure.hxx".}
proc unHighlight*(this: var Graphic3dStructure) {.importcpp: "UnHighlight",
    header: "Graphic3d_Structure.hxx".}
proc compute*(this: var Graphic3dStructure) {.importcpp: "Compute",
    header: "Graphic3d_Structure.hxx".}
proc computeHLR*(this: var Graphic3dStructure;
                theProjector: Handle[Graphic3dCamera];
                theStructure: var Handle[Graphic3dStructure]) {.
    importcpp: "computeHLR", header: "Graphic3d_Structure.hxx".}
proc reCompute*(this: var Graphic3dStructure) {.importcpp: "ReCompute",
    header: "Graphic3d_Structure.hxx".}
proc reCompute*(this: var Graphic3dStructure;
               aProjector: Handle[Graphic3dDataStructureManager]) {.
    importcpp: "ReCompute", header: "Graphic3d_Structure.hxx".}
proc containsFacet*(this: Graphic3dStructure): StandardBoolean {.noSideEffect,
    importcpp: "ContainsFacet", header: "Graphic3d_Structure.hxx".}
proc groups*(this: Graphic3dStructure): Graphic3dSequenceOfGroup {.noSideEffect,
    importcpp: "Groups", header: "Graphic3d_Structure.hxx".}
proc numberOfGroups*(this: Graphic3dStructure): StandardInteger {.noSideEffect,
    importcpp: "NumberOfGroups", header: "Graphic3d_Structure.hxx".}
proc newGroup*(this: var Graphic3dStructure): Handle[Graphic3dGroup] {.
    importcpp: "NewGroup", header: "Graphic3d_Structure.hxx".}
proc currentGroup*(this: var Graphic3dStructure): Handle[Graphic3dGroup] {.
    importcpp: "CurrentGroup", header: "Graphic3d_Structure.hxx".}
proc highlightStyle*(this: Graphic3dStructure): Handle[
    Graphic3dPresentationAttributes] {.noSideEffect, importcpp: "HighlightStyle",
                                      header: "Graphic3d_Structure.hxx".}
proc isDeleted*(this: Graphic3dStructure): StandardBoolean {.noSideEffect,
    importcpp: "IsDeleted", header: "Graphic3d_Structure.hxx".}
proc isDisplayed*(this: Graphic3dStructure): StandardBoolean {.noSideEffect,
    importcpp: "IsDisplayed", header: "Graphic3d_Structure.hxx".}
proc isEmpty*(this: Graphic3dStructure): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Graphic3d_Structure.hxx".}
proc isInfinite*(this: Graphic3dStructure): StandardBoolean {.noSideEffect,
    importcpp: "IsInfinite", header: "Graphic3d_Structure.hxx".}
proc isHighlighted*(this: Graphic3dStructure): StandardBoolean {.noSideEffect,
    importcpp: "IsHighlighted", header: "Graphic3d_Structure.hxx".}
proc isTransformed*(this: Graphic3dStructure): StandardBoolean {.noSideEffect,
    importcpp: "IsTransformed", header: "Graphic3d_Structure.hxx".}
proc isVisible*(this: Graphic3dStructure): StandardBoolean {.noSideEffect,
    importcpp: "IsVisible", header: "Graphic3d_Structure.hxx".}
proc minMaxValues*(this: Graphic3dStructure;
                  theToIgnoreInfiniteFlag: StandardBoolean = standardFalse): BndBox {.
    noSideEffect, importcpp: "MinMaxValues", header: "Graphic3d_Structure.hxx".}
proc visual*(this: Graphic3dStructure): Graphic3dTypeOfStructure {.noSideEffect,
    importcpp: "Visual", header: "Graphic3d_Structure.hxx".}
proc acceptConnection*(theStructure1: ptr Graphic3dStructure;
                      theStructure2: ptr Graphic3dStructure;
                      theType: Graphic3dTypeOfConnection): StandardBoolean {.
    importcpp: "Graphic3d_Structure::AcceptConnection(@)",
    header: "Graphic3d_Structure.hxx".}
proc ancestors*(this: Graphic3dStructure; sg: var Graphic3dMapOfStructure) {.
    noSideEffect, importcpp: "Ancestors", header: "Graphic3d_Structure.hxx".}
proc connect*(this: var Graphic3dStructure; theStructure: ptr Graphic3dStructure;
             theType: Graphic3dTypeOfConnection;
             theWithCheck: StandardBoolean = standardFalse) {.importcpp: "Connect",
    header: "Graphic3d_Structure.hxx".}
## !!!Ignored construct:  Standard_DEPRECATED ( Deprecated short-cut ) void Connect ( const opencascade :: handle < Graphic3d_Structure > [end of template] & thePrs ) { Connect ( thePrs . get ( ) , Graphic3d_TOC_DESCENDANT ) ; } ! Returns the group of structures connected to <me>. void Descendants ( Graphic3d_MapOfStructure & SG ) const ;
## Error: identifier expected, but got: Deprecated short-cut!!!

proc disconnect*(this: var Graphic3dStructure; theStructure: ptr Graphic3dStructure) {.
    importcpp: "Disconnect", header: "Graphic3d_Structure.hxx".}
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

proc setOwner*(this: var Graphic3dStructure; theOwner: StandardAddress) {.
    importcpp: "SetOwner", header: "Graphic3d_Structure.hxx".}
proc owner*(this: Graphic3dStructure): StandardAddress {.noSideEffect,
    importcpp: "Owner", header: "Graphic3d_Structure.hxx".}
proc setHLRValidation*(this: var Graphic3dStructure; theFlag: StandardBoolean) {.
    importcpp: "SetHLRValidation", header: "Graphic3d_Structure.hxx".}
proc hLRValidation*(this: Graphic3dStructure): StandardBoolean {.noSideEffect,
    importcpp: "HLRValidation", header: "Graphic3d_Structure.hxx".}
proc transformation*(this: Graphic3dStructure): Handle[TopLocDatum3D] {.
    noSideEffect, importcpp: "Transformation", header: "Graphic3d_Structure.hxx".}
proc setTransformation*(this: var Graphic3dStructure; theTrsf: Handle[TopLocDatum3D]) {.
    importcpp: "SetTransformation", header: "Graphic3d_Structure.hxx".}
## !!!Ignored construct:  Standard_DEPRECATED ( This method is deprecated - SetTransformation() should be called instead ) void Transform ( const opencascade :: handle < TopLoc_Datum3D > [end of template] & theTrsf ) { SetTransformation ( theTrsf ) ; } ! Modifies the current transform persistence (pan, zoom or rotate) void SetTransformPersistence ( const opencascade :: handle < Graphic3d_TransformPers > [end of template] & theTrsfPers ) ;
## Error: identifier expected, but got: This method is deprecated - SetTransformation() should be called instead!!!

proc transformPersistence*(this: Graphic3dStructure): Handle[Graphic3dTransformPers] {.
    noSideEffect, importcpp: "TransformPersistence",
    header: "Graphic3d_Structure.hxx".}
proc setMutable*(this: var Graphic3dStructure; theIsMutable: StandardBoolean) {.
    importcpp: "SetMutable", header: "Graphic3d_Structure.hxx".}
proc isMutable*(this: Graphic3dStructure): StandardBoolean {.noSideEffect,
    importcpp: "IsMutable", header: "Graphic3d_Structure.hxx".}
proc computeVisual*(this: Graphic3dStructure): Graphic3dTypeOfStructure {.
    noSideEffect, importcpp: "ComputeVisual", header: "Graphic3d_Structure.hxx".}
proc graphicClear*(this: var Graphic3dStructure; withDestruction: StandardBoolean) {.
    importcpp: "GraphicClear", header: "Graphic3d_Structure.hxx".}
proc graphicConnect*(this: var Graphic3dStructure;
                    theDaughter: Handle[Graphic3dStructure]) {.
    importcpp: "GraphicConnect", header: "Graphic3d_Structure.hxx".}
proc graphicDisconnect*(this: var Graphic3dStructure;
                       theDaughter: Handle[Graphic3dStructure]) {.
    importcpp: "GraphicDisconnect", header: "Graphic3d_Structure.hxx".}
proc graphicTransform*(this: var Graphic3dStructure; theTrsf: Handle[TopLocDatum3D]) {.
    importcpp: "GraphicTransform", header: "Graphic3d_Structure.hxx".}
proc identification*(this: Graphic3dStructure): StandardInteger {.noSideEffect,
    importcpp: "Identification", header: "Graphic3d_Structure.hxx".}
proc printNetwork*(aStructure: Handle[Graphic3dStructure];
                  aType: Graphic3dTypeOfConnection) {.
    importcpp: "Graphic3d_Structure::PrintNetwork(@)",
    header: "Graphic3d_Structure.hxx".}
proc remove*(this: var Graphic3dStructure; thePtr: ptr Graphic3dStructure;
            theType: Graphic3dTypeOfConnection) {.importcpp: "Remove",
    header: "Graphic3d_Structure.hxx".}
proc setComputeVisual*(this: var Graphic3dStructure;
                      theVisual: Graphic3dTypeOfStructure) {.
    importcpp: "SetComputeVisual", header: "Graphic3d_Structure.hxx".}
proc transforms*(theTrsf: GpTrsf; theX: StandardReal; theY: StandardReal;
                theZ: StandardReal; theNewX: var StandardReal;
                theNewY: var StandardReal; theNewZ: var StandardReal) {.
    importcpp: "Graphic3d_Structure::Transforms(@)",
    header: "Graphic3d_Structure.hxx".}
proc cStructure*(this: Graphic3dStructure): Handle[Graphic3dCStructure] {.
    noSideEffect, importcpp: "CStructure", header: "Graphic3d_Structure.hxx".}
proc dumpJson*(this: Graphic3dStructure; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_Structure.hxx".}

