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

import
  ../AIS/AIS_KindOfInteractive, ../Aspect/Aspect_TypeOfLine,
  ../Aspect/Aspect_TypeOfMarker, ../Draw/Draw_Interpretor,
  ../Graphic3d/Graphic3d_TypeOfShadingModel, ../Graphic3d/Graphic3d_ZLayerId,
  ../TCollection/TCollection_AsciiString, ../TColStd/TColStd_HArray1OfTransient,
  ../TopTools/TopTools_ListOfShape, ../TopTools/TopTools_HArray1OfShape,
  ../Quantity/Quantity_ColorRGBA

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


proc Factory*(theDI: var Draw_Interpretor) {.importcpp: "ViewerTest::Factory(@)",
    header: "ViewerTest.hxx".}
proc ViewerInit*(thePxLeft: Standard_Integer = 0; thePxTop: Standard_Integer = 0;
                thePxWidth: Standard_Integer = 0; thePxHeight: Standard_Integer = 0;
                theViewName: TCollection_AsciiString = "";
                theDisplayName: TCollection_AsciiString = "";
                theViewToClone: handle[V3d_View] = handle[V3d_View]()): TCollection_AsciiString {.
    importcpp: "ViewerTest::ViewerInit(@)", header: "ViewerTest.hxx".}
proc RemoveViewName*(theName: TCollection_AsciiString) {.
    importcpp: "ViewerTest::RemoveViewName(@)", header: "ViewerTest.hxx".}
proc InitViewName*(theName: TCollection_AsciiString; theView: handle[V3d_View]) {.
    importcpp: "ViewerTest::InitViewName(@)", header: "ViewerTest.hxx".}
proc GetCurrentViewName*(): TCollection_AsciiString {.
    importcpp: "ViewerTest::GetCurrentViewName(@)", header: "ViewerTest.hxx".}
proc RemoveView*(theViewName: TCollection_AsciiString;
                theToRemoveContext: Standard_Boolean = Standard_True) {.
    importcpp: "ViewerTest::RemoveView(@)", header: "ViewerTest.hxx".}
proc RemoveView*(theView: handle[V3d_View];
                theToRemoveContext: Standard_Boolean = Standard_True) {.
    importcpp: "ViewerTest::RemoveView(@)", header: "ViewerTest.hxx".}
proc Display*(theName: TCollection_AsciiString;
             theObject: handle[AIS_InteractiveObject];
             theToUpdate: Standard_Boolean = Standard_True;
             theReplaceIfExists: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "ViewerTest::Display(@)", header: "ViewerTest.hxx".}
proc PickShape*(aType: TopAbs_ShapeEnum; MaxPick: Standard_Integer = 5): TopoDS_Shape {.
    importcpp: "ViewerTest::PickShape(@)", header: "ViewerTest.hxx".}
proc PickShapes*(aType: TopAbs_ShapeEnum;
                thepicked: var handle[TopTools_HArray1OfShape];
                MaxPick: Standard_Integer = 5): Standard_Boolean {.
    importcpp: "ViewerTest::PickShapes(@)", header: "ViewerTest.hxx".}
proc Commands*(theCommands: var Draw_Interpretor) {.
    importcpp: "ViewerTest::Commands(@)", header: "ViewerTest.hxx".}
proc ViewerCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "ViewerTest::ViewerCommands(@)", header: "ViewerTest.hxx".}
proc MyCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "ViewerTest::MyCommands(@)", header: "ViewerTest.hxx".}
proc RelationCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "ViewerTest::RelationCommands(@)", header: "ViewerTest.hxx".}
proc ObjectCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "ViewerTest::ObjectCommands(@)", header: "ViewerTest.hxx".}
proc FilletCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "ViewerTest::FilletCommands(@)", header: "ViewerTest.hxx".}
proc OpenGlCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "ViewerTest::OpenGlCommands(@)", header: "ViewerTest.hxx".}
proc GetMousePosition*(xpix: var Standard_Integer; ypix: var Standard_Integer) {.
    importcpp: "ViewerTest::GetMousePosition(@)", header: "ViewerTest.hxx".}
