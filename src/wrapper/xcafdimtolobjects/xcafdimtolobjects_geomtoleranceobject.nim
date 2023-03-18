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





proc newXCAFDimTolObjectsGeomToleranceObject*(): XCAFDimTolObjectsGeomToleranceObject {.
    cdecl, constructor, importcpp: "XCAFDimTolObjects_GeomToleranceObject(@)",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc newXCAFDimTolObjectsGeomToleranceObject*(
    theObj: Handle[XCAFDimTolObjectsGeomToleranceObject]): XCAFDimTolObjectsGeomToleranceObject {.
    cdecl, constructor, importcpp: "XCAFDimTolObjects_GeomToleranceObject(@)",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getSemanticName*(this: XCAFDimTolObjectsGeomToleranceObject): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "GetSemanticName", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setSemanticName*(this: var XCAFDimTolObjectsGeomToleranceObject;
                     theName: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "SetSemanticName",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setType*(this: var XCAFDimTolObjectsGeomToleranceObject;
             theType: XCAFDimTolObjectsGeomToleranceType) {.cdecl,
    importcpp: "SetType", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getType*(this: XCAFDimTolObjectsGeomToleranceObject): XCAFDimTolObjectsGeomToleranceType {.
    noSideEffect, cdecl, importcpp: "GetType",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setTypeOfValue*(this: var XCAFDimTolObjectsGeomToleranceObject;
                    theTypeOfValue: XCAFDimTolObjectsGeomToleranceTypeValue) {.
    cdecl, importcpp: "SetTypeOfValue",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getTypeOfValue*(this: XCAFDimTolObjectsGeomToleranceObject): XCAFDimTolObjectsGeomToleranceTypeValue {.
    noSideEffect, cdecl, importcpp: "GetTypeOfValue",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setValue*(this: var XCAFDimTolObjectsGeomToleranceObject; theValue: cfloat) {.
    cdecl, importcpp: "SetValue",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getValue*(this: XCAFDimTolObjectsGeomToleranceObject): cfloat {.noSideEffect,
    cdecl, importcpp: "GetValue",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setMaterialRequirementModifier*(this: var XCAFDimTolObjectsGeomToleranceObject;
    theMatReqModif: XCAFDimTolObjectsGeomToleranceMatReqModif) {.cdecl,
    importcpp: "SetMaterialRequirementModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getMaterialRequirementModifier*(this: XCAFDimTolObjectsGeomToleranceObject): XCAFDimTolObjectsGeomToleranceMatReqModif {.
    noSideEffect, cdecl, importcpp: "GetMaterialRequirementModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setZoneModifier*(this: var XCAFDimTolObjectsGeomToleranceObject;
                     theZoneModif: XCAFDimTolObjectsGeomToleranceZoneModif) {.
    cdecl, importcpp: "SetZoneModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getZoneModifier*(this: XCAFDimTolObjectsGeomToleranceObject): XCAFDimTolObjectsGeomToleranceZoneModif {.
    noSideEffect, cdecl, importcpp: "GetZoneModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setValueOfZoneModifier*(this: var XCAFDimTolObjectsGeomToleranceObject;
                            theValue: cfloat) {.cdecl,
    importcpp: "SetValueOfZoneModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getValueOfZoneModifier*(this: XCAFDimTolObjectsGeomToleranceObject): cfloat {.
    noSideEffect, cdecl, importcpp: "GetValueOfZoneModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setModifiers*(this: var XCAFDimTolObjectsGeomToleranceObject;
                  theModifiers: XCAFDimTolObjectsGeomToleranceModifiersSequence) {.
    cdecl, importcpp: "SetModifiers",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc addModifier*(this: var XCAFDimTolObjectsGeomToleranceObject;
                 theModifier: XCAFDimTolObjectsGeomToleranceModif) {.cdecl,
    importcpp: "AddModifier", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getModifiers*(this: XCAFDimTolObjectsGeomToleranceObject): XCAFDimTolObjectsGeomToleranceModifiersSequence {.
    noSideEffect, cdecl, importcpp: "GetModifiers",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setMaxValueModifier*(this: var XCAFDimTolObjectsGeomToleranceObject;
                         theModifier: cfloat) {.cdecl,
    importcpp: "SetMaxValueModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getMaxValueModifier*(this: XCAFDimTolObjectsGeomToleranceObject): cfloat {.
    noSideEffect, cdecl, importcpp: "GetMaxValueModifier",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setAxis*(this: var XCAFDimTolObjectsGeomToleranceObject; theAxis: gp_Ax2) {.cdecl,
    importcpp: "SetAxis", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getAxis*(this: XCAFDimTolObjectsGeomToleranceObject): gp_Ax2 {.noSideEffect,
    cdecl, importcpp: "GetAxis",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc hasAxis*(this: XCAFDimTolObjectsGeomToleranceObject): bool {.noSideEffect,
    cdecl, importcpp: "HasAxis",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setPlane*(this: var XCAFDimTolObjectsGeomToleranceObject; thePlane: gp_Ax2) {.
    cdecl, importcpp: "SetPlane",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getPlane*(this: XCAFDimTolObjectsGeomToleranceObject): gp_Ax2 {.noSideEffect,
    cdecl, importcpp: "GetPlane",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setPoint*(this: var XCAFDimTolObjectsGeomToleranceObject; thePnt: gp_Pnt) {.cdecl,
    importcpp: "SetPoint", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getPoint*(this: XCAFDimTolObjectsGeomToleranceObject): gp_Pnt {.noSideEffect,
    cdecl, importcpp: "GetPoint",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setPointTextAttach*(this: var XCAFDimTolObjectsGeomToleranceObject;
                        thePntText: gp_Pnt) {.cdecl,
    importcpp: "SetPointTextAttach",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getPointTextAttach*(this: XCAFDimTolObjectsGeomToleranceObject): gp_Pnt {.
    noSideEffect, cdecl, importcpp: "GetPointTextAttach",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc hasPlane*(this: XCAFDimTolObjectsGeomToleranceObject): bool {.noSideEffect,
    cdecl, importcpp: "HasPlane",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc hasPoint*(this: XCAFDimTolObjectsGeomToleranceObject): bool {.noSideEffect,
    cdecl, importcpp: "HasPoint",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc hasPointText*(this: XCAFDimTolObjectsGeomToleranceObject): bool {.noSideEffect,
    cdecl, importcpp: "HasPointText",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setPresentation*(this: var XCAFDimTolObjectsGeomToleranceObject;
                     thePresentation: TopoDS_Shape;
                     thePresentationName: Handle[TCollectionHAsciiString]) {.
    cdecl, importcpp: "SetPresentation",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getPresentation*(this: XCAFDimTolObjectsGeomToleranceObject): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "GetPresentation",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getPresentationName*(this: XCAFDimTolObjectsGeomToleranceObject): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl,
                              importcpp: "GetPresentationName", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc hasAffectedPlane*(this: XCAFDimTolObjectsGeomToleranceObject): bool {.
    noSideEffect, cdecl, importcpp: "HasAffectedPlane",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getAffectedPlaneType*(this: XCAFDimTolObjectsGeomToleranceObject): XCAFDimTolObjectsToleranceZoneAffectedPlane {.
    noSideEffect, cdecl, importcpp: "GetAffectedPlaneType",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setAffectedPlaneType*(this: var XCAFDimTolObjectsGeomToleranceObject;
                          theType: XCAFDimTolObjectsToleranceZoneAffectedPlane) {.
    cdecl, importcpp: "SetAffectedPlaneType",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setAffectedPlane*(this: var XCAFDimTolObjectsGeomToleranceObject;
                      thePlane: gp_Pln) {.cdecl, importcpp: "SetAffectedPlane", header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc setAffectedPlane*(this: var XCAFDimTolObjectsGeomToleranceObject;
                      thePlane: gp_Pln;
                      theType: XCAFDimTolObjectsToleranceZoneAffectedPlane) {.
    cdecl, importcpp: "SetAffectedPlane",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc getAffectedPlane*(this: XCAFDimTolObjectsGeomToleranceObject): gp_Pln {.
    noSideEffect, cdecl, importcpp: "GetAffectedPlane",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}
proc dumpJson*(this: XCAFDimTolObjectsGeomToleranceObject;
              theOStream: var StandardOStream; theDepth: cint = -1) {.noSideEffect,
    cdecl, importcpp: "DumpJson",
    header: "XCAFDimTolObjects_GeomToleranceObject.hxx".}

