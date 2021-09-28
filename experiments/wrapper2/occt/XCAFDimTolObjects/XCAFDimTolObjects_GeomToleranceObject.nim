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

discard "forward decl of XCAFDimTolObjects_GeomToleranceObject"
discard "forward decl of XCAFDimTolObjects_GeomToleranceObject"
type
  HandleC1C1* = Handle[XCAFDimTolObjectsGeomToleranceObject]

## ! Access object to store dimension and tolerance

type
  XCAFDimTolObjectsGeomToleranceObject* {.
      importcpp: "XCAFDimTolObjects_GeomToleranceObject",
      header: "XCAFDimTolObjects_GeomToleranceObject.hxx", bycopy.} = object of StandardTransient


proc constructXCAFDimTolObjectsGeomToleranceObject*(): XCAFDimTolObjectsGeomToleranceObject {.
    constructor, importcpp: "XCAFDimTolObjects_GeomToleranceObject(@)",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc constructXCAFDimTolObjectsGeomToleranceObject*(
    theObj: Handle[XCAFDimTolObjectsGeomToleranceObject]): XCAFDimTolObjectsGeomToleranceObject {.
    constructor, importcpp: "XCAFDimTolObjects_GeomToleranceObject(@)",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getSemanticName*(this: XCAFDimTolObjectsGeomToleranceObject): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "GetSemanticName", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setSemanticName*(this: var XCAFDimTolObjectsGeomToleranceObject;
                     theName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetSemanticName",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setType*(this: var XCAFDimTolObjectsGeomToleranceObject;
             theType: XCAFDimTolObjectsGeomToleranceType) {.importcpp: "SetType",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getType*(this: XCAFDimTolObjectsGeomToleranceObject): XCAFDimTolObjectsGeomToleranceType {.
    noSideEffect, importcpp: "GetType",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setTypeOfValue*(this: var XCAFDimTolObjectsGeomToleranceObject;
                    theTypeOfValue: XCAFDimTolObjectsGeomToleranceTypeValue) {.
    importcpp: "SetTypeOfValue",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getTypeOfValue*(this: XCAFDimTolObjectsGeomToleranceObject): XCAFDimTolObjectsGeomToleranceTypeValue {.
    noSideEffect, importcpp: "GetTypeOfValue",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setValue*(this: var XCAFDimTolObjectsGeomToleranceObject; theValue: cfloat) {.
    importcpp: "SetValue", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getValue*(this: XCAFDimTolObjectsGeomToleranceObject): cfloat {.noSideEffect,
    importcpp: "GetValue", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setMaterialRequirementModifier*(this: var XCAFDimTolObjectsGeomToleranceObject;
    theMatReqModif: XCAFDimTolObjectsGeomToleranceMatReqModif) {.
    importcpp: "SetMaterialRequirementModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getMaterialRequirementModifier*(this: XCAFDimTolObjectsGeomToleranceObject): XCAFDimTolObjectsGeomToleranceMatReqModif {.
    noSideEffect, importcpp: "GetMaterialRequirementModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setZoneModifier*(this: var XCAFDimTolObjectsGeomToleranceObject;
                     theZoneModif: XCAFDimTolObjectsGeomToleranceZoneModif) {.
    importcpp: "SetZoneModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getZoneModifier*(this: XCAFDimTolObjectsGeomToleranceObject): XCAFDimTolObjectsGeomToleranceZoneModif {.
    noSideEffect, importcpp: "GetZoneModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setValueOfZoneModifier*(this: var XCAFDimTolObjectsGeomToleranceObject;
                            theValue: cfloat) {.
    importcpp: "SetValueOfZoneModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getValueOfZoneModifier*(this: XCAFDimTolObjectsGeomToleranceObject): cfloat {.
    noSideEffect, importcpp: "GetValueOfZoneModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setModifiers*(this: var XCAFDimTolObjectsGeomToleranceObject;
                  theModifiers: XCAFDimTolObjectsGeomToleranceModifiersSequence) {.
    importcpp: "SetModifiers", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc addModifier*(this: var XCAFDimTolObjectsGeomToleranceObject;
                 theModifier: XCAFDimTolObjectsGeomToleranceModif) {.
    importcpp: "AddModifier", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getModifiers*(this: XCAFDimTolObjectsGeomToleranceObject): XCAFDimTolObjectsGeomToleranceModifiersSequence {.
    noSideEffect, importcpp: "GetModifiers",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setMaxValueModifier*(this: var XCAFDimTolObjectsGeomToleranceObject;
                         theModifier: cfloat) {.importcpp: "SetMaxValueModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getMaxValueModifier*(this: XCAFDimTolObjectsGeomToleranceObject): cfloat {.
    noSideEffect, importcpp: "GetMaxValueModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setAxis*(this: var XCAFDimTolObjectsGeomToleranceObject; theAxis: Ax2) {.
    importcpp: "SetAxis", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getAxis*(this: XCAFDimTolObjectsGeomToleranceObject): Ax2 {.noSideEffect,
    importcpp: "GetAxis", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc hasAxis*(this: XCAFDimTolObjectsGeomToleranceObject): bool {.noSideEffect,
    importcpp: "HasAxis", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setPlane*(this: var XCAFDimTolObjectsGeomToleranceObject; thePlane: Ax2) {.
    importcpp: "SetPlane", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getPlane*(this: XCAFDimTolObjectsGeomToleranceObject): Ax2 {.noSideEffect,
    importcpp: "GetPlane", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setPoint*(this: var XCAFDimTolObjectsGeomToleranceObject; thePnt: Pnt) {.
    importcpp: "SetPoint", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getPoint*(this: XCAFDimTolObjectsGeomToleranceObject): Pnt {.noSideEffect,
    importcpp: "GetPoint", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setPointTextAttach*(this: var XCAFDimTolObjectsGeomToleranceObject;
                        thePntText: Pnt) {.importcpp: "SetPointTextAttach",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getPointTextAttach*(this: XCAFDimTolObjectsGeomToleranceObject): Pnt {.
    noSideEffect, importcpp: "GetPointTextAttach",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc hasPlane*(this: XCAFDimTolObjectsGeomToleranceObject): bool {.noSideEffect,
    importcpp: "HasPlane", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc hasPoint*(this: XCAFDimTolObjectsGeomToleranceObject): bool {.noSideEffect,
    importcpp: "HasPoint", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc hasPointText*(this: XCAFDimTolObjectsGeomToleranceObject): bool {.noSideEffect,
    importcpp: "HasPointText", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setPresentation*(this: var XCAFDimTolObjectsGeomToleranceObject;
                     thePresentation: TopoDS_Shape;
                     thePresentationName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPresentation",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getPresentation*(this: XCAFDimTolObjectsGeomToleranceObject): TopoDS_Shape {.
    noSideEffect, importcpp: "GetPresentation",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getPresentationName*(this: XCAFDimTolObjectsGeomToleranceObject): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "GetPresentationName", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc hasAffectedPlane*(this: XCAFDimTolObjectsGeomToleranceObject): bool {.
    noSideEffect, importcpp: "HasAffectedPlane",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getAffectedPlaneType*(this: XCAFDimTolObjectsGeomToleranceObject): XCAFDimTolObjectsToleranceZoneAffectedPlane {.
    noSideEffect, importcpp: "GetAffectedPlaneType",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setAffectedPlaneType*(this: var XCAFDimTolObjectsGeomToleranceObject;
                          theType: XCAFDimTolObjectsToleranceZoneAffectedPlane) {.
    importcpp: "SetAffectedPlaneType",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setAffectedPlane*(this: var XCAFDimTolObjectsGeomToleranceObject; thePlane: Pln) {.
    importcpp: "SetAffectedPlane",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setAffectedPlane*(this: var XCAFDimTolObjectsGeomToleranceObject;
                      thePlane: Pln;
                      theType: XCAFDimTolObjectsToleranceZoneAffectedPlane) {.
    importcpp: "SetAffectedPlane",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getAffectedPlane*(this: XCAFDimTolObjectsGeomToleranceObject): Pln {.
    noSideEffect, importcpp: "GetAffectedPlane",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
type
  XCAFDimTolObjectsGeomToleranceObjectbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "XCAFDimTolObjects_GeomToleranceObject::get_type_name(@)",
                            header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDimTolObjects_GeomToleranceObject::get_type_descriptor(@)",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc dynamicType*(this: XCAFDimTolObjectsGeomToleranceObject): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}

























