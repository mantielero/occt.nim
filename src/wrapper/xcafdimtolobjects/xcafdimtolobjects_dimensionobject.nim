import ../tcolstd/tcolstd_types
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





proc newXCAFDimTolObjectsDimensionObject*(): XCAFDimTolObjectsDimensionObject {.
    cdecl, constructor, importcpp: "XCAFDimTolObjects_DimensionObject(@)",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc newXCAFDimTolObjectsDimensionObject*(
    theObj: Handle[XCAFDimTolObjectsDimensionObject]): XCAFDimTolObjectsDimensionObject {.
    cdecl, constructor, importcpp: "XCAFDimTolObjects_DimensionObject(@)",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getSemanticName*(this: XCAFDimTolObjectsDimensionObject): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "GetSemanticName",
                              header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setSemanticName*(this: var XCAFDimTolObjectsDimensionObject;
                     theName: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "SetSemanticName", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setQualifier*(this: var XCAFDimTolObjectsDimensionObject;
                  theQualifier: XCAFDimTolObjectsDimensionQualifier) {.cdecl,
    importcpp: "SetQualifier", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getQualifier*(this: XCAFDimTolObjectsDimensionObject): XCAFDimTolObjectsDimensionQualifier {.
    noSideEffect, cdecl, importcpp: "GetQualifier",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc hasQualifier*(this: XCAFDimTolObjectsDimensionObject): bool {.noSideEffect,
    cdecl, importcpp: "HasQualifier",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setType*(this: var XCAFDimTolObjectsDimensionObject;
             theTyupe: XCAFDimTolObjectsDimensionType) {.cdecl,
    importcpp: "SetType", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getType*(this: XCAFDimTolObjectsDimensionObject): XCAFDimTolObjectsDimensionType {.
    noSideEffect, cdecl, importcpp: "GetType",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getValue*(this: XCAFDimTolObjectsDimensionObject): cfloat {.noSideEffect, cdecl,
    importcpp: "GetValue", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getValues*(this: XCAFDimTolObjectsDimensionObject): Handle[
    TColStdHArray1OfReal] {.noSideEffect, cdecl, importcpp: "GetValues",
                           header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setValue*(this: var XCAFDimTolObjectsDimensionObject; theValue: cfloat) {.cdecl,
    importcpp: "SetValue", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setValues*(this: var XCAFDimTolObjectsDimensionObject;
               theValue: Handle[TColStdHArray1OfReal]) {.cdecl,
    importcpp: "SetValues", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc isDimWithRange*(this: XCAFDimTolObjectsDimensionObject): bool {.noSideEffect,
    cdecl, importcpp: "IsDimWithRange",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setUpperBound*(this: var XCAFDimTolObjectsDimensionObject;
                   theUpperBound: cfloat) {.cdecl, importcpp: "SetUpperBound",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setLowerBound*(this: var XCAFDimTolObjectsDimensionObject;
                   theLowerBound: cfloat) {.cdecl, importcpp: "SetLowerBound",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getUpperBound*(this: XCAFDimTolObjectsDimensionObject): cfloat {.noSideEffect,
    cdecl, importcpp: "GetUpperBound",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getLowerBound*(this: XCAFDimTolObjectsDimensionObject): cfloat {.noSideEffect,
    cdecl, importcpp: "GetLowerBound",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc isDimWithPlusMinusTolerance*(this: XCAFDimTolObjectsDimensionObject): bool {.
    noSideEffect, cdecl, importcpp: "IsDimWithPlusMinusTolerance",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setUpperTolValue*(this: var XCAFDimTolObjectsDimensionObject;
                      theUperTolValue: cfloat): bool {.cdecl,
    importcpp: "SetUpperTolValue", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setLowerTolValue*(this: var XCAFDimTolObjectsDimensionObject;
                      theLowerTolValue: cfloat): bool {.cdecl,
    importcpp: "SetLowerTolValue", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getUpperTolValue*(this: XCAFDimTolObjectsDimensionObject): cfloat {.
    noSideEffect, cdecl, importcpp: "GetUpperTolValue",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getLowerTolValue*(this: XCAFDimTolObjectsDimensionObject): cfloat {.
    noSideEffect, cdecl, importcpp: "GetLowerTolValue",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc isDimWithClassOfTolerance*(this: XCAFDimTolObjectsDimensionObject): bool {.
    noSideEffect, cdecl, importcpp: "IsDimWithClassOfTolerance",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setClassOfTolerance*(this: var XCAFDimTolObjectsDimensionObject; theHole: bool;
    theFormVariance: XCAFDimTolObjectsDimensionFormVariance;
                         theGrade: XCAFDimTolObjectsDimensionGrade) {.cdecl,
    importcpp: "SetClassOfTolerance",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getClassOfTolerance*(this: XCAFDimTolObjectsDimensionObject;
                         theHole: var bool; theFormVariance: var XCAFDimTolObjectsDimensionFormVariance;
                         theGrade: var XCAFDimTolObjectsDimensionGrade): bool {.
    noSideEffect, cdecl, importcpp: "GetClassOfTolerance",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setNbOfDecimalPlaces*(this: var XCAFDimTolObjectsDimensionObject; theL: cint;
                          theR: cint) {.cdecl, importcpp: "SetNbOfDecimalPlaces", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getNbOfDecimalPlaces*(this: XCAFDimTolObjectsDimensionObject; theL: var cint;
                          theR: var cint) {.noSideEffect, cdecl,
    importcpp: "GetNbOfDecimalPlaces",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getModifiers*(this: XCAFDimTolObjectsDimensionObject): XCAFDimTolObjectsDimensionModifiersSequence {.
    noSideEffect, cdecl, importcpp: "GetModifiers",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setModifiers*(this: var XCAFDimTolObjectsDimensionObject;
                  theModifiers: XCAFDimTolObjectsDimensionModifiersSequence) {.
    cdecl, importcpp: "SetModifiers",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc addModifier*(this: var XCAFDimTolObjectsDimensionObject;
                 theModifier: XCAFDimTolObjectsDimensionModif) {.cdecl,
    importcpp: "AddModifier", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getPath*(this: XCAFDimTolObjectsDimensionObject): TopoDS_Edge {.noSideEffect,
    cdecl, importcpp: "GetPath", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setPath*(this: var XCAFDimTolObjectsDimensionObject; thePath: TopoDS_Edge) {.
    cdecl, importcpp: "SetPath", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getDirection*(this: XCAFDimTolObjectsDimensionObject; theDir: var gp_Dir): bool {.
    noSideEffect, cdecl, importcpp: "GetDirection",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setDirection*(this: var XCAFDimTolObjectsDimensionObject; theDir: gp_Dir): bool {.
    cdecl, importcpp: "SetDirection",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setPointTextAttach*(this: var XCAFDimTolObjectsDimensionObject;
                        thePntText: gp_Pnt) {.cdecl,
    importcpp: "SetPointTextAttach",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getPointTextAttach*(this: XCAFDimTolObjectsDimensionObject): gp_Pnt {.
    noSideEffect, cdecl, importcpp: "GetPointTextAttach",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc hasTextPoint*(this: XCAFDimTolObjectsDimensionObject): bool {.noSideEffect,
    cdecl, importcpp: "HasTextPoint",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setPlane*(this: var XCAFDimTolObjectsDimensionObject; thePlane: gp_Ax2) {.cdecl,
    importcpp: "SetPlane", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getPlane*(this: XCAFDimTolObjectsDimensionObject): gp_Ax2 {.noSideEffect, cdecl,
    importcpp: "GetPlane", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc hasPlane*(this: XCAFDimTolObjectsDimensionObject): bool {.noSideEffect, cdecl,
    importcpp: "HasPlane", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc hasPoint*(this: XCAFDimTolObjectsDimensionObject): bool {.noSideEffect, cdecl,
    importcpp: "HasPoint", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc hasPoint2*(this: XCAFDimTolObjectsDimensionObject): bool {.noSideEffect, cdecl,
    importcpp: "HasPoint2", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setPoint*(this: var XCAFDimTolObjectsDimensionObject; thePnt: gp_Pnt) {.cdecl,
    importcpp: "SetPoint", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setPoint2*(this: var XCAFDimTolObjectsDimensionObject; thePnt: gp_Pnt) {.cdecl,
    importcpp: "SetPoint2", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getPoint*(this: XCAFDimTolObjectsDimensionObject): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "GetPoint", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getPoint2*(this: XCAFDimTolObjectsDimensionObject): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "GetPoint2", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc setPresentation*(this: var XCAFDimTolObjectsDimensionObject;
                     thePresentation: TopoDS_Shape;
                     thePresentationName: Handle[TCollectionHAsciiString]) {.
    cdecl, importcpp: "SetPresentation",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getPresentation*(this: XCAFDimTolObjectsDimensionObject): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "GetPresentation",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getPresentationName*(this: XCAFDimTolObjectsDimensionObject): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl,
                              importcpp: "GetPresentationName",
                              header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc hasDescriptions*(this: XCAFDimTolObjectsDimensionObject): bool {.noSideEffect,
    cdecl, importcpp: "HasDescriptions",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc nbDescriptions*(this: XCAFDimTolObjectsDimensionObject): cint {.noSideEffect,
    cdecl, importcpp: "NbDescriptions",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getDescription*(this: XCAFDimTolObjectsDimensionObject; theNumber: cint): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "GetDescription",
                              header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc getDescriptionName*(this: XCAFDimTolObjectsDimensionObject; theNumber: cint): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl,
                              importcpp: "GetDescriptionName",
                              header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc removeDescription*(this: var XCAFDimTolObjectsDimensionObject; theNumber: cint) {.
    cdecl, importcpp: "RemoveDescription",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc addDescription*(this: var XCAFDimTolObjectsDimensionObject;
                    theDescription: Handle[TCollectionHAsciiString];
                    theName: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "AddDescription", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc dumpJson*(this: XCAFDimTolObjectsDimensionObject;
              theOStream: var StandardOStream; theDepth: cint = -1) {.noSideEffect,
    cdecl, importcpp: "DumpJson", header: "XCAFDimTolObjects_DimensionObject.hxx".}

