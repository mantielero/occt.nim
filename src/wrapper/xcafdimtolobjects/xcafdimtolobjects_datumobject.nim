import ../topods/topods_types
import xcafdimtolobjects_types
import ../standard/standard_types
import ../tcollection/tcollection_types
import ../gp/gp_types


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





proc newXCAFDimTolObjectsDatumObject*(): XCAFDimTolObjectsDatumObject {.cdecl,
    constructor, importcpp: "XCAFDimTolObjects_DatumObject(@)",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc newXCAFDimTolObjectsDatumObject*(theObj: Handle[XCAFDimTolObjectsDatumObject]): XCAFDimTolObjectsDatumObject {.
    cdecl, constructor, importcpp: "XCAFDimTolObjects_DatumObject(@)",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getSemanticName*(this: XCAFDimTolObjectsDatumObject): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "GetSemanticName",
                              header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setSemanticName*(this: var XCAFDimTolObjectsDatumObject;
                     theName: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "SetSemanticName", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getName*(this: XCAFDimTolObjectsDatumObject): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "GetName",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setName*(this: var XCAFDimTolObjectsDatumObject;
             theTag: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "SetName", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getModifiers*(this: XCAFDimTolObjectsDatumObject): XCAFDimTolObjectsDatumModifiersSequence {.
    noSideEffect, cdecl, importcpp: "GetModifiers",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setModifiers*(this: var XCAFDimTolObjectsDatumObject;
                  theModifiers: XCAFDimTolObjectsDatumModifiersSequence) {.cdecl,
    importcpp: "SetModifiers", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getModifierWithValue*(this: XCAFDimTolObjectsDatumObject; theModifier: var XCAFDimTolObjectsDatumModifWithValue;
                          theValue: var cfloat) {.noSideEffect, cdecl,
    importcpp: "GetModifierWithValue", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setModifierWithValue*(this: var XCAFDimTolObjectsDatumObject;
                          theModifier: XCAFDimTolObjectsDatumModifWithValue;
                          theValue: cfloat) {.cdecl,
    importcpp: "SetModifierWithValue", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc addModifier*(this: var XCAFDimTolObjectsDatumObject;
                 theModifier: XCAFDimTolObjectsDatumSingleModif) {.cdecl,
    importcpp: "AddModifier", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getDatumTarget*(this: XCAFDimTolObjectsDatumObject): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "GetDatumTarget",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setDatumTarget*(this: var XCAFDimTolObjectsDatumObject; theShape: TopoDS_Shape) {.
    cdecl, importcpp: "SetDatumTarget", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getPosition*(this: XCAFDimTolObjectsDatumObject): cint {.noSideEffect, cdecl,
    importcpp: "GetPosition", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setPosition*(this: var XCAFDimTolObjectsDatumObject; thePosition: cint) {.cdecl,
    importcpp: "SetPosition", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc isDatumTarget*(this: XCAFDimTolObjectsDatumObject): bool {.noSideEffect, cdecl,
    importcpp: "IsDatumTarget", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc isDatumTarget*(this: var XCAFDimTolObjectsDatumObject; theIsDT: bool) {.cdecl,
    importcpp: "IsDatumTarget", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getDatumTargetType*(this: XCAFDimTolObjectsDatumObject): XCAFDimTolObjectsDatumTargetType {.
    noSideEffect, cdecl, importcpp: "GetDatumTargetType",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setDatumTargetType*(this: var XCAFDimTolObjectsDatumObject;
                        theType: XCAFDimTolObjectsDatumTargetType) {.cdecl,
    importcpp: "SetDatumTargetType", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getDatumTargetAxis*(this: XCAFDimTolObjectsDatumObject): gp_Ax2 {.noSideEffect,
    cdecl, importcpp: "GetDatumTargetAxis",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setDatumTargetAxis*(this: var XCAFDimTolObjectsDatumObject; theAxis: gp_Ax2) {.
    cdecl, importcpp: "SetDatumTargetAxis",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getDatumTargetLength*(this: XCAFDimTolObjectsDatumObject): cfloat {.
    noSideEffect, cdecl, importcpp: "GetDatumTargetLength",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setDatumTargetLength*(this: var XCAFDimTolObjectsDatumObject; theLength: cfloat) {.
    cdecl, importcpp: "SetDatumTargetLength",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getDatumTargetWidth*(this: XCAFDimTolObjectsDatumObject): cfloat {.
    noSideEffect, cdecl, importcpp: "GetDatumTargetWidth",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setDatumTargetWidth*(this: var XCAFDimTolObjectsDatumObject; theWidth: cfloat) {.
    cdecl, importcpp: "SetDatumTargetWidth",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getDatumTargetNumber*(this: XCAFDimTolObjectsDatumObject): cint {.noSideEffect,
    cdecl, importcpp: "GetDatumTargetNumber",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setDatumTargetNumber*(this: var XCAFDimTolObjectsDatumObject; theNumber: cint) {.
    cdecl, importcpp: "SetDatumTargetNumber",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setPlane*(this: var XCAFDimTolObjectsDatumObject; thePlane: gp_Ax2) {.cdecl,
    importcpp: "SetPlane", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getPlane*(this: XCAFDimTolObjectsDatumObject): gp_Ax2 {.noSideEffect, cdecl,
    importcpp: "GetPlane", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setPoint*(this: var XCAFDimTolObjectsDatumObject; thePnt: gp_Pnt) {.cdecl,
    importcpp: "SetPoint", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getPoint*(this: XCAFDimTolObjectsDatumObject): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "GetPoint", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setPointTextAttach*(this: var XCAFDimTolObjectsDatumObject; thePntText: gp_Pnt) {.
    cdecl, importcpp: "SetPointTextAttach",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getPointTextAttach*(this: XCAFDimTolObjectsDatumObject): gp_Pnt {.noSideEffect,
    cdecl, importcpp: "GetPointTextAttach",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc hasPlane*(this: XCAFDimTolObjectsDatumObject): bool {.noSideEffect, cdecl,
    importcpp: "HasPlane", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc hasPoint*(this: XCAFDimTolObjectsDatumObject): bool {.noSideEffect, cdecl,
    importcpp: "HasPoint", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc hasPointText*(this: XCAFDimTolObjectsDatumObject): bool {.noSideEffect, cdecl,
    importcpp: "HasPointText", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc setPresentation*(this: var XCAFDimTolObjectsDatumObject;
                     thePresentation: TopoDS_Shape;
                     thePresentationName: Handle[TCollectionHAsciiString]) {.
    cdecl, importcpp: "SetPresentation",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getPresentation*(this: XCAFDimTolObjectsDatumObject): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "GetPresentation",
    header: "XCAFDimTolObjects_DatumObject.hxx".}
proc getPresentationName*(this: XCAFDimTolObjectsDatumObject): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl,
                              importcpp: "GetPresentationName",
                              header: "XCAFDimTolObjects_DatumObject.hxx".}
proc hasDatumTargetParams*(this: var XCAFDimTolObjectsDatumObject): bool {.cdecl,
    importcpp: "HasDatumTargetParams", header: "XCAFDimTolObjects_DatumObject.hxx".}
proc dumpJson*(this: XCAFDimTolObjectsDatumObject; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDimTolObjects_DatumObject.hxx".}

