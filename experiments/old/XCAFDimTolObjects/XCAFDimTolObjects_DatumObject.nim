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

discard "forward decl of XCAFDimTolObjects_DatumObject"
discard "forward decl of XCAFDimTolObjects_DatumObject"
type
  HandleC1C1* = Handle[XCAFDimTolObjectsDatumObject]

## ! Access object to store datum

type
  XCAFDimTolObjectsDatumObject* {.importcpp: "XCAFDimTolObjects_DatumObject",
                                 header: "XCAFDimTolObjects_DatumObject.hxx",
                                 bycopy.} = object of StandardTransient


proc constructXCAFDimTolObjectsDatumObject*(): XCAFDimTolObjectsDatumObject {.
    constructor, importcpp: "XCAFDimTolObjects_DatumObject(@)",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc constructXCAFDimTolObjectsDatumObject*(
    theObj: Handle[XCAFDimTolObjectsDatumObject]): XCAFDimTolObjectsDatumObject {.
    constructor, importcpp: "XCAFDimTolObjects_DatumObject(@)",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getSemanticName*(this: XCAFDimTolObjectsDatumObject): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "GetSemanticName",
                              header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setSemanticName*(this: var XCAFDimTolObjectsDatumObject;
                     theName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetSemanticName", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getName*(this: XCAFDimTolObjectsDatumObject): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "GetName", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setName*(this: var XCAFDimTolObjectsDatumObject;
             theTag: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getModifiers*(this: XCAFDimTolObjectsDatumObject): XCAFDimTolObjectsDatumModifiersSequence {.
    noSideEffect, importcpp: "GetModifiers",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setModifiers*(this: var XCAFDimTolObjectsDatumObject;
                  theModifiers: XCAFDimTolObjectsDatumModifiersSequence) {.
    importcpp: "SetModifiers", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getModifierWithValue*(this: XCAFDimTolObjectsDatumObject; theModifier: var XCAFDimTolObjectsDatumModifWithValue;
                          theValue: var cfloat) {.noSideEffect,
    importcpp: "GetModifierWithValue", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setModifierWithValue*(this: var XCAFDimTolObjectsDatumObject;
                          theModifier: XCAFDimTolObjectsDatumModifWithValue;
                          theValue: cfloat) {.importcpp: "SetModifierWithValue",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc addModifier*(this: var XCAFDimTolObjectsDatumObject;
                 theModifier: XCAFDimTolObjectsDatumSingleModif) {.
    importcpp: "AddModifier", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getDatumTarget*(this: XCAFDimTolObjectsDatumObject): TopoDS_Shape {.
    noSideEffect, importcpp: "GetDatumTarget",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setDatumTarget*(this: var XCAFDimTolObjectsDatumObject; theShape: TopoDS_Shape) {.
    importcpp: "SetDatumTarget", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getPosition*(this: XCAFDimTolObjectsDatumObject): cint {.noSideEffect,
    importcpp: "GetPosition", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setPosition*(this: var XCAFDimTolObjectsDatumObject; thePosition: cint) {.
    importcpp: "SetPosition", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc isDatumTarget*(this: XCAFDimTolObjectsDatumObject): bool {.noSideEffect,
    importcpp: "IsDatumTarget", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc isDatumTarget*(this: var XCAFDimTolObjectsDatumObject; theIsDT: bool) {.
    importcpp: "IsDatumTarget", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getDatumTargetType*(this: XCAFDimTolObjectsDatumObject): XCAFDimTolObjectsDatumTargetType {.
    noSideEffect, importcpp: "GetDatumTargetType",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setDatumTargetType*(this: var XCAFDimTolObjectsDatumObject;
                        theType: XCAFDimTolObjectsDatumTargetType) {.
    importcpp: "SetDatumTargetType", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getDatumTargetAxis*(this: XCAFDimTolObjectsDatumObject): Ax2 {.noSideEffect,
    importcpp: "GetDatumTargetAxis", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setDatumTargetAxis*(this: var XCAFDimTolObjectsDatumObject; theAxis: Ax2) {.
    importcpp: "SetDatumTargetAxis", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getDatumTargetLength*(this: XCAFDimTolObjectsDatumObject): cfloat {.
    noSideEffect, importcpp: "GetDatumTargetLength",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setDatumTargetLength*(this: var XCAFDimTolObjectsDatumObject; theLength: cfloat) {.
    importcpp: "SetDatumTargetLength", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getDatumTargetWidth*(this: XCAFDimTolObjectsDatumObject): cfloat {.
    noSideEffect, importcpp: "GetDatumTargetWidth",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setDatumTargetWidth*(this: var XCAFDimTolObjectsDatumObject; theWidth: cfloat) {.
    importcpp: "SetDatumTargetWidth", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getDatumTargetNumber*(this: XCAFDimTolObjectsDatumObject): cint {.noSideEffect,
    importcpp: "GetDatumTargetNumber", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setDatumTargetNumber*(this: var XCAFDimTolObjectsDatumObject; theNumber: cint) {.
    importcpp: "SetDatumTargetNumber", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setPlane*(this: var XCAFDimTolObjectsDatumObject; thePlane: Ax2) {.
    importcpp: "SetPlane", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getPlane*(this: XCAFDimTolObjectsDatumObject): Ax2 {.noSideEffect,
    importcpp: "GetPlane", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setPoint*(this: var XCAFDimTolObjectsDatumObject; thePnt: Pnt) {.
    importcpp: "SetPoint", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getPoint*(this: XCAFDimTolObjectsDatumObject): Pnt {.noSideEffect,
    importcpp: "GetPoint", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setPointTextAttach*(this: var XCAFDimTolObjectsDatumObject; thePntText: Pnt) {.
    importcpp: "SetPointTextAttach", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getPointTextAttach*(this: XCAFDimTolObjectsDatumObject): Pnt {.noSideEffect,
    importcpp: "GetPointTextAttach", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc hasPlane*(this: XCAFDimTolObjectsDatumObject): bool {.noSideEffect,
    importcpp: "HasPlane", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc hasPoint*(this: XCAFDimTolObjectsDatumObject): bool {.noSideEffect,
    importcpp: "HasPoint", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc hasPointText*(this: XCAFDimTolObjectsDatumObject): bool {.noSideEffect,
    importcpp: "HasPointText", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setPresentation*(this: var XCAFDimTolObjectsDatumObject;
                     thePresentation: TopoDS_Shape;
                     thePresentationName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPresentation", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getPresentation*(this: XCAFDimTolObjectsDatumObject): TopoDS_Shape {.
    noSideEffect, importcpp: "GetPresentation",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getPresentationName*(this: XCAFDimTolObjectsDatumObject): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "GetPresentationName",
                              header: "XCAFDimTolObjects_DatumObject.hxx".}
proc hasDatumTargetParams*(this: var XCAFDimTolObjectsDatumObject): bool {.
    importcpp: "HasDatumTargetParams", header: "XCAFDimTolObjects_DatumObject.hxx".}
type
  XCAFDimTolObjectsDatumObjectbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "XCAFDimTolObjects_DatumObject::get_type_name(@)",
                            header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDimTolObjects_DatumObject::get_type_descriptor(@)",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc dynamicType*(this: XCAFDimTolObjectsDatumObject): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XCAFDimTolObjects_DatumObject.hxx".}

























