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

discard "forward decl of ChFiDS_Spine"
discard "forward decl of Geom2d_Curve"
discard "forward decl of ChFiDS_Stripe"
discard "forward decl of ChFiDS_Stripe"
type
  HandleChFiDS_Stripe* = Handle[ChFiDS_Stripe]

## ! Data characterising a band of fillet.

type
  ChFiDS_Stripe* {.importcpp: "ChFiDS_Stripe", header: "ChFiDS_Stripe.hxx", bycopy.} = object of StandardTransient


proc constructChFiDS_Stripe*(): ChFiDS_Stripe {.constructor,
    importcpp: "ChFiDS_Stripe(@)", header: "ChFiDS_Stripe.hxx".}
proc reset*(this: var ChFiDS_Stripe) {.importcpp: "Reset", header: "ChFiDS_Stripe.hxx".}
proc setOfSurfData*(this: ChFiDS_Stripe): Handle[ChFiDS_HData] {.noSideEffect,
    importcpp: "SetOfSurfData", header: "ChFiDS_Stripe.hxx".}
proc spine*(this: ChFiDS_Stripe): Handle[ChFiDS_Spine] {.noSideEffect,
    importcpp: "Spine", header: "ChFiDS_Stripe.hxx".}
proc orientationOnFace1*(this: ChFiDS_Stripe): TopAbsOrientation {.noSideEffect,
    importcpp: "OrientationOnFace1", header: "ChFiDS_Stripe.hxx".}
proc orientationOnFace2*(this: ChFiDS_Stripe): TopAbsOrientation {.noSideEffect,
    importcpp: "OrientationOnFace2", header: "ChFiDS_Stripe.hxx".}
proc choix*(this: ChFiDS_Stripe): int {.noSideEffect, importcpp: "Choix",
                                    header: "ChFiDS_Stripe.hxx".}
proc changeSetOfSurfData*(this: var ChFiDS_Stripe): var Handle[ChFiDS_HData] {.
    importcpp: "ChangeSetOfSurfData", header: "ChFiDS_Stripe.hxx".}
proc changeSpine*(this: var ChFiDS_Stripe): var Handle[ChFiDS_Spine] {.
    importcpp: "ChangeSpine", header: "ChFiDS_Stripe.hxx".}
proc orientationOnFace1*(this: var ChFiDS_Stripe; or1: TopAbsOrientation) {.
    importcpp: "OrientationOnFace1", header: "ChFiDS_Stripe.hxx".}
proc orientationOnFace2*(this: var ChFiDS_Stripe; or2: TopAbsOrientation) {.
    importcpp: "OrientationOnFace2", header: "ChFiDS_Stripe.hxx".}
proc choix*(this: var ChFiDS_Stripe; c: int) {.importcpp: "Choix",
    header: "ChFiDS_Stripe.hxx".}
proc firstParameters*(this: ChFiDS_Stripe; pdeb: var float; pfin: var float) {.
    noSideEffect, importcpp: "FirstParameters", header: "ChFiDS_Stripe.hxx".}
proc lastParameters*(this: ChFiDS_Stripe; pdeb: var float; pfin: var float) {.
    noSideEffect, importcpp: "LastParameters", header: "ChFiDS_Stripe.hxx".}
proc changeFirstParameters*(this: var ChFiDS_Stripe; pdeb: float; pfin: float) {.
    importcpp: "ChangeFirstParameters", header: "ChFiDS_Stripe.hxx".}
proc changeLastParameters*(this: var ChFiDS_Stripe; pdeb: float; pfin: float) {.
    importcpp: "ChangeLastParameters", header: "ChFiDS_Stripe.hxx".}
proc firstCurve*(this: ChFiDS_Stripe): int {.noSideEffect, importcpp: "FirstCurve",
    header: "ChFiDS_Stripe.hxx".}
proc lastCurve*(this: ChFiDS_Stripe): int {.noSideEffect, importcpp: "LastCurve",
                                        header: "ChFiDS_Stripe.hxx".}
proc changeFirstCurve*(this: var ChFiDS_Stripe; index: int) {.
    importcpp: "ChangeFirstCurve", header: "ChFiDS_Stripe.hxx".}
proc changeLastCurve*(this: var ChFiDS_Stripe; index: int) {.
    importcpp: "ChangeLastCurve", header: "ChFiDS_Stripe.hxx".}
proc firstPCurve*(this: ChFiDS_Stripe): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "FirstPCurve", header: "ChFiDS_Stripe.hxx".}
proc lastPCurve*(this: ChFiDS_Stripe): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "LastPCurve", header: "ChFiDS_Stripe.hxx".}
proc changeFirstPCurve*(this: var ChFiDS_Stripe): var Handle[Geom2dCurve] {.
    importcpp: "ChangeFirstPCurve", header: "ChFiDS_Stripe.hxx".}
proc changeLastPCurve*(this: var ChFiDS_Stripe): var Handle[Geom2dCurve] {.
    importcpp: "ChangeLastPCurve", header: "ChFiDS_Stripe.hxx".}
proc firstPCurveOrientation*(this: ChFiDS_Stripe): TopAbsOrientation {.noSideEffect,
    importcpp: "FirstPCurveOrientation", header: "ChFiDS_Stripe.hxx".}
proc lastPCurveOrientation*(this: ChFiDS_Stripe): TopAbsOrientation {.noSideEffect,
    importcpp: "LastPCurveOrientation", header: "ChFiDS_Stripe.hxx".}
