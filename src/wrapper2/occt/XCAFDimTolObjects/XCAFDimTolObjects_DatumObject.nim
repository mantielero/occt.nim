##  Created on: 2015-08-06
##  Created by: Ilya Novikov
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type,
  XCAFDimTolObjects_DatumObjectSequence, XCAFDimTolObjects_DatumTargetType,
  ../TCollection/TCollection_HAsciiString,
  XCAFDimTolObjects_DatumModifiersSequence,
  XCAFDimTolObjects_DatumModifWithValue, ../Standard/Standard_Real,
  ../TopoDS/TopoDS_Shape, ../Standard/Standard_Transient,
  XCAFDimTolObjects_DatumSingleModif, ../Standard/Standard_Boolean, ../gp/gp_Ax2

discard "forward decl of XCAFDimTolObjects_DatumObject"
discard "forward decl of XCAFDimTolObjects_DatumObject"
type
  Handle_XCAFDimTolObjects_DatumObject* = handle[XCAFDimTolObjects_DatumObject]

## ! Access object to store datum

type
  XCAFDimTolObjects_DatumObject* {.importcpp: "XCAFDimTolObjects_DatumObject",
                                  header: "XCAFDimTolObjects_DatumObject.hxx",
                                  bycopy.} = object of Standard_Transient


