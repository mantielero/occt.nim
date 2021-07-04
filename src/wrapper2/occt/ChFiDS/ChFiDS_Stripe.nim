##  Created on: 1994-03-09
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1994-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ChFiDS_HData, ../Standard/Standard_Integer, ../TopAbs/TopAbs_Orientation,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean

discard "forward decl of ChFiDS_Spine"
discard "forward decl of Geom2d_Curve"
discard "forward decl of ChFiDS_Stripe"
discard "forward decl of ChFiDS_Stripe"
type
  Handle_ChFiDS_Stripe* = handle[ChFiDS_Stripe]

## ! Data characterising a band of fillet.

type
  ChFiDS_Stripe* {.importcpp: "ChFiDS_Stripe", header: "ChFiDS_Stripe.hxx", bycopy.} = object of Standard_Transient


proc constructChFiDS_Stripe*(): ChFiDS_Stripe {.constructor,
    importcpp: "ChFiDS_Stripe(@)", header: "ChFiDS_Stripe.hxx".}
proc Reset*(this: var ChFiDS_Stripe) {.importcpp: "Reset", header: "ChFiDS_Stripe.hxx".}
proc SetOfSurfData*(this: ChFiDS_Stripe): handle[ChFiDS_HData] {.noSideEffect,
    importcpp: "SetOfSurfData", header: "ChFiDS_Stripe.hxx".}
proc Spine*(this: ChFiDS_Stripe): handle[ChFiDS_Spine] {.noSideEffect,
    importcpp: "Spine", header: "ChFiDS_Stripe.hxx".}
proc OrientationOnFace1*(this: ChFiDS_Stripe): TopAbs_Orientation {.noSideEffect,
    importcpp: "OrientationOnFace1", header: "ChFiDS_Stripe.hxx".}
proc OrientationOnFace2*(this: ChFiDS_Stripe): TopAbs_Orientation {.noSideEffect,
    importcpp: "OrientationOnFace2", header: "ChFiDS_Stripe.hxx".}
proc Choix*(this: ChFiDS_Stripe): Standard_Integer {.noSideEffect,
    importcpp: "Choix", header: "ChFiDS_Stripe.hxx".}
proc ChangeSetOfSurfData*(this: var ChFiDS_Stripe): var handle[ChFiDS_HData] {.
    importcpp: "ChangeSetOfSurfData", header: "ChFiDS_Stripe.hxx".}
proc ChangeSpine*(this: var ChFiDS_Stripe): var handle[ChFiDS_Spine] {.
    importcpp: "ChangeSpine", header: "ChFiDS_Stripe.hxx".}
proc OrientationOnFace1*(this: var ChFiDS_Stripe; Or1: TopAbs_Orientation) {.
    importcpp: "OrientationOnFace1", header: "ChFiDS_Stripe.hxx".}
proc OrientationOnFace2*(this: var ChFiDS_Stripe; Or2: TopAbs_Orientation) {.
    importcpp: "OrientationOnFace2", header: "ChFiDS_Stripe.hxx".}
proc Choix*(this: var ChFiDS_Stripe; C: Standard_Integer) {.importcpp: "Choix",
    header: "ChFiDS_Stripe.hxx".}
proc FirstParameters*(this: ChFiDS_Stripe; Pdeb: var Standard_Real;
                     Pfin: var Standard_Real) {.noSideEffect,
    importcpp: "FirstParameters", header: "ChFiDS_Stripe.hxx".}
proc LastParameters*(this: ChFiDS_Stripe; Pdeb: var Standard_Real;
                    Pfin: var Standard_Real) {.noSideEffect,
    importcpp: "LastParameters", header: "ChFiDS_Stripe.hxx".}
proc ChangeFirstParameters*(this: var ChFiDS_Stripe; Pdeb: Standard_Real;
                           Pfin: Standard_Real) {.
    importcpp: "ChangeFirstParameters", header: "ChFiDS_Stripe.hxx".}
proc ChangeLastParameters*(this: var ChFiDS_Stripe; Pdeb: Standard_Real;
                          Pfin: Standard_Real) {.
    importcpp: "ChangeLastParameters", header: "ChFiDS_Stripe.hxx".}
