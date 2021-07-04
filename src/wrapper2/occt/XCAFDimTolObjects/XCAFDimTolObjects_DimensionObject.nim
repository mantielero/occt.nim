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
  XCAFDimTolObjects_DimensionObjectSequence, XCAFDimTolObjects_DimensionType,
  ../TColStd/TColStd_HArray1OfReal, XCAFDimTolObjects_DimensionQualifier,
  ../Standard/Standard_Boolean, XCAFDimTolObjects_DimensionFormVariance,
  XCAFDimTolObjects_DimensionGrade, ../Standard/Standard_Integer,
  XCAFDimTolObjects_DimensionModifiersSequence, ../TopoDS/TopoDS_Edge,
  ../gp/gp_Dir, ../gp/gp_Ax2, ../TColgp/TColgp_HArray1OfPnt,
  ../Standard/Standard_Transient, ../Standard/Standard_Real,
  XCAFDimTolObjects_DimensionModif, ../TCollection/TCollection_HAsciiString,
  ../NCollection/NCollection_Vector, ../TColStd/TColStd_HArray1OfExtendedString

discard "forward decl of XCAFDimTolObjects_DimensionObject"
discard "forward decl of XCAFDimTolObjects_DimensionObject"
type
  Handle_XCAFDimTolObjects_DimensionObject* = handle[
      XCAFDimTolObjects_DimensionObject]

## ! Access object to store dimension data

type
  XCAFDimTolObjects_DimensionObject* {.importcpp: "XCAFDimTolObjects_DimensionObject", header: "XCAFDimTolObjects_DimensionObject.hxx",
                                      bycopy.} = object of Standard_Transient


