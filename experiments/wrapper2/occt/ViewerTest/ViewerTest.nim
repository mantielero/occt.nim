##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2015 OPEN CASCADE SAS
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

discard "forward decl of AIS_InteractiveContext"
discard "forward decl of AIS_InteractiveObject"
discard "forward decl of Image_PixMap"
discard "forward decl of V3d_View"
discard "forward decl of V3d_Viewer"
discard "forward decl of ViewerTest_EventManager"
discard "forward decl of TopoDS_Shape"
discard "forward decl of WNT_WClass"
type
  ViewerTest* {.importcpp: "ViewerTest", header: "ViewerTest.hxx", bycopy.} = object ## !
                                                                             ## Loads all
                                                                             ## Draw
                                                                             ## commands of  V2d &
                                                                             ## V3d.
                                                                             ## Used for
                                                                             ## plugin.
                                                                             ## !
                                                                             ## @name
                                                                             ## deprecated
                                                                             ## methods
                                                                             ## !
                                                                             ## Parses
                                                                             ## RGB(A)
                                                                             ## color
                                                                             ## argument(s)
                                                                             ## specified
                                                                             ## within
                                                                             ## theArgVec[0],
                                                                             ## theArgVec[1],
                                                                             ## theArgVec[2] and
                                                                             ## theArgVec[3].
                                                                             ## !
                                                                             ## Parses
                                                                             ## ZLayer
                                                                             ## name.
                                                                             ## !
                                                                             ## @param
                                                                             ## theArg
                                                                             ## [in]
                                                                             ## layer
                                                                             ## name,
                                                                             ## enumeration
                                                                             ## alias or
                                                                             ## index (of
                                                                             ## existing
                                                                             ## Layer)
                                                                             ## !
                                                                             ## @param
                                                                             ## theToAllowInteger
                                                                             ## [in]
                                                                             ## when
                                                                             ## TRUE, the
                                                                             ## argument
                                                                             ## will be
                                                                             ## checked for
                                                                             ## existing
                                                                             ## layer
                                                                             ## index
                                                                             ## !
                                                                             ## @param
                                                                             ## theLayer
                                                                             ## [out]
                                                                             ## layer
                                                                             ## index
                                                                             ## !
                                                                             ## @return
                                                                             ## TRUE if
                                                                             ## layer has
                                                                             ## been
                                                                             ## identified,
                                                                             ## note
                                                                             ## that
                                                                             ## Graphic3d_ZLayerId_UNKNOWN is
                                                                             ## also
                                                                             ## valid
                                                                             ## value


proc factory*(theDI: var DrawInterpretor) {.importcpp: "ViewerTest::Factory(@)",
                                        header: "ViewerTest.hxx".}
proc viewerInit*(thePxLeft: int = 0; thePxTop: int = 0; thePxWidth: int = 0;
                thePxHeight: int = 0; theViewName: TCollectionAsciiString = "";
                theDisplayName: TCollectionAsciiString = "";
                theViewToClone: Handle[V3dView] = handle[V3dView]()): TCollectionAsciiString {.
    importcpp: "ViewerTest::ViewerInit(@)", header: "ViewerTest.hxx".}
proc removeViewName*(theName: TCollectionAsciiString) {.
    importcpp: "ViewerTest::RemoveViewName(@)", header: "ViewerTest.hxx".}
proc initViewName*(theName: TCollectionAsciiString; theView: Handle[V3dView]) {.
    importcpp: "ViewerTest::InitViewName(@)", header: "ViewerTest.hxx".}
proc getCurrentViewName*(): TCollectionAsciiString {.
    importcpp: "ViewerTest::GetCurrentViewName(@)", header: "ViewerTest.hxx".}
proc removeView*(theViewName: TCollectionAsciiString;
                theToRemoveContext: bool = true) {.
    importcpp: "ViewerTest::RemoveView(@)", header: "ViewerTest.hxx".}
proc removeView*(theView: Handle[V3dView]; theToRemoveContext: bool = true) {.
    importcpp: "ViewerTest::RemoveView(@)", header: "ViewerTest.hxx".}
proc display*(theName: TCollectionAsciiString;
             theObject: Handle[AIS_InteractiveObject]; theToUpdate: bool = true;
             theReplaceIfExists: bool = true): bool {.
    importcpp: "ViewerTest::Display(@)", header: "ViewerTest.hxx".}
proc pickShape*(aType: TopAbsShapeEnum; maxPick: int = 5): TopoDS_Shape {.
    importcpp: "ViewerTest::PickShape(@)", header: "ViewerTest.hxx".}
proc pickShapes*(aType: TopAbsShapeEnum;
                thepicked: var Handle[TopToolsHArray1OfShape]; maxPick: int = 5): bool {.
    importcpp: "ViewerTest::PickShapes(@)", header: "ViewerTest.hxx".}
proc commands*(theCommands: var DrawInterpretor) {.
    importcpp: "ViewerTest::Commands(@)", header: "ViewerTest.hxx".}
proc viewerCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "ViewerTest::ViewerCommands(@)", header: "ViewerTest.hxx".}
proc myCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "ViewerTest::MyCommands(@)", header: "ViewerTest.hxx".}
proc relationCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "ViewerTest::RelationCommands(@)", header: "ViewerTest.hxx".}
proc objectCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "ViewerTest::ObjectCommands(@)", header: "ViewerTest.hxx".}
proc filletCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "ViewerTest::FilletCommands(@)", header: "ViewerTest.hxx".}
proc openGlCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "ViewerTest::OpenGlCommands(@)", header: "ViewerTest.hxx".}
proc getMousePosition*(xpix: var int; ypix: var int) {.
    importcpp: "ViewerTest::GetMousePosition(@)", header: "ViewerTest.hxx".}