proc FirstCurve*(this: ChFiDS_Stripe): Standard_Integer {.noSideEffect,
    importcpp: "FirstCurve", header: "ChFiDS_Stripe.hxx".}
proc LastCurve*(this: ChFiDS_Stripe): Standard_Integer {.noSideEffect,
    importcpp: "LastCurve", header: "ChFiDS_Stripe.hxx".}
proc ChangeFirstCurve*(this: var ChFiDS_Stripe; Index: Standard_Integer) {.
    importcpp: "ChangeFirstCurve", header: "ChFiDS_Stripe.hxx".}
proc ChangeLastCurve*(this: var ChFiDS_Stripe; Index: Standard_Integer) {.
    importcpp: "ChangeLastCurve", header: "ChFiDS_Stripe.hxx".}
proc FirstPCurve*(this: ChFiDS_Stripe): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "FirstPCurve", header: "ChFiDS_Stripe.hxx".}
proc LastPCurve*(this: ChFiDS_Stripe): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "LastPCurve", header: "ChFiDS_Stripe.hxx".}
proc ChangeFirstPCurve*(this: var ChFiDS_Stripe): var handle[Geom2d_Curve] {.
    importcpp: "ChangeFirstPCurve", header: "ChFiDS_Stripe.hxx".}
proc ChangeLastPCurve*(this: var ChFiDS_Stripe): var handle[Geom2d_Curve] {.
    importcpp: "ChangeLastPCurve", header: "ChFiDS_Stripe.hxx".}
proc FirstPCurveOrientation*(this: ChFiDS_Stripe): TopAbs_Orientation {.
    noSideEffect, importcpp: "FirstPCurveOrientation", header: "ChFiDS_Stripe.hxx".}
proc LastPCurveOrientation*(this: ChFiDS_Stripe): TopAbs_Orientation {.noSideEffect,
    importcpp: "LastPCurveOrientation", header: "ChFiDS_Stripe.hxx".}
proc FirstPCurveOrientation*(this: var ChFiDS_Stripe; O: TopAbs_Orientation) {.
    importcpp: "FirstPCurveOrientation", header: "ChFiDS_Stripe.hxx".}
proc LastPCurveOrientation*(this: var ChFiDS_Stripe; O: TopAbs_Orientation) {.
    importcpp: "LastPCurveOrientation", header: "ChFiDS_Stripe.hxx".}
proc IndexFirstPointOnS1*(this: ChFiDS_Stripe): Standard_Integer {.noSideEffect,
    importcpp: "IndexFirstPointOnS1", header: "ChFiDS_Stripe.hxx".}
proc IndexFirstPointOnS2*(this: ChFiDS_Stripe): Standard_Integer {.noSideEffect,
    importcpp: "IndexFirstPointOnS2", header: "ChFiDS_Stripe.hxx".}
proc IndexLastPointOnS1*(this: ChFiDS_Stripe): Standard_Integer {.noSideEffect,
    importcpp: "IndexLastPointOnS1", header: "ChFiDS_Stripe.hxx".}
proc IndexLastPointOnS2*(this: ChFiDS_Stripe): Standard_Integer {.noSideEffect,
    importcpp: "IndexLastPointOnS2", header: "ChFiDS_Stripe.hxx".}
proc ChangeIndexFirstPointOnS1*(this: var ChFiDS_Stripe; Index: Standard_Integer) {.
    importcpp: "ChangeIndexFirstPointOnS1", header: "ChFiDS_Stripe.hxx".}
proc ChangeIndexFirstPointOnS2*(this: var ChFiDS_Stripe; Index: Standard_Integer) {.
    importcpp: "ChangeIndexFirstPointOnS2", header: "ChFiDS_Stripe.hxx".}
proc ChangeIndexLastPointOnS1*(this: var ChFiDS_Stripe; Index: Standard_Integer) {.
    importcpp: "ChangeIndexLastPointOnS1", header: "ChFiDS_Stripe.hxx".}