proc GetViewerFromContext*(): handle[V3d_Viewer] {.
    importcpp: "ViewerTest::GetViewerFromContext(@)", header: "ViewerTest.hxx".}
proc GetCollectorFromContext*(): handle[V3d_Viewer] {.
    importcpp: "ViewerTest::GetCollectorFromContext(@)", header: "ViewerTest.hxx".}
proc GetAISContext*(): handle[AIS_InteractiveContext] {.
    importcpp: "ViewerTest::GetAISContext(@)", header: "ViewerTest.hxx".}
proc SetAISContext*(aContext: handle[AIS_InteractiveContext]) {.
    importcpp: "ViewerTest::SetAISContext(@)", header: "ViewerTest.hxx".}
proc CurrentView*(): handle[V3d_View] {.importcpp: "ViewerTest::CurrentView(@)",
                                     header: "ViewerTest.hxx".}
proc CurrentView*(aViou: handle[V3d_View]) {.
    importcpp: "ViewerTest::CurrentView(@)", header: "ViewerTest.hxx".}
proc Clear*() {.importcpp: "ViewerTest::Clear(@)", header: "ViewerTest.hxx".}
proc SetEventManager*(theMgr: handle[ViewerTest_EventManager]) {.
    importcpp: "ViewerTest::SetEventManager(@)", header: "ViewerTest.hxx".}
proc UnsetEventManager*() {.importcpp: "ViewerTest::UnsetEventManager(@)",
                          header: "ViewerTest.hxx".}
proc ResetEventManager*() {.importcpp: "ViewerTest::ResetEventManager(@)",
                          header: "ViewerTest.hxx".}
proc CurrentEventManager*(): handle[ViewerTest_EventManager] {.
    importcpp: "ViewerTest::CurrentEventManager(@)", header: "ViewerTest.hxx".}
proc RemoveSelected*() {.importcpp: "ViewerTest::RemoveSelected(@)",
                       header: "ViewerTest.hxx".}
proc RedrawAllViews*() {.importcpp: "ViewerTest::RedrawAllViews(@)",
                       header: "ViewerTest.hxx".}
proc SplitParameter*(theString: TCollection_AsciiString;
                    theName: var TCollection_AsciiString;
                    theValue: var TCollection_AsciiString): Standard_Boolean {.
    importcpp: "ViewerTest::SplitParameter(@)", header: "ViewerTest.hxx".}
proc GetSelectedShapes*(theShapes: var TopTools_ListOfShape) {.
    importcpp: "ViewerTest::GetSelectedShapes(@)", header: "ViewerTest.hxx".}
proc ParseLineType*(theArg: Standard_CString; theType: var Aspect_TypeOfLine;
                   thePattern: var uint16_t): Standard_Boolean {.
    importcpp: "ViewerTest::ParseLineType(@)", header: "ViewerTest.hxx".}
proc ParseLineType*(theArg: Standard_CString; theType: var Aspect_TypeOfLine): Standard_Boolean {.
    importcpp: "ViewerTest::ParseLineType(@)", header: "ViewerTest.hxx".}
proc ParseMarkerType*(theArg: Standard_CString; theType: var Aspect_TypeOfMarker;
                     theImage: var handle[Image_PixMap]): Standard_Boolean {.
    importcpp: "ViewerTest::ParseMarkerType(@)", header: "ViewerTest.hxx".}
proc ParseShadingModel*(theArg: Standard_CString;
                       theModel: var Graphic3d_TypeOfShadingModel): Standard_Boolean {.
    importcpp: "ViewerTest::ParseShadingModel(@)", header: "ViewerTest.hxx".}
proc ParseZLayerName*(theArg: Standard_CString; theLayer: var Graphic3d_ZLayerId): Standard_Boolean {.
    importcpp: "ViewerTest::ParseZLayerName(@)", header: "ViewerTest.hxx".}
proc ParseZLayer*(theArg: Standard_CString; theLayer: var Graphic3d_ZLayerId): Standard_Boolean {.
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
