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
  XCAFDimTolObjects_GeomToleranceObjectSequence,
  XCAFDimTolObjects_GeomToleranceType, XCAFDimTolObjects_GeomToleranceTypeValue,
  ../Standard/Standard_Real, XCAFDimTolObjects_GeomToleranceMatReqModif,
  XCAFDimTolObjects_GeomToleranceZoneModif,
  XCAFDimTolObjects_GeomToleranceModifiersSequence,
  ../Standard/Standard_Transient, XCAFDimTolObjects_GeomToleranceModif,
  XCAFDimTolObjects_ToleranceZoneAffectedPlane, ../gp/gp_Ax2, ../gp/gp_Pln,
  ../TopoDS/TopoDS_Shape, ../TCollection/TCollection_HAsciiString

discard "forward decl of XCAFDimTolObjects_GeomToleranceObject"
discard "forward decl of XCAFDimTolObjects_GeomToleranceObject"
type
  Handle_XCAFDimTolObjects_GeomToleranceObject* = handle[
      XCAFDimTolObjects_GeomToleranceObject]

## ! Access object to store dimension and tolerance

type
  XCAFDimTolObjects_GeomToleranceObject* {.
      importcpp: "XCAFDimTolObjects_GeomToleranceObject",
      header: "XCAFDimTolObjects_GeomToleranceObject.hxx", bycopy.} = object of Standard_Transient