proc firstPCurveOrientation*(this: var ChFiDS_Stripe; o: TopAbsOrientation) {.
    importcpp: "FirstPCurveOrientation", header: "ChFiDS_Stripe.hxx".}
proc lastPCurveOrientation*(this: var ChFiDS_Stripe; o: TopAbsOrientation) {.
    importcpp: "LastPCurveOrientation", header: "ChFiDS_Stripe.hxx".}
proc indexFirstPointOnS1*(this: ChFiDS_Stripe): int {.noSideEffect,
    importcpp: "IndexFirstPointOnS1", header: "ChFiDS_Stripe.hxx".}
proc indexFirstPointOnS2*(this: ChFiDS_Stripe): int {.noSideEffect,
    importcpp: "IndexFirstPointOnS2", header: "ChFiDS_Stripe.hxx".}
proc indexLastPointOnS1*(this: ChFiDS_Stripe): int {.noSideEffect,
    importcpp: "IndexLastPointOnS1", header: "ChFiDS_Stripe.hxx".}
proc indexLastPointOnS2*(this: ChFiDS_Stripe): int {.noSideEffect,
    importcpp: "IndexLastPointOnS2", header: "ChFiDS_Stripe.hxx".}
proc changeIndexFirstPointOnS1*(this: var ChFiDS_Stripe; index: int) {.
    importcpp: "ChangeIndexFirstPointOnS1", header: "ChFiDS_Stripe.hxx".}
proc changeIndexFirstPointOnS2*(this: var ChFiDS_Stripe; index: int) {.
    importcpp: "ChangeIndexFirstPointOnS2", header: "ChFiDS_Stripe.hxx".}
proc changeIndexLastPointOnS1*(this: var ChFiDS_Stripe; index: int) {.
    importcpp: "ChangeIndexLastPointOnS1", header: "ChFiDS_Stripe.hxx".}
proc changeIndexLastPointOnS2*(this: var ChFiDS_Stripe; index: int) {.
    importcpp: "ChangeIndexLastPointOnS2", header: "ChFiDS_Stripe.hxx".}
proc parameters*(this: ChFiDS_Stripe; first: bool; pdeb: var float; pfin: var float) {.
    noSideEffect, importcpp: "Parameters", header: "ChFiDS_Stripe.hxx".}
proc setParameters*(this: var ChFiDS_Stripe; first: bool; pdeb: float; pfin: float) {.
    importcpp: "SetParameters", header: "ChFiDS_Stripe.hxx".}
proc curve*(this: ChFiDS_Stripe; first: bool): int {.noSideEffect, importcpp: "Curve",
    header: "ChFiDS_Stripe.hxx".}
proc setCurve*(this: var ChFiDS_Stripe; index: int; first: bool) {.
    importcpp: "SetCurve", header: "ChFiDS_Stripe.hxx".}
proc pCurve*(this: ChFiDS_Stripe; first: bool): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "PCurve", header: "ChFiDS_Stripe.hxx".}
proc changePCurve*(this: var ChFiDS_Stripe; first: bool): var Handle[Geom2dCurve] {.
    importcpp: "ChangePCurve", header: "ChFiDS_Stripe.hxx".}
proc orientation*(this: ChFiDS_Stripe; onS: int): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "ChFiDS_Stripe.hxx".}
proc setOrientation*(this: var ChFiDS_Stripe; `or`: TopAbsOrientation; onS: int) {.
    importcpp: "SetOrientation", header: "ChFiDS_Stripe.hxx".}
proc orientation*(this: ChFiDS_Stripe; first: bool): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "ChFiDS_Stripe.hxx".}
proc setOrientation*(this: var ChFiDS_Stripe; `or`: TopAbsOrientation; first: bool) {.
    importcpp: "SetOrientation", header: "ChFiDS_Stripe.hxx".}
proc indexPoint*(this: ChFiDS_Stripe; first: bool; onS: int): int {.noSideEffect,
    importcpp: "IndexPoint", header: "ChFiDS_Stripe.hxx".}
proc setIndexPoint*(this: var ChFiDS_Stripe; index: int; first: bool; onS: int) {.
    importcpp: "SetIndexPoint", header: "ChFiDS_Stripe.hxx".}
proc solidIndex*(this: ChFiDS_Stripe): int {.noSideEffect, importcpp: "SolidIndex",
    header: "ChFiDS_Stripe.hxx".}
proc setSolidIndex*(this: var ChFiDS_Stripe; index: int) {.importcpp: "SetSolidIndex",
    header: "ChFiDS_Stripe.hxx".}
proc inDS*(this: var ChFiDS_Stripe; first: bool; nb: int = 1) {.importcpp: "InDS",
    header: "ChFiDS_Stripe.hxx".}
proc isInDS*(this: ChFiDS_Stripe; first: bool): int {.noSideEffect,
    importcpp: "IsInDS", header: "ChFiDS_Stripe.hxx".}
type
  ChFiDS_StripebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ChFiDS_Stripe::get_type_name(@)",
                            header: "ChFiDS_Stripe.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ChFiDS_Stripe::get_type_descriptor(@)",
    header: "ChFiDS_Stripe.hxx".}
proc dynamicType*(this: ChFiDS_Stripe): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ChFiDS_Stripe.hxx".}