proc ChangeIndexLastPointOnS2*(this: var ChFiDS_Stripe; Index: Standard_Integer) {.
    importcpp: "ChangeIndexLastPointOnS2", header: "ChFiDS_Stripe.hxx".}
proc Parameters*(this: ChFiDS_Stripe; First: Standard_Boolean;
                Pdeb: var Standard_Real; Pfin: var Standard_Real) {.noSideEffect,
    importcpp: "Parameters", header: "ChFiDS_Stripe.hxx".}
proc SetParameters*(this: var ChFiDS_Stripe; First: Standard_Boolean;
                   Pdeb: Standard_Real; Pfin: Standard_Real) {.
    importcpp: "SetParameters", header: "ChFiDS_Stripe.hxx".}
proc Curve*(this: ChFiDS_Stripe; First: Standard_Boolean): Standard_Integer {.
    noSideEffect, importcpp: "Curve", header: "ChFiDS_Stripe.hxx".}
proc SetCurve*(this: var ChFiDS_Stripe; Index: Standard_Integer;
              First: Standard_Boolean) {.importcpp: "SetCurve",
                                       header: "ChFiDS_Stripe.hxx".}
proc PCurve*(this: ChFiDS_Stripe; First: Standard_Boolean): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "PCurve", header: "ChFiDS_Stripe.hxx".}
proc ChangePCurve*(this: var ChFiDS_Stripe; First: Standard_Boolean): var handle[
    Geom2d_Curve] {.importcpp: "ChangePCurve", header: "ChFiDS_Stripe.hxx".}
proc Orientation*(this: ChFiDS_Stripe; OnS: Standard_Integer): TopAbs_Orientation {.
    noSideEffect, importcpp: "Orientation", header: "ChFiDS_Stripe.hxx".}
proc SetOrientation*(this: var ChFiDS_Stripe; Or: TopAbs_Orientation;
                    OnS: Standard_Integer) {.importcpp: "SetOrientation",
    header: "ChFiDS_Stripe.hxx".}
proc Orientation*(this: ChFiDS_Stripe; First: Standard_Boolean): TopAbs_Orientation {.
    noSideEffect, importcpp: "Orientation", header: "ChFiDS_Stripe.hxx".}
proc SetOrientation*(this: var ChFiDS_Stripe; Or: TopAbs_Orientation;
                    First: Standard_Boolean) {.importcpp: "SetOrientation",
    header: "ChFiDS_Stripe.hxx".}
proc IndexPoint*(this: ChFiDS_Stripe; First: Standard_Boolean; OnS: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "IndexPoint", header: "ChFiDS_Stripe.hxx".}
proc SetIndexPoint*(this: var ChFiDS_Stripe; Index: Standard_Integer;
                   First: Standard_Boolean; OnS: Standard_Integer) {.
    importcpp: "SetIndexPoint", header: "ChFiDS_Stripe.hxx".}
proc SolidIndex*(this: ChFiDS_Stripe): Standard_Integer {.noSideEffect,
    importcpp: "SolidIndex", header: "ChFiDS_Stripe.hxx".}
proc SetSolidIndex*(this: var ChFiDS_Stripe; Index: Standard_Integer) {.
    importcpp: "SetSolidIndex", header: "ChFiDS_Stripe.hxx".}
proc InDS*(this: var ChFiDS_Stripe; First: Standard_Boolean; Nb: Standard_Integer = 1) {.
    importcpp: "InDS", header: "ChFiDS_Stripe.hxx".}
proc IsInDS*(this: ChFiDS_Stripe; First: Standard_Boolean): Standard_Integer {.
    noSideEffect, importcpp: "IsInDS", header: "ChFiDS_Stripe.hxx".}
type
  ChFiDS_Stripebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ChFiDS_Stripe::get_type_name(@)",
                              header: "ChFiDS_Stripe.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ChFiDS_Stripe::get_type_descriptor(@)",
    header: "ChFiDS_Stripe.hxx".}
proc DynamicType*(this: ChFiDS_Stripe): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ChFiDS_Stripe.hxx".}