proc getViewerFromContext*(): Handle[V3dViewer] {.
    importcpp: "ViewerTest::GetViewerFromContext(@)", header: "ViewerTest.hxx".}
proc getCollectorFromContext*(): Handle[V3dViewer] {.
    importcpp: "ViewerTest::GetCollectorFromContext(@)", header: "ViewerTest.hxx".}
proc getAISContext*(): Handle[AIS_InteractiveContext] {.
    importcpp: "ViewerTest::GetAISContext(@)", header: "ViewerTest.hxx".}
proc setAISContext*(aContext: Handle[AIS_InteractiveContext]) {.
    importcpp: "ViewerTest::SetAISContext(@)", header: "ViewerTest.hxx".}
proc currentView*(): Handle[V3dView] {.importcpp: "ViewerTest::CurrentView(@)",
                                    header: "ViewerTest.hxx".}
proc currentView*(aViou: Handle[V3dView]) {.
    importcpp: "ViewerTest::CurrentView(@)", header: "ViewerTest.hxx".}
proc clear*() {.importcpp: "ViewerTest::Clear(@)", header: "ViewerTest.hxx".}
proc setEventManager*(theMgr: Handle[ViewerTestEventManager]) {.
    importcpp: "ViewerTest::SetEventManager(@)", header: "ViewerTest.hxx".}
proc unsetEventManager*() {.importcpp: "ViewerTest::UnsetEventManager(@)",
                          header: "ViewerTest.hxx".}
proc resetEventManager*() {.importcpp: "ViewerTest::ResetEventManager(@)",
                          header: "ViewerTest.hxx".}
proc currentEventManager*(): Handle[ViewerTestEventManager] {.
    importcpp: "ViewerTest::CurrentEventManager(@)", header: "ViewerTest.hxx".}
proc removeSelected*() {.importcpp: "ViewerTest::RemoveSelected(@)",
                       header: "ViewerTest.hxx".}
proc redrawAllViews*() {.importcpp: "ViewerTest::RedrawAllViews(@)",
                       header: "ViewerTest.hxx".}
proc splitParameter*(theString: TCollectionAsciiString;
                    theName: var TCollectionAsciiString;
                    theValue: var TCollectionAsciiString): bool {.
    importcpp: "ViewerTest::SplitParameter(@)", header: "ViewerTest.hxx".}
proc getSelectedShapes*(theShapes: var TopToolsListOfShape) {.
    importcpp: "ViewerTest::GetSelectedShapes(@)", header: "ViewerTest.hxx".}
proc parseLineType*(theArg: StandardCString; theType: var AspectTypeOfLine;
                   thePattern: var uint16T): bool {.
    importcpp: "ViewerTest::ParseLineType(@)", header: "ViewerTest.hxx".}
proc parseLineType*(theArg: StandardCString; theType: var AspectTypeOfLine): bool {.
    importcpp: "ViewerTest::ParseLineType(@)", header: "ViewerTest.hxx".}
proc parseMarkerType*(theArg: StandardCString; theType: var AspectTypeOfMarker;
                     theImage: var Handle[ImagePixMap]): bool {.
    importcpp: "ViewerTest::ParseMarkerType(@)", header: "ViewerTest.hxx".}
proc parseShadingModel*(theArg: StandardCString;
                       theModel: var Graphic3dTypeOfShadingModel): bool {.
    importcpp: "ViewerTest::ParseShadingModel(@)", header: "ViewerTest.hxx".}
proc parseZLayerName*(theArg: StandardCString; theLayer: var Graphic3dZLayerId): bool {.
    importcpp: "ViewerTest::ParseZLayerName(@)", header: "ViewerTest.hxx".}
proc parseZLayer*(theArg: StandardCString; theLayer: var Graphic3dZLayerId): bool {.
    importcpp: "ViewerTest::ParseZLayer(@)", header: "ViewerTest.hxx".}
## !!!Ignored construct:  public : ! @name deprecated methods ! Parses RGB(A) color argument(s) specified within theArgVec[0], theArgVec[1], theArgVec[2] and theArgVec[3]. Standard_DEPRECATED ( Method has been moved to Draw::ParseColor() ) static Standard_Integer ParseColor ( const Standard_Integer theArgNb , const char * const * const theArgVec , Quantity_ColorRGBA & theColor ) ;
## Error: identifier expected, but got: Method has been moved to Draw::ParseColor()!!!

## !!!Ignored construct:  ! Parses RGB color argument(s).
## ! Returns number of handled arguments (1 or 3) or 0 on syntax error. Standard_DEPRECATED ( Method has been moved to Draw::ParseColor() ) static Standard_Integer ParseColor ( const Standard_Integer theArgNb , const char * const * const theArgVec , Quantity_Color & theColor ) ;
## Error: identifier expected, but got: Method has been moved to Draw::ParseColor()!!!

## !!!Ignored construct:  ! Parses boolean argument.
## ! Handles either flag specified by 0|1 or on|off. Standard_DEPRECATED ( Method has been moved to Draw::ParseOnOff() ) static Standard_Boolean ParseOnOff ( Standard_CString theArg , Standard_Boolean & theIsOn ) ;
## Error: identifier expected, but got: Method has been moved to Draw::ParseOnOff()!!!

## !!!Ignored construct:  Standard_DEPRECATED ( Method has been moved to Quantity_Color::ColorFromName() ) static Quantity_NameOfColor GetColorFromName ( const Standard_CString name ) ;
## Error: identifier expected, but got: Method has been moved to Quantity_Color::ColorFromName()!!!

