import chfids_types

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




proc newChFiDS_Stripe*(): ChFiDS_Stripe {.cdecl, constructor,
                                       importcpp: "ChFiDS_Stripe(@)",
                                       header: "ChFiDS_Stripe.hxx".}
proc reset*(this: var ChFiDS_Stripe) {.cdecl, importcpp: "Reset", header: "ChFiDS_Stripe.hxx".}
proc setOfSurfData*(this: ChFiDS_Stripe): Handle[ChFiDS_HData] {.noSideEffect, cdecl,
    importcpp: "SetOfSurfData", header: "ChFiDS_Stripe.hxx".}
proc spine*(this: ChFiDS_Stripe): Handle[ChFiDS_Spine] {.noSideEffect, cdecl,
    importcpp: "Spine", header: "ChFiDS_Stripe.hxx".}
proc orientationOnFace1*(this: ChFiDS_Stripe): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "OrientationOnFace1", header: "ChFiDS_Stripe.hxx".}
proc orientationOnFace2*(this: ChFiDS_Stripe): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "OrientationOnFace2", header: "ChFiDS_Stripe.hxx".}
proc choix*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl, importcpp: "Choix",
                                     header: "ChFiDS_Stripe.hxx".}
proc changeSetOfSurfData*(this: var ChFiDS_Stripe): var Handle[ChFiDS_HData] {.cdecl,
    importcpp: "ChangeSetOfSurfData", header: "ChFiDS_Stripe.hxx".}
proc changeSpine*(this: var ChFiDS_Stripe): var Handle[ChFiDS_Spine] {.cdecl,
    importcpp: "ChangeSpine", header: "ChFiDS_Stripe.hxx".}
proc orientationOnFace1*(this: var ChFiDS_Stripe; or1: TopAbsOrientation) {.cdecl,
    importcpp: "OrientationOnFace1", header: "ChFiDS_Stripe.hxx".}
proc orientationOnFace2*(this: var ChFiDS_Stripe; or2: TopAbsOrientation) {.cdecl,
    importcpp: "OrientationOnFace2", header: "ChFiDS_Stripe.hxx".}
proc choix*(this: var ChFiDS_Stripe; c: cint) {.cdecl, importcpp: "Choix",
    header: "ChFiDS_Stripe.hxx".}
proc firstParameters*(this: ChFiDS_Stripe; pdeb: var cfloat; pfin: var cfloat) {.
    noSideEffect, cdecl, importcpp: "FirstParameters", header: "ChFiDS_Stripe.hxx".}
proc lastParameters*(this: ChFiDS_Stripe; pdeb: var cfloat; pfin: var cfloat) {.
    noSideEffect, cdecl, importcpp: "LastParameters", header: "ChFiDS_Stripe.hxx".}
proc changeFirstParameters*(this: var ChFiDS_Stripe; pdeb: cfloat; pfin: cfloat) {.
    cdecl, importcpp: "ChangeFirstParameters", header: "ChFiDS_Stripe.hxx".}
proc changeLastParameters*(this: var ChFiDS_Stripe; pdeb: cfloat; pfin: cfloat) {.cdecl,
    importcpp: "ChangeLastParameters", header: "ChFiDS_Stripe.hxx".}
proc firstCurve*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl,
    importcpp: "FirstCurve", header: "ChFiDS_Stripe.hxx".}
proc lastCurve*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl,
    importcpp: "LastCurve", header: "ChFiDS_Stripe.hxx".}
proc changeFirstCurve*(this: var ChFiDS_Stripe; index: cint) {.cdecl,
    importcpp: "ChangeFirstCurve", header: "ChFiDS_Stripe.hxx".}
proc changeLastCurve*(this: var ChFiDS_Stripe; index: cint) {.cdecl,
    importcpp: "ChangeLastCurve", header: "ChFiDS_Stripe.hxx".}
proc firstPCurve*(this: ChFiDS_Stripe): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "FirstPCurve", header: "ChFiDS_Stripe.hxx".}
proc lastPCurve*(this: ChFiDS_Stripe): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "LastPCurve", header: "ChFiDS_Stripe.hxx".}
proc changeFirstPCurve*(this: var ChFiDS_Stripe): var Handle[Geom2dCurve] {.cdecl,
    importcpp: "ChangeFirstPCurve", header: "ChFiDS_Stripe.hxx".}
proc changeLastPCurve*(this: var ChFiDS_Stripe): var Handle[Geom2dCurve] {.cdecl,
    importcpp: "ChangeLastPCurve", header: "ChFiDS_Stripe.hxx".}
proc firstPCurveOrientation*(this: ChFiDS_Stripe): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "FirstPCurveOrientation", header: "ChFiDS_Stripe.hxx".}
proc lastPCurveOrientation*(this: ChFiDS_Stripe): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "LastPCurveOrientation", header: "ChFiDS_Stripe.hxx".}
proc firstPCurveOrientation*(this: var ChFiDS_Stripe; o: TopAbsOrientation) {.cdecl,
    importcpp: "FirstPCurveOrientation", header: "ChFiDS_Stripe.hxx".}
