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

discard "forward decl of XCAFDimTolObjects_DimensionObject"
discard "forward decl of XCAFDimTolObjects_DimensionObject"
type
  HandleC1C1* = Handle[XCAFDimTolObjectsDimensionObject]

## ! Access object to store dimension data

type
  XCAFDimTolObjectsDimensionObject* {.importcpp: "XCAFDimTolObjects_DimensionObject", header: "XCAFDimTolObjects_DimensionObject.hxx",
                                     bycopy.} = object of StandardTransient


proc constructXCAFDimTolObjectsDimensionObject*(): XCAFDimTolObjectsDimensionObject {.
    constructor, importcpp: "XCAFDimTolObjects_DimensionObject(@)",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc constructXCAFDimTolObjectsDimensionObject*(
    theObj: Handle[XCAFDimTolObjectsDimensionObject]): XCAFDimTolObjectsDimensionObject {.
    constructor, importcpp: "XCAFDimTolObjects_DimensionObject(@)",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getSemanticName*(this: XCAFDimTolObjectsDimensionObject): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "GetSemanticName",
                              header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setSemanticName*(this: var XCAFDimTolObjectsDimensionObject;
                     theName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetSemanticName", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setQualifier*(this: var XCAFDimTolObjectsDimensionObject;
                  theQualifier: XCAFDimTolObjectsDimensionQualifier) {.
    importcpp: "SetQualifier", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getQualifier*(this: XCAFDimTolObjectsDimensionObject): XCAFDimTolObjectsDimensionQualifier {.
    noSideEffect, importcpp: "GetQualifier",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc hasQualifier*(this: XCAFDimTolObjectsDimensionObject): bool {.noSideEffect,
    importcpp: "HasQualifier", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setType*(this: var XCAFDimTolObjectsDimensionObject;
             theTyupe: XCAFDimTolObjectsDimensionType) {.importcpp: "SetType",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getType*(this: XCAFDimTolObjectsDimensionObject): XCAFDimTolObjectsDimensionType {.
    noSideEffect, importcpp: "GetType",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getValue*(this: XCAFDimTolObjectsDimensionObject): cfloat {.noSideEffect,
    importcpp: "GetValue", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getValues*(this: XCAFDimTolObjectsDimensionObject): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "GetValues",
                           header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setValue*(this: var XCAFDimTolObjectsDimensionObject; theValue: cfloat) {.
    importcpp: "SetValue", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setValues*(this: var XCAFDimTolObjectsDimensionObject;
               theValue: Handle[TColStdHArray1OfReal]) {.importcpp: "SetValues",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc isDimWithRange*(this: XCAFDimTolObjectsDimensionObject): bool {.noSideEffect,
    importcpp: "IsDimWithRange", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setUpperBound*(this: var XCAFDimTolObjectsDimensionObject;
                   theUpperBound: cfloat) {.importcpp: "SetUpperBound",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setLowerBound*(this: var XCAFDimTolObjectsDimensionObject;
                   theLowerBound: cfloat) {.importcpp: "SetLowerBound",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getUpperBound*(this: XCAFDimTolObjectsDimensionObject): cfloat {.noSideEffect,
    importcpp: "GetUpperBound", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getLowerBound*(this: XCAFDimTolObjectsDimensionObject): cfloat {.noSideEffect,
    importcpp: "GetLowerBound", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc isDimWithPlusMinusTolerance*(this: XCAFDimTolObjectsDimensionObject): bool {.
    noSideEffect, importcpp: "IsDimWithPlusMinusTolerance",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setUpperTolValue*(this: var XCAFDimTolObjectsDimensionObject;
                      theUperTolValue: cfloat): bool {.
    importcpp: "SetUpperTolValue", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setLowerTolValue*(this: var XCAFDimTolObjectsDimensionObject;
                      theLowerTolValue: cfloat): bool {.
    importcpp: "SetLowerTolValue", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getUpperTolValue*(this: XCAFDimTolObjectsDimensionObject): cfloat {.
    noSideEffect, importcpp: "GetUpperTolValue",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getLowerTolValue*(this: XCAFDimTolObjectsDimensionObject): cfloat {.
    noSideEffect, importcpp: "GetLowerTolValue",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc isDimWithClassOfTolerance*(this: XCAFDimTolObjectsDimensionObject): bool {.
    noSideEffect, importcpp: "IsDimWithClassOfTolerance",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setClassOfTolerance*(this: var XCAFDimTolObjectsDimensionObject; theHole: bool;
    theFormVariance: XCAFDimTolObjectsDimensionFormVariance;
                         theGrade: XCAFDimTolObjectsDimensionGrade) {.
    importcpp: "SetClassOfTolerance",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getClassOfTolerance*(this: XCAFDimTolObjectsDimensionObject;
                         theHole: var bool; theFormVariance: var XCAFDimTolObjectsDimensionFormVariance;
                         theGrade: var XCAFDimTolObjectsDimensionGrade): bool {.
    noSideEffect, importcpp: "GetClassOfTolerance",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setNbOfDecimalPlaces*(this: var XCAFDimTolObjectsDimensionObject; theL: cint;
                          theR: cint) {.importcpp: "SetNbOfDecimalPlaces", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getNbOfDecimalPlaces*(this: XCAFDimTolObjectsDimensionObject; theL: var cint;
                          theR: var cint) {.noSideEffect,
    importcpp: "GetNbOfDecimalPlaces",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getModifiers*(this: XCAFDimTolObjectsDimensionObject): XCAFDimTolObjectsDimensionModifiersSequence {.
    noSideEffect, importcpp: "GetModifiers",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setModifiers*(this: var XCAFDimTolObjectsDimensionObject;
                  theModifiers: XCAFDimTolObjectsDimensionModifiersSequence) {.
    importcpp: "SetModifiers", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc addModifier*(this: var XCAFDimTolObjectsDimensionObject;
                 theModifier: XCAFDimTolObjectsDimensionModif) {.
    importcpp: "AddModifier", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getPath*(this: XCAFDimTolObjectsDimensionObject): TopoDS_Edge {.noSideEffect,
    importcpp: "GetPath", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setPath*(this: var XCAFDimTolObjectsDimensionObject; thePath: TopoDS_Edge) {.
    importcpp: "SetPath", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getDirection*(this: XCAFDimTolObjectsDimensionObject; theDir: var Dir): bool {.
    noSideEffect, importcpp: "GetDirection",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setDirection*(this: var XCAFDimTolObjectsDimensionObject; theDir: Dir): bool {.
    importcpp: "SetDirection", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setPointTextAttach*(this: var XCAFDimTolObjectsDimensionObject; thePntText: Pnt) {.
    importcpp: "SetPointTextAttach",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getPointTextAttach*(this: XCAFDimTolObjectsDimensionObject): Pnt {.
    noSideEffect, importcpp: "GetPointTextAttach",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc hasTextPoint*(this: XCAFDimTolObjectsDimensionObject): bool {.noSideEffect,
    importcpp: "HasTextPoint", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setPlane*(this: var XCAFDimTolObjectsDimensionObject; thePlane: Ax2) {.
    importcpp: "SetPlane", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getPlane*(this: XCAFDimTolObjectsDimensionObject): Ax2 {.noSideEffect,
    importcpp: "GetPlane", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc hasPlane*(this: XCAFDimTolObjectsDimensionObject): bool {.noSideEffect,
    importcpp: "HasPlane", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc hasPoint*(this: XCAFDimTolObjectsDimensionObject): bool {.noSideEffect,
    importcpp: "HasPoint", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc hasPoint2*(this: XCAFDimTolObjectsDimensionObject): bool {.noSideEffect,
    importcpp: "HasPoint2", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setPoint*(this: var XCAFDimTolObjectsDimensionObject; thePnt: Pnt) {.
    importcpp: "SetPoint", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setPoint2*(this: var XCAFDimTolObjectsDimensionObject; thePnt: Pnt) {.
    importcpp: "SetPoint2", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getPoint*(this: XCAFDimTolObjectsDimensionObject): Pnt {.noSideEffect,
    importcpp: "GetPoint", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getPoint2*(this: XCAFDimTolObjectsDimensionObject): Pnt {.noSideEffect,
    importcpp: "GetPoint2", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setPresentation*(this: var XCAFDimTolObjectsDimensionObject;
                     thePresentation: TopoDS_Shape;
                     thePresentationName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPresentation", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getPresentation*(this: XCAFDimTolObjectsDimensionObject): TopoDS_Shape {.
    noSideEffect, importcpp: "GetPresentation",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getPresentationName*(this: XCAFDimTolObjectsDimensionObject): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "GetPresentationName",
                              header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc hasDescriptions*(this: XCAFDimTolObjectsDimensionObject): bool {.noSideEffect,
    importcpp: "HasDescriptions", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc nbDescriptions*(this: XCAFDimTolObjectsDimensionObject): cint {.noSideEffect,
    importcpp: "NbDescriptions", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getDescription*(this: XCAFDimTolObjectsDimensionObject; theNumber: cint): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "GetDescription",
                              header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getDescriptionName*(this: XCAFDimTolObjectsDimensionObject; theNumber: cint): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "GetDescriptionName",
                              header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc removeDescription*(this: var XCAFDimTolObjectsDimensionObject; theNumber: cint) {.
    importcpp: "RemoveDescription",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc addDescription*(this: var XCAFDimTolObjectsDimensionObject;
                    theDescription: Handle[TCollectionHAsciiString];
                    theName: Handle[TCollectionHAsciiString]) {.
    importcpp: "AddDescription", header: "XCAFDimTolObjects_DimensionObject.hxx".}
type
  XCAFDimTolObjectsDimensionObjectbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "XCAFDimTolObjects_DimensionObject::get_type_name(@)",
                            header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDimTolObjects_DimensionObject::get_type_descriptor(@)",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc dynamicType*(this: XCAFDimTolObjectsDimensionObject): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}

