proc constructXCAFDimTolObjects_DimensionObject*(): XCAFDimTolObjects_DimensionObject {.
    constructor, importcpp: "XCAFDimTolObjects_DimensionObject(@)",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc constructXCAFDimTolObjects_DimensionObject*(
    theObj: handle[XCAFDimTolObjects_DimensionObject]): XCAFDimTolObjects_DimensionObject {.
    constructor, importcpp: "XCAFDimTolObjects_DimensionObject(@)",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetSemanticName*(this: XCAFDimTolObjects_DimensionObject): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "GetSemanticName",
                               header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetSemanticName*(this: var XCAFDimTolObjects_DimensionObject;
                     theName: handle[TCollection_HAsciiString]) {.
    importcpp: "SetSemanticName", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetQualifier*(this: var XCAFDimTolObjects_DimensionObject;
                  theQualifier: XCAFDimTolObjects_DimensionQualifier) {.
    importcpp: "SetQualifier", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetQualifier*(this: XCAFDimTolObjects_DimensionObject): XCAFDimTolObjects_DimensionQualifier {.
    noSideEffect, importcpp: "GetQualifier",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc HasQualifier*(this: XCAFDimTolObjects_DimensionObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasQualifier",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetType*(this: var XCAFDimTolObjects_DimensionObject;
             theTyupe: XCAFDimTolObjects_DimensionType) {.importcpp: "SetType",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetType*(this: XCAFDimTolObjects_DimensionObject): XCAFDimTolObjects_DimensionType {.
    noSideEffect, importcpp: "GetType",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetValue*(this: XCAFDimTolObjects_DimensionObject): Standard_Real {.
    noSideEffect, importcpp: "GetValue",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetValues*(this: XCAFDimTolObjects_DimensionObject): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "GetValues",
                            header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetValue*(this: var XCAFDimTolObjects_DimensionObject; theValue: Standard_Real) {.
    importcpp: "SetValue", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetValues*(this: var XCAFDimTolObjects_DimensionObject;
               theValue: handle[TColStd_HArray1OfReal]) {.importcpp: "SetValues",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc IsDimWithRange*(this: XCAFDimTolObjects_DimensionObject): Standard_Boolean {.
    noSideEffect, importcpp: "IsDimWithRange",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetUpperBound*(this: var XCAFDimTolObjects_DimensionObject;
                   theUpperBound: Standard_Real) {.importcpp: "SetUpperBound",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetLowerBound*(this: var XCAFDimTolObjects_DimensionObject;
                   theLowerBound: Standard_Real) {.importcpp: "SetLowerBound",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetUpperBound*(this: XCAFDimTolObjects_DimensionObject): Standard_Real {.
    noSideEffect, importcpp: "GetUpperBound",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetLowerBound*(this: XCAFDimTolObjects_DimensionObject): Standard_Real {.
    noSideEffect, importcpp: "GetLowerBound",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc IsDimWithPlusMinusTolerance*(this: XCAFDimTolObjects_DimensionObject): Standard_Boolean {.
    noSideEffect, importcpp: "IsDimWithPlusMinusTolerance",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetUpperTolValue*(this: var XCAFDimTolObjects_DimensionObject;
                      theUperTolValue: Standard_Real): Standard_Boolean {.
    importcpp: "SetUpperTolValue", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetLowerTolValue*(this: var XCAFDimTolObjects_DimensionObject;
                      theLowerTolValue: Standard_Real): Standard_Boolean {.
    importcpp: "SetLowerTolValue", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetUpperTolValue*(this: XCAFDimTolObjects_DimensionObject): Standard_Real {.
    noSideEffect, importcpp: "GetUpperTolValue",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetLowerTolValue*(this: XCAFDimTolObjects_DimensionObject): Standard_Real {.
    noSideEffect, importcpp: "GetLowerTolValue",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc IsDimWithClassOfTolerance*(this: XCAFDimTolObjects_DimensionObject): Standard_Boolean {.
    noSideEffect, importcpp: "IsDimWithClassOfTolerance",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetClassOfTolerance*(this: var XCAFDimTolObjects_DimensionObject;
                         theHole: Standard_Boolean; theFormVariance: XCAFDimTolObjects_DimensionFormVariance;
                         theGrade: XCAFDimTolObjects_DimensionGrade) {.
    importcpp: "SetClassOfTolerance",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetClassOfTolerance*(this: XCAFDimTolObjects_DimensionObject;
                         theHole: var Standard_Boolean; theFormVariance: var XCAFDimTolObjects_DimensionFormVariance;
                         theGrade: var XCAFDimTolObjects_DimensionGrade): Standard_Boolean {.
    noSideEffect, importcpp: "GetClassOfTolerance",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetNbOfDecimalPlaces*(this: var XCAFDimTolObjects_DimensionObject;
                          theL: Standard_Integer; theR: Standard_Integer) {.
    importcpp: "SetNbOfDecimalPlaces",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetNbOfDecimalPlaces*(this: XCAFDimTolObjects_DimensionObject;
                          theL: var Standard_Integer; theR: var Standard_Integer) {.
    noSideEffect, importcpp: "GetNbOfDecimalPlaces",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetModifiers*(this: XCAFDimTolObjects_DimensionObject): XCAFDimTolObjects_DimensionModifiersSequence {.
    noSideEffect, importcpp: "GetModifiers",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetModifiers*(this: var XCAFDimTolObjects_DimensionObject;
                  theModifiers: XCAFDimTolObjects_DimensionModifiersSequence) {.
    importcpp: "SetModifiers", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc AddModifier*(this: var XCAFDimTolObjects_DimensionObject;
                 theModifier: XCAFDimTolObjects_DimensionModif) {.
    importcpp: "AddModifier", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetPath*(this: XCAFDimTolObjects_DimensionObject): TopoDS_Edge {.noSideEffect,
    importcpp: "GetPath", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetPath*(this: var XCAFDimTolObjects_DimensionObject; thePath: TopoDS_Edge) {.
    importcpp: "SetPath", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetDirection*(this: XCAFDimTolObjects_DimensionObject; theDir: var gp_Dir): Standard_Boolean {.
    noSideEffect, importcpp: "GetDirection",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetDirection*(this: var XCAFDimTolObjects_DimensionObject; theDir: gp_Dir): Standard_Boolean {.
    importcpp: "SetDirection", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetPointTextAttach*(this: var XCAFDimTolObjects_DimensionObject;
                        thePntText: gp_Pnt) {.importcpp: "SetPointTextAttach",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetPointTextAttach*(this: XCAFDimTolObjects_DimensionObject): gp_Pnt {.
    noSideEffect, importcpp: "GetPointTextAttach",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc HasTextPoint*(this: XCAFDimTolObjects_DimensionObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasTextPoint",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetPlane*(this: var XCAFDimTolObjects_DimensionObject; thePlane: gp_Ax2) {.
    importcpp: "SetPlane", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetPlane*(this: XCAFDimTolObjects_DimensionObject): gp_Ax2 {.noSideEffect,
    importcpp: "GetPlane", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc HasPlane*(this: XCAFDimTolObjects_DimensionObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasPlane",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc HasPoint*(this: XCAFDimTolObjects_DimensionObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasPoint",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc HasPoint2*(this: XCAFDimTolObjects_DimensionObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasPoint2",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetPoint*(this: var XCAFDimTolObjects_DimensionObject; thePnt: gp_Pnt) {.
    importcpp: "SetPoint", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetPoint2*(this: var XCAFDimTolObjects_DimensionObject; thePnt: gp_Pnt) {.
    importcpp: "SetPoint2", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetPoint*(this: XCAFDimTolObjects_DimensionObject): gp_Pnt {.noSideEffect,
    importcpp: "GetPoint", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetPoint2*(this: XCAFDimTolObjects_DimensionObject): gp_Pnt {.noSideEffect,
    importcpp: "GetPoint2", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc SetPresentation*(this: var XCAFDimTolObjects_DimensionObject;
                     thePresentation: TopoDS_Shape;
                     thePresentationName: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPresentation", header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetPresentation*(this: XCAFDimTolObjects_DimensionObject): TopoDS_Shape {.
    noSideEffect, importcpp: "GetPresentation",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetPresentationName*(this: XCAFDimTolObjects_DimensionObject): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "GetPresentationName",
                               header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc HasDescriptions*(this: XCAFDimTolObjects_DimensionObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescriptions",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc NbDescriptions*(this: XCAFDimTolObjects_DimensionObject): Standard_Integer {.
    noSideEffect, importcpp: "NbDescriptions",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetDescription*(this: XCAFDimTolObjects_DimensionObject;
                    theNumber: Standard_Integer): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "GetDescription",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc GetDescriptionName*(this: XCAFDimTolObjects_DimensionObject;
                        theNumber: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "GetDescriptionName",
                               header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc RemoveDescription*(this: var XCAFDimTolObjects_DimensionObject;
                       theNumber: Standard_Integer) {.
    importcpp: "RemoveDescription",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc AddDescription*(this: var XCAFDimTolObjects_DimensionObject;
                    theDescription: handle[TCollection_HAsciiString];
                    theName: handle[TCollection_HAsciiString]) {.
    importcpp: "AddDescription", header: "XCAFDimTolObjects_DimensionObject.hxx".}
type
  XCAFDimTolObjects_DimensionObjectbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "XCAFDimTolObjects_DimensionObject::get_type_name(@)",
                              header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFDimTolObjects_DimensionObject::get_type_descriptor(@)",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}
proc DynamicType*(this: XCAFDimTolObjects_DimensionObject): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XCAFDimTolObjects_DimensionObject.hxx".}