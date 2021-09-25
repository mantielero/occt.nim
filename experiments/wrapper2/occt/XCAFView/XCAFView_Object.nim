##  Created on: 2016-10-20
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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

discard "forward decl of XCAFView_Object"
discard "forward decl of XCAFView_Object"
type
  HandleXCAFViewObject* = Handle[XCAFViewObject]

## ! Access object for saved view

type
  XCAFViewObject* {.importcpp: "XCAFView_Object", header: "XCAFView_Object.hxx",
                   bycopy.} = object of StandardTransient
    ##  Point for each GDT to describe position of GDT frame in View.


proc constructXCAFViewObject*(): XCAFViewObject {.constructor,
    importcpp: "XCAFView_Object(@)", header: "XCAFView_Object.hxx".}
proc constructXCAFViewObject*(theObj: Handle[XCAFViewObject]): XCAFViewObject {.
    constructor, importcpp: "XCAFView_Object(@)", header: "XCAFView_Object.hxx".}
proc setName*(this: var XCAFViewObject; theName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetName", header: "XCAFView_Object.hxx".}
proc name*(this: var XCAFViewObject): Handle[TCollectionHAsciiString] {.
    importcpp: "Name", header: "XCAFView_Object.hxx".}
proc setType*(this: var XCAFViewObject; theType: XCAFViewProjectionType) {.
    importcpp: "SetType", header: "XCAFView_Object.hxx".}
proc `type`*(this: var XCAFViewObject): XCAFViewProjectionType {.importcpp: "Type",
    header: "XCAFView_Object.hxx".}
proc setProjectionPoint*(this: var XCAFViewObject; thePoint: Pnt) {.
    importcpp: "SetProjectionPoint", header: "XCAFView_Object.hxx".}
proc projectionPoint*(this: var XCAFViewObject): Pnt {.importcpp: "ProjectionPoint",
    header: "XCAFView_Object.hxx".}
proc setViewDirection*(this: var XCAFViewObject; theDirection: Dir) {.
    importcpp: "SetViewDirection", header: "XCAFView_Object.hxx".}
proc viewDirection*(this: var XCAFViewObject): Dir {.importcpp: "ViewDirection",
    header: "XCAFView_Object.hxx".}
proc setUpDirection*(this: var XCAFViewObject; theDirection: Dir) {.
    importcpp: "SetUpDirection", header: "XCAFView_Object.hxx".}
proc upDirection*(this: var XCAFViewObject): Dir {.importcpp: "UpDirection",
    header: "XCAFView_Object.hxx".}
proc setZoomFactor*(this: var XCAFViewObject; theZoomFactor: float) {.
    importcpp: "SetZoomFactor", header: "XCAFView_Object.hxx".}
proc zoomFactor*(this: var XCAFViewObject): float {.importcpp: "ZoomFactor",
    header: "XCAFView_Object.hxx".}
proc setWindowHorizontalSize*(this: var XCAFViewObject; theSize: float) {.
    importcpp: "SetWindowHorizontalSize", header: "XCAFView_Object.hxx".}
proc windowHorizontalSize*(this: var XCAFViewObject): float {.
    importcpp: "WindowHorizontalSize", header: "XCAFView_Object.hxx".}
proc setWindowVerticalSize*(this: var XCAFViewObject; theSize: float) {.
    importcpp: "SetWindowVerticalSize", header: "XCAFView_Object.hxx".}
proc windowVerticalSize*(this: var XCAFViewObject): float {.
    importcpp: "WindowVerticalSize", header: "XCAFView_Object.hxx".}
proc setClippingExpression*(this: var XCAFViewObject;
                           theExpression: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetClippingExpression", header: "XCAFView_Object.hxx".}
proc clippingExpression*(this: var XCAFViewObject): Handle[TCollectionHAsciiString] {.
    importcpp: "ClippingExpression", header: "XCAFView_Object.hxx".}
proc unsetFrontPlaneClipping*(this: var XCAFViewObject) {.
    importcpp: "UnsetFrontPlaneClipping", header: "XCAFView_Object.hxx".}
proc hasFrontPlaneClipping*(this: var XCAFViewObject): bool {.
    importcpp: "HasFrontPlaneClipping", header: "XCAFView_Object.hxx".}
proc setFrontPlaneDistance*(this: var XCAFViewObject; theDistance: float) {.
    importcpp: "SetFrontPlaneDistance", header: "XCAFView_Object.hxx".}
proc frontPlaneDistance*(this: var XCAFViewObject): float {.
    importcpp: "FrontPlaneDistance", header: "XCAFView_Object.hxx".}
proc unsetBackPlaneClipping*(this: var XCAFViewObject) {.
    importcpp: "UnsetBackPlaneClipping", header: "XCAFView_Object.hxx".}
proc hasBackPlaneClipping*(this: var XCAFViewObject): bool {.
    importcpp: "HasBackPlaneClipping", header: "XCAFView_Object.hxx".}
proc setBackPlaneDistance*(this: var XCAFViewObject; theDistance: float) {.
    importcpp: "SetBackPlaneDistance", header: "XCAFView_Object.hxx".}
proc backPlaneDistance*(this: var XCAFViewObject): float {.
    importcpp: "BackPlaneDistance", header: "XCAFView_Object.hxx".}
proc setViewVolumeSidesClipping*(this: var XCAFViewObject;
                                theViewVolumeSidesClipping: bool) {.
    importcpp: "SetViewVolumeSidesClipping", header: "XCAFView_Object.hxx".}
proc hasViewVolumeSidesClipping*(this: var XCAFViewObject): bool {.
    importcpp: "HasViewVolumeSidesClipping", header: "XCAFView_Object.hxx".}
proc createGDTPoints*(this: var XCAFViewObject; theLenght: int) {.
    importcpp: "CreateGDTPoints", header: "XCAFView_Object.hxx".}
proc hasGDTPoints*(this: var XCAFViewObject): bool {.importcpp: "HasGDTPoints",
    header: "XCAFView_Object.hxx".}
proc nbGDTPoints*(this: var XCAFViewObject): int {.importcpp: "NbGDTPoints",
    header: "XCAFView_Object.hxx".}
proc setGDTPoint*(this: var XCAFViewObject; theIndex: int; thePoint: Pnt) {.
    importcpp: "SetGDTPoint", header: "XCAFView_Object.hxx".}
proc gDTPoint*(this: var XCAFViewObject; theIndex: int): Pnt {.importcpp: "GDTPoint",
    header: "XCAFView_Object.hxx".}
type
  XCAFViewObjectbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "XCAFView_Object::get_type_name(@)",
                            header: "XCAFView_Object.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFView_Object::get_type_descriptor(@)",
    header: "XCAFView_Object.hxx".}
proc dynamicType*(this: XCAFViewObject): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFView_Object.hxx".}