proc constructXCAFDimTolObjects_GeomToleranceObject*(): XCAFDimTolObjects_GeomToleranceObject {.
    constructor, importcpp: "XCAFDimTolObjects_GeomToleranceObject(@)",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc constructXCAFDimTolObjects_GeomToleranceObject*(
    theObj: handle[XCAFDimTolObjects_GeomToleranceObject]): XCAFDimTolObjects_GeomToleranceObject {.
    constructor, importcpp: "XCAFDimTolObjects_GeomToleranceObject(@)",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetSemanticName*(this: XCAFDimTolObjects_GeomToleranceObject): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "GetSemanticName", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetSemanticName*(this: var XCAFDimTolObjects_GeomToleranceObject;
                     theName: handle[TCollection_HAsciiString]) {.
    importcpp: "SetSemanticName",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetType*(this: var XCAFDimTolObjects_GeomToleranceObject;
             theType: XCAFDimTolObjects_GeomToleranceType) {.importcpp: "SetType",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetType*(this: XCAFDimTolObjects_GeomToleranceObject): XCAFDimTolObjects_GeomToleranceType {.
    noSideEffect, importcpp: "GetType",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetTypeOfValue*(this: var XCAFDimTolObjects_GeomToleranceObject;
                    theTypeOfValue: XCAFDimTolObjects_GeomToleranceTypeValue) {.
    importcpp: "SetTypeOfValue",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetTypeOfValue*(this: XCAFDimTolObjects_GeomToleranceObject): XCAFDimTolObjects_GeomToleranceTypeValue {.
    noSideEffect, importcpp: "GetTypeOfValue",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetValue*(this: var XCAFDimTolObjects_GeomToleranceObject;
              theValue: Standard_Real) {.importcpp: "SetValue", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetValue*(this: XCAFDimTolObjects_GeomToleranceObject): Standard_Real {.
    noSideEffect, importcpp: "GetValue",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetMaterialRequirementModifier*(this: var XCAFDimTolObjects_GeomToleranceObject;
    theMatReqModif: XCAFDimTolObjects_GeomToleranceMatReqModif) {.
    importcpp: "SetMaterialRequirementModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetMaterialRequirementModifier*(this: XCAFDimTolObjects_GeomToleranceObject): XCAFDimTolObjects_GeomToleranceMatReqModif {.
    noSideEffect, importcpp: "GetMaterialRequirementModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetZoneModifier*(this: var XCAFDimTolObjects_GeomToleranceObject;
                     theZoneModif: XCAFDimTolObjects_GeomToleranceZoneModif) {.
    importcpp: "SetZoneModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetZoneModifier*(this: XCAFDimTolObjects_GeomToleranceObject): XCAFDimTolObjects_GeomToleranceZoneModif {.
    noSideEffect, importcpp: "GetZoneModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetValueOfZoneModifier*(this: var XCAFDimTolObjects_GeomToleranceObject;
                            theValue: Standard_Real) {.
    importcpp: "SetValueOfZoneModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetValueOfZoneModifier*(this: XCAFDimTolObjects_GeomToleranceObject): Standard_Real {.
    noSideEffect, importcpp: "GetValueOfZoneModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetModifiers*(this: var XCAFDimTolObjects_GeomToleranceObject; theModifiers: XCAFDimTolObjects_GeomToleranceModifiersSequence) {.
    importcpp: "SetModifiers", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc AddModifier*(this: var XCAFDimTolObjects_GeomToleranceObject;
                 theModifier: XCAFDimTolObjects_GeomToleranceModif) {.
    importcpp: "AddModifier", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetModifiers*(this: XCAFDimTolObjects_GeomToleranceObject): XCAFDimTolObjects_GeomToleranceModifiersSequence {.
    noSideEffect, importcpp: "GetModifiers",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetMaxValueModifier*(this: var XCAFDimTolObjects_GeomToleranceObject;
                         theModifier: Standard_Real) {.
    importcpp: "SetMaxValueModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetMaxValueModifier*(this: XCAFDimTolObjects_GeomToleranceObject): Standard_Real {.
    noSideEffect, importcpp: "GetMaxValueModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetAxis*(this: var XCAFDimTolObjects_GeomToleranceObject; theAxis: gp_Ax2) {.
    importcpp: "SetAxis", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetAxis*(this: XCAFDimTolObjects_GeomToleranceObject): gp_Ax2 {.noSideEffect,
    importcpp: "GetAxis", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc HasAxis*(this: XCAFDimTolObjects_GeomToleranceObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasAxis",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetPlane*(this: var XCAFDimTolObjects_GeomToleranceObject; thePlane: gp_Ax2) {.
    importcpp: "SetPlane", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetPlane*(this: XCAFDimTolObjects_GeomToleranceObject): gp_Ax2 {.noSideEffect,
    importcpp: "GetPlane", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetPoint*(this: var XCAFDimTolObjects_GeomToleranceObject; thePnt: gp_Pnt) {.
    importcpp: "SetPoint", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetPoint*(this: XCAFDimTolObjects_GeomToleranceObject): gp_Pnt {.noSideEffect,
    importcpp: "GetPoint", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetPointTextAttach*(this: var XCAFDimTolObjects_GeomToleranceObject;
                        thePntText: gp_Pnt) {.importcpp: "SetPointTextAttach",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetPointTextAttach*(this: XCAFDimTolObjects_GeomToleranceObject): gp_Pnt {.
    noSideEffect, importcpp: "GetPointTextAttach",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc HasPlane*(this: XCAFDimTolObjects_GeomToleranceObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasPlane",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc HasPoint*(this: XCAFDimTolObjects_GeomToleranceObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasPoint",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc HasPointText*(this: XCAFDimTolObjects_GeomToleranceObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasPointText",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetPresentation*(this: var XCAFDimTolObjects_GeomToleranceObject;
                     thePresentation: TopoDS_Shape;
                     thePresentationName: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPresentation",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetPresentation*(this: XCAFDimTolObjects_GeomToleranceObject): TopoDS_Shape {.
    noSideEffect, importcpp: "GetPresentation",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetPresentationName*(this: XCAFDimTolObjects_GeomToleranceObject): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "GetPresentationName", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc HasAffectedPlane*(this: XCAFDimTolObjects_GeomToleranceObject): bool {.
    noSideEffect, importcpp: "HasAffectedPlane",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetAffectedPlaneType*(this: XCAFDimTolObjects_GeomToleranceObject): XCAFDimTolObjects_ToleranceZoneAffectedPlane {.
    noSideEffect, importcpp: "GetAffectedPlaneType",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetAffectedPlaneType*(this: var XCAFDimTolObjects_GeomToleranceObject;
                          theType: XCAFDimTolObjects_ToleranceZoneAffectedPlane) {.
    importcpp: "SetAffectedPlaneType",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetAffectedPlane*(this: var XCAFDimTolObjects_GeomToleranceObject;
                      thePlane: gp_Pln) {.importcpp: "SetAffectedPlane", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc SetAffectedPlane*(this: var XCAFDimTolObjects_GeomToleranceObject;
                      thePlane: gp_Pln;
                      theType: XCAFDimTolObjects_ToleranceZoneAffectedPlane) {.
    importcpp: "SetAffectedPlane",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc GetAffectedPlane*(this: XCAFDimTolObjects_GeomToleranceObject): gp_Pln {.
    noSideEffect, importcpp: "GetAffectedPlane",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
type
  XCAFDimTolObjects_GeomToleranceObjectbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "XCAFDimTolObjects_GeomToleranceObject::get_type_name(@)", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFDimTolObjects_GeomToleranceObject::get_type_descriptor(@)",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc DynamicType*(this: XCAFDimTolObjects_GeomToleranceObject): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}