proc constructXCAFDimTolObjects_DatumObject*(): XCAFDimTolObjects_DatumObject {.
    constructor, importcpp: "XCAFDimTolObjects_DatumObject(@)",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc constructXCAFDimTolObjects_DatumObject*(
    theObj: handle[XCAFDimTolObjects_DatumObject]): XCAFDimTolObjects_DatumObject {.
    constructor, importcpp: "XCAFDimTolObjects_DatumObject(@)",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetSemanticName*(this: XCAFDimTolObjects_DatumObject): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "GetSemanticName",
                               header: "XCAFDimTolObjects_DatumObject.hxx".}
proc SetSemanticName*(this: var XCAFDimTolObjects_DatumObject;
                     theName: handle[TCollection_HAsciiString]) {.
    importcpp: "SetSemanticName", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetName*(this: XCAFDimTolObjects_DatumObject): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "GetName", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc SetName*(this: var XCAFDimTolObjects_DatumObject;
             theTag: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetModifiers*(this: XCAFDimTolObjects_DatumObject): XCAFDimTolObjects_DatumModifiersSequence {.
    noSideEffect, importcpp: "GetModifiers",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc SetModifiers*(this: var XCAFDimTolObjects_DatumObject;
                  theModifiers: XCAFDimTolObjects_DatumModifiersSequence) {.
    importcpp: "SetModifiers", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetModifierWithValue*(this: XCAFDimTolObjects_DatumObject; theModifier: var XCAFDimTolObjects_DatumModifWithValue;
                          theValue: var Standard_Real) {.noSideEffect,
    importcpp: "GetModifierWithValue", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc SetModifierWithValue*(this: var XCAFDimTolObjects_DatumObject;
                          theModifier: XCAFDimTolObjects_DatumModifWithValue;
                          theValue: Standard_Real) {.
    importcpp: "SetModifierWithValue", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc AddModifier*(this: var XCAFDimTolObjects_DatumObject;
                 theModifier: XCAFDimTolObjects_DatumSingleModif) {.
    importcpp: "AddModifier", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetDatumTarget*(this: XCAFDimTolObjects_DatumObject): TopoDS_Shape {.
    noSideEffect, importcpp: "GetDatumTarget",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc SetDatumTarget*(this: var XCAFDimTolObjects_DatumObject; theShape: TopoDS_Shape) {.
    importcpp: "SetDatumTarget", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetPosition*(this: XCAFDimTolObjects_DatumObject): Standard_Integer {.
    noSideEffect, importcpp: "GetPosition",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc SetPosition*(this: var XCAFDimTolObjects_DatumObject;
                 thePosition: Standard_Integer) {.importcpp: "SetPosition",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc IsDatumTarget*(this: XCAFDimTolObjects_DatumObject): Standard_Boolean {.
    noSideEffect, importcpp: "IsDatumTarget",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc IsDatumTarget*(this: var XCAFDimTolObjects_DatumObject;
                   theIsDT: Standard_Boolean) {.importcpp: "IsDatumTarget",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetDatumTargetType*(this: XCAFDimTolObjects_DatumObject): XCAFDimTolObjects_DatumTargetType {.
    noSideEffect, importcpp: "GetDatumTargetType",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc SetDatumTargetType*(this: var XCAFDimTolObjects_DatumObject;
                        theType: XCAFDimTolObjects_DatumTargetType) {.
    importcpp: "SetDatumTargetType", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetDatumTargetAxis*(this: XCAFDimTolObjects_DatumObject): gp_Ax2 {.
    noSideEffect, importcpp: "GetDatumTargetAxis",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc SetDatumTargetAxis*(this: var XCAFDimTolObjects_DatumObject; theAxis: gp_Ax2) {.
    importcpp: "SetDatumTargetAxis", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetDatumTargetLength*(this: XCAFDimTolObjects_DatumObject): Standard_Real {.
    noSideEffect, importcpp: "GetDatumTargetLength",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc SetDatumTargetLength*(this: var XCAFDimTolObjects_DatumObject;
                          theLength: Standard_Real) {.
    importcpp: "SetDatumTargetLength", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetDatumTargetWidth*(this: XCAFDimTolObjects_DatumObject): Standard_Real {.
    noSideEffect, importcpp: "GetDatumTargetWidth",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc SetDatumTargetWidth*(this: var XCAFDimTolObjects_DatumObject;
                         theWidth: Standard_Real) {.
    importcpp: "SetDatumTargetWidth", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetDatumTargetNumber*(this: XCAFDimTolObjects_DatumObject): Standard_Integer {.
    noSideEffect, importcpp: "GetDatumTargetNumber",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc SetDatumTargetNumber*(this: var XCAFDimTolObjects_DatumObject;
                          theNumber: Standard_Integer) {.
    importcpp: "SetDatumTargetNumber", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc SetPlane*(this: var XCAFDimTolObjects_DatumObject; thePlane: gp_Ax2) {.
    importcpp: "SetPlane", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetPlane*(this: XCAFDimTolObjects_DatumObject): gp_Ax2 {.noSideEffect,
    importcpp: "GetPlane", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc SetPoint*(this: var XCAFDimTolObjects_DatumObject; thePnt: gp_Pnt) {.
    importcpp: "SetPoint", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetPoint*(this: XCAFDimTolObjects_DatumObject): gp_Pnt {.noSideEffect,
    importcpp: "GetPoint", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc SetPointTextAttach*(this: var XCAFDimTolObjects_DatumObject; thePntText: gp_Pnt) {.
    importcpp: "SetPointTextAttach", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetPointTextAttach*(this: XCAFDimTolObjects_DatumObject): gp_Pnt {.
    noSideEffect, importcpp: "GetPointTextAttach",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc HasPlane*(this: XCAFDimTolObjects_DatumObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasPlane",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc HasPoint*(this: XCAFDimTolObjects_DatumObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasPoint",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc HasPointText*(this: XCAFDimTolObjects_DatumObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasPointText",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc SetPresentation*(this: var XCAFDimTolObjects_DatumObject;
                     thePresentation: TopoDS_Shape;
                     thePresentationName: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPresentation", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetPresentation*(this: XCAFDimTolObjects_DatumObject): TopoDS_Shape {.
    noSideEffect, importcpp: "GetPresentation",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc GetPresentationName*(this: XCAFDimTolObjects_DatumObject): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "GetPresentationName",
                               header: "XCAFDimTolObjects_DatumObject.hxx".}
proc HasDatumTargetParams*(this: var XCAFDimTolObjects_DatumObject): Standard_Boolean {.
    importcpp: "HasDatumTargetParams", header: "XCAFDimTolObjects_DatumObject.hxx".}
type
  XCAFDimTolObjects_DatumObjectbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "XCAFDimTolObjects_DatumObject::get_type_name(@)",
                              header: "XCAFDimTolObjects_DatumObject.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFDimTolObjects_DatumObject::get_type_descriptor(@)",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc DynamicType*(this: XCAFDimTolObjects_DatumObject): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XCAFDimTolObjects_DatumObject.hxx".}