proc lastPCurveOrientation*(this: var ChFiDS_Stripe; o: TopAbsOrientation) {.cdecl,
    importcpp: "LastPCurveOrientation", header: "ChFiDS_Stripe.hxx".}
proc indexFirstPointOnS1*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl,
    importcpp: "IndexFirstPointOnS1", header: "ChFiDS_Stripe.hxx".}
proc indexFirstPointOnS2*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl,
    importcpp: "IndexFirstPointOnS2", header: "ChFiDS_Stripe.hxx".}
proc indexLastPointOnS1*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl,
    importcpp: "IndexLastPointOnS1", header: "ChFiDS_Stripe.hxx".}
proc indexLastPointOnS2*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl,
    importcpp: "IndexLastPointOnS2", header: "ChFiDS_Stripe.hxx".}
proc changeIndexFirstPointOnS1*(this: var ChFiDS_Stripe; index: cint) {.cdecl,
    importcpp: "ChangeIndexFirstPointOnS1", header: "ChFiDS_Stripe.hxx".}
proc changeIndexFirstPointOnS2*(this: var ChFiDS_Stripe; index: cint) {.cdecl,
    importcpp: "ChangeIndexFirstPointOnS2", header: "ChFiDS_Stripe.hxx".}
proc changeIndexLastPointOnS1*(this: var ChFiDS_Stripe; index: cint) {.cdecl,
    importcpp: "ChangeIndexLastPointOnS1", header: "ChFiDS_Stripe.hxx".}
proc changeIndexLastPointOnS2*(this: var ChFiDS_Stripe; index: cint) {.cdecl,
    importcpp: "ChangeIndexLastPointOnS2", header: "ChFiDS_Stripe.hxx".}
proc parameters*(this: ChFiDS_Stripe; first: bool; pdeb: var cfloat; pfin: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Parameters", header: "ChFiDS_Stripe.hxx".}
proc setParameters*(this: var ChFiDS_Stripe; first: bool; pdeb: cfloat; pfin: cfloat) {.
    cdecl, importcpp: "SetParameters", header: "ChFiDS_Stripe.hxx".}
proc curve*(this: ChFiDS_Stripe; first: bool): cint {.noSideEffect, cdecl,
    importcpp: "Curve", header: "ChFiDS_Stripe.hxx".}
proc setCurve*(this: var ChFiDS_Stripe; index: cint; first: bool) {.cdecl,
    importcpp: "SetCurve", header: "ChFiDS_Stripe.hxx".}
proc pCurve*(this: ChFiDS_Stripe; first: bool): Handle[Geom2dCurve] {.noSideEffect,
    cdecl, importcpp: "PCurve", header: "ChFiDS_Stripe.hxx".}
proc changePCurve*(this: var ChFiDS_Stripe; first: bool): var Handle[Geom2dCurve] {.
    cdecl, importcpp: "ChangePCurve", header: "ChFiDS_Stripe.hxx".}
proc orientation*(this: ChFiDS_Stripe; onS: cint): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "Orientation", header: "ChFiDS_Stripe.hxx".}
proc setOrientation*(this: var ChFiDS_Stripe; `or`: TopAbsOrientation; onS: cint) {.
    cdecl, importcpp: "SetOrientation", header: "ChFiDS_Stripe.hxx".}
proc orientation*(this: ChFiDS_Stripe; first: bool): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "Orientation", header: "ChFiDS_Stripe.hxx".}
proc setOrientation*(this: var ChFiDS_Stripe; `or`: TopAbsOrientation; first: bool) {.
    cdecl, importcpp: "SetOrientation", header: "ChFiDS_Stripe.hxx".}
proc indexPoint*(this: ChFiDS_Stripe; first: bool; onS: cint): cint {.noSideEffect,
    cdecl, importcpp: "IndexPoint", header: "ChFiDS_Stripe.hxx".}
proc setIndexPoint*(this: var ChFiDS_Stripe; index: cint; first: bool; onS: cint) {.cdecl,
    importcpp: "SetIndexPoint", header: "ChFiDS_Stripe.hxx".}
proc solidIndex*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl,
    importcpp: "SolidIndex", header: "ChFiDS_Stripe.hxx".}
proc setSolidIndex*(this: var ChFiDS_Stripe; index: cint) {.cdecl,
    importcpp: "SetSolidIndex", header: "ChFiDS_Stripe.hxx".}
proc inDS*(this: var ChFiDS_Stripe; first: bool; nb: cint = 1) {.cdecl, importcpp: "InDS",
    header: "ChFiDS_Stripe.hxx".}
proc isInDS*(this: ChFiDS_Stripe; first: bool): cint {.noSideEffect, cdecl,
    importcpp: "IsInDS", header: "ChFiDS_Stripe.hxx".}
