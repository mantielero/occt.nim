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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Dir, ../gp/gp_Pln,
  ../gp/gp_Pnt, ../TColgp/TColgp_HArray1OfPnt,
  ../TCollection/TCollection_HAsciiString, XCAFView_ProjectionType

discard "forward decl of XCAFView_Object"
discard "forward decl of XCAFView_Object"
type
  Handle_XCAFView_Object* = handle[XCAFView_Object]

## ! Access object for saved view

type
  XCAFView_Object* {.importcpp: "XCAFView_Object", header: "XCAFView_Object.hxx",
                    bycopy.} = object of Standard_Transient
    ##  Point for each GDT to describe position of GDT frame in View.


proc constructXCAFView_Object*(): XCAFView_Object {.constructor,
    importcpp: "XCAFView_Object(@)", header: "XCAFView_Object.hxx".}
proc constructXCAFView_Object*(theObj: handle[XCAFView_Object]): XCAFView_Object {.
    constructor, importcpp: "XCAFView_Object(@)", header: "XCAFView_Object.hxx".}
proc SetName*(this: var XCAFView_Object; theName: handle[TCollection_HAsciiString]) {.
    importcpp: "SetName", header: "XCAFView_Object.hxx".}
proc Name*(this: var XCAFView_Object): handle[TCollection_HAsciiString] {.
    importcpp: "Name", header: "XCAFView_Object.hxx".}
proc SetType*(this: var XCAFView_Object; theType: XCAFView_ProjectionType) {.
    importcpp: "SetType", header: "XCAFView_Object.hxx".}
proc Type*(this: var XCAFView_Object): XCAFView_ProjectionType {.importcpp: "Type",
    header: "XCAFView_Object.hxx".}
proc SetProjectionPoint*(this: var XCAFView_Object; thePoint: gp_Pnt) {.
    importcpp: "SetProjectionPoint", header: "XCAFView_Object.hxx".}
proc ProjectionPoint*(this: var XCAFView_Object): gp_Pnt {.
    importcpp: "ProjectionPoint", header: "XCAFView_Object.hxx".}
proc SetViewDirection*(this: var XCAFView_Object; theDirection: gp_Dir) {.
    importcpp: "SetViewDirection", header: "XCAFView_Object.hxx".}
proc ViewDirection*(this: var XCAFView_Object): gp_Dir {.importcpp: "ViewDirection",
    header: "XCAFView_Object.hxx".}
proc SetUpDirection*(this: var XCAFView_Object; theDirection: gp_Dir) {.
    importcpp: "SetUpDirection", header: "XCAFView_Object.hxx".}
proc UpDirection*(this: var XCAFView_Object): gp_Dir {.importcpp: "UpDirection",
    header: "XCAFView_Object.hxx".}
proc SetZoomFactor*(this: var XCAFView_Object; theZoomFactor: Standard_Real) {.
    importcpp: "SetZoomFactor", header: "XCAFView_Object.hxx".}
proc ZoomFactor*(this: var XCAFView_Object): Standard_Real {.importcpp: "ZoomFactor",
    header: "XCAFView_Object.hxx".}
proc SetWindowHorizontalSize*(this: var XCAFView_Object; theSize: Standard_Real) {.
    importcpp: "SetWindowHorizontalSize", header: "XCAFView_Object.hxx".}
proc WindowHorizontalSize*(this: var XCAFView_Object): Standard_Real {.
    importcpp: "WindowHorizontalSize", header: "XCAFView_Object.hxx".}
proc SetWindowVerticalSize*(this: var XCAFView_Object; theSize: Standard_Real) {.
    importcpp: "SetWindowVerticalSize", header: "XCAFView_Object.hxx".}
proc WindowVerticalSize*(this: var XCAFView_Object): Standard_Real {.
    importcpp: "WindowVerticalSize", header: "XCAFView_Object.hxx".}
proc SetClippingExpression*(this: var XCAFView_Object;
                           theExpression: handle[TCollection_HAsciiString]) {.
    importcpp: "SetClippingExpression", header: "XCAFView_Object.hxx".}
proc ClippingExpression*(this: var XCAFView_Object): handle[TCollection_HAsciiString] {.
    importcpp: "ClippingExpression", header: "XCAFView_Object.hxx".}
proc UnsetFrontPlaneClipping*(this: var XCAFView_Object) {.
    importcpp: "UnsetFrontPlaneClipping", header: "XCAFView_Object.hxx".}
proc HasFrontPlaneClipping*(this: var XCAFView_Object): Standard_Boolean {.
    importcpp: "HasFrontPlaneClipping", header: "XCAFView_Object.hxx".}
proc SetFrontPlaneDistance*(this: var XCAFView_Object; theDistance: Standard_Real) {.
    importcpp: "SetFrontPlaneDistance", header: "XCAFView_Object.hxx".}
proc FrontPlaneDistance*(this: var XCAFView_Object): Standard_Real {.
    importcpp: "FrontPlaneDistance", header: "XCAFView_Object.hxx".}
proc UnsetBackPlaneClipping*(this: var XCAFView_Object) {.
    importcpp: "UnsetBackPlaneClipping", header: "XCAFView_Object.hxx".}
proc HasBackPlaneClipping*(this: var XCAFView_Object): Standard_Boolean {.
    importcpp: "HasBackPlaneClipping", header: "XCAFView_Object.hxx".}
proc SetBackPlaneDistance*(this: var XCAFView_Object; theDistance: Standard_Real) {.
    importcpp: "SetBackPlaneDistance", header: "XCAFView_Object.hxx".}
proc BackPlaneDistance*(this: var XCAFView_Object): Standard_Real {.
    importcpp: "BackPlaneDistance", header: "XCAFView_Object.hxx".}
proc SetViewVolumeSidesClipping*(this: var XCAFView_Object;
                                theViewVolumeSidesClipping: Standard_Boolean) {.
    importcpp: "SetViewVolumeSidesClipping", header: "XCAFView_Object.hxx".}
proc HasViewVolumeSidesClipping*(this: var XCAFView_Object): Standard_Boolean {.
    importcpp: "HasViewVolumeSidesClipping", header: "XCAFView_Object.hxx".}
proc CreateGDTPoints*(this: var XCAFView_Object; theLenght: Standard_Integer) {.
    importcpp: "CreateGDTPoints", header: "XCAFView_Object.hxx".}
proc HasGDTPoints*(this: var XCAFView_Object): Standard_Boolean {.
    importcpp: "HasGDTPoints", header: "XCAFView_Object.hxx".}
proc NbGDTPoints*(this: var XCAFView_Object): Standard_Integer {.
    importcpp: "NbGDTPoints", header: "XCAFView_Object.hxx".}
proc SetGDTPoint*(this: var XCAFView_Object; theIndex: Standard_Integer;
                 thePoint: gp_Pnt) {.importcpp: "SetGDTPoint",
                                   header: "XCAFView_Object.hxx".}
proc GDTPoint*(this: var XCAFView_Object; theIndex: Standard_Integer): gp_Pnt {.
    importcpp: "GDTPoint", header: "XCAFView_Object.hxx".}
type
  XCAFView_Objectbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "XCAFView_Object::get_type_name(@)",
                              header: "XCAFView_Object.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFView_Object::get_type_descriptor(@)",
    header: "XCAFView_Object.hxx".}
proc DynamicType*(this: XCAFView_Object): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFView_Object.hxx".}