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
type
  HandleChFiDS_Stripe* = Handle[ChFiDS_Stripe]

## ! Data characterising a band of fillet.

type
  ChFiDS_Stripe* {.importcpp: "ChFiDS_Stripe", header: "ChFiDS_Stripe.hxx", bycopy.} = object of StandardTransient


proc newChFiDS_Stripe*(): ChFiDS_Stripe {.cdecl, constructor,
                                       importcpp: "ChFiDS_Stripe(@)",
                                       dynlib: tkfillet.}
proc reset*(this: var ChFiDS_Stripe) {.cdecl, importcpp: "Reset", dynlib: tkfillet.}
proc setOfSurfData*(this: ChFiDS_Stripe): Handle[ChFiDS_HData] {.noSideEffect, cdecl,
    importcpp: "SetOfSurfData", dynlib: tkfillet.}
proc spine*(this: ChFiDS_Stripe): Handle[ChFiDS_Spine] {.noSideEffect, cdecl,
    importcpp: "Spine", dynlib: tkfillet.}
proc orientationOnFace1*(this: ChFiDS_Stripe): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "OrientationOnFace1", dynlib: tkfillet.}
proc orientationOnFace2*(this: ChFiDS_Stripe): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "OrientationOnFace2", dynlib: tkfillet.}
proc choix*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl, importcpp: "Choix",
                                     dynlib: tkfillet.}
proc changeSetOfSurfData*(this: var ChFiDS_Stripe): var Handle[ChFiDS_HData] {.cdecl,
    importcpp: "ChangeSetOfSurfData", dynlib: tkfillet.}
proc changeSpine*(this: var ChFiDS_Stripe): var Handle[ChFiDS_Spine] {.cdecl,
    importcpp: "ChangeSpine", dynlib: tkfillet.}
proc orientationOnFace1*(this: var ChFiDS_Stripe; or1: TopAbsOrientation) {.cdecl,
    importcpp: "OrientationOnFace1", dynlib: tkfillet.}
proc orientationOnFace2*(this: var ChFiDS_Stripe; or2: TopAbsOrientation) {.cdecl,
    importcpp: "OrientationOnFace2", dynlib: tkfillet.}
proc choix*(this: var ChFiDS_Stripe; c: cint) {.cdecl, importcpp: "Choix",
    dynlib: tkfillet.}
proc firstParameters*(this: ChFiDS_Stripe; pdeb: var cfloat; pfin: var cfloat) {.
    noSideEffect, cdecl, importcpp: "FirstParameters", dynlib: tkfillet.}
proc lastParameters*(this: ChFiDS_Stripe; pdeb: var cfloat; pfin: var cfloat) {.
    noSideEffect, cdecl, importcpp: "LastParameters", dynlib: tkfillet.}
proc changeFirstParameters*(this: var ChFiDS_Stripe; pdeb: cfloat; pfin: cfloat) {.
    cdecl, importcpp: "ChangeFirstParameters", dynlib: tkfillet.}
proc changeLastParameters*(this: var ChFiDS_Stripe; pdeb: cfloat; pfin: cfloat) {.cdecl,
    importcpp: "ChangeLastParameters", dynlib: tkfillet.}
proc firstCurve*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl,
    importcpp: "FirstCurve", dynlib: tkfillet.}
proc lastCurve*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl,
    importcpp: "LastCurve", dynlib: tkfillet.}
proc changeFirstCurve*(this: var ChFiDS_Stripe; index: cint) {.cdecl,
    importcpp: "ChangeFirstCurve", dynlib: tkfillet.}
proc changeLastCurve*(this: var ChFiDS_Stripe; index: cint) {.cdecl,
    importcpp: "ChangeLastCurve", dynlib: tkfillet.}
proc firstPCurve*(this: ChFiDS_Stripe): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "FirstPCurve", dynlib: tkfillet.}
proc lastPCurve*(this: ChFiDS_Stripe): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "LastPCurve", dynlib: tkfillet.}
proc changeFirstPCurve*(this: var ChFiDS_Stripe): var Handle[Geom2dCurve] {.cdecl,
    importcpp: "ChangeFirstPCurve", dynlib: tkfillet.}
proc changeLastPCurve*(this: var ChFiDS_Stripe): var Handle[Geom2dCurve] {.cdecl,
    importcpp: "ChangeLastPCurve", dynlib: tkfillet.}
proc firstPCurveOrientation*(this: ChFiDS_Stripe): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "FirstPCurveOrientation", dynlib: tkfillet.}
proc lastPCurveOrientation*(this: ChFiDS_Stripe): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "LastPCurveOrientation", dynlib: tkfillet.}
proc firstPCurveOrientation*(this: var ChFiDS_Stripe; o: TopAbsOrientation) {.cdecl,
    importcpp: "FirstPCurveOrientation", dynlib: tkfillet.}
proc lastPCurveOrientation*(this: var ChFiDS_Stripe; o: TopAbsOrientation) {.cdecl,
    importcpp: "LastPCurveOrientation", dynlib: tkfillet.}
proc indexFirstPointOnS1*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl,
    importcpp: "IndexFirstPointOnS1", dynlib: tkfillet.}
proc indexFirstPointOnS2*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl,
    importcpp: "IndexFirstPointOnS2", dynlib: tkfillet.}
proc indexLastPointOnS1*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl,
    importcpp: "IndexLastPointOnS1", dynlib: tkfillet.}
proc indexLastPointOnS2*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl,
    importcpp: "IndexLastPointOnS2", dynlib: tkfillet.}
proc changeIndexFirstPointOnS1*(this: var ChFiDS_Stripe; index: cint) {.cdecl,
    importcpp: "ChangeIndexFirstPointOnS1", dynlib: tkfillet.}
proc changeIndexFirstPointOnS2*(this: var ChFiDS_Stripe; index: cint) {.cdecl,
    importcpp: "ChangeIndexFirstPointOnS2", dynlib: tkfillet.}
proc changeIndexLastPointOnS1*(this: var ChFiDS_Stripe; index: cint) {.cdecl,
    importcpp: "ChangeIndexLastPointOnS1", dynlib: tkfillet.}
proc changeIndexLastPointOnS2*(this: var ChFiDS_Stripe; index: cint) {.cdecl,
    importcpp: "ChangeIndexLastPointOnS2", dynlib: tkfillet.}
proc parameters*(this: ChFiDS_Stripe; first: bool; pdeb: var cfloat; pfin: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Parameters", dynlib: tkfillet.}
proc setParameters*(this: var ChFiDS_Stripe; first: bool; pdeb: cfloat; pfin: cfloat) {.
    cdecl, importcpp: "SetParameters", dynlib: tkfillet.}
proc curve*(this: ChFiDS_Stripe; first: bool): cint {.noSideEffect, cdecl,
    importcpp: "Curve", dynlib: tkfillet.}
proc setCurve*(this: var ChFiDS_Stripe; index: cint; first: bool) {.cdecl,
    importcpp: "SetCurve", dynlib: tkfillet.}
proc pCurve*(this: ChFiDS_Stripe; first: bool): Handle[Geom2dCurve] {.noSideEffect,
    cdecl, importcpp: "PCurve", dynlib: tkfillet.}
proc changePCurve*(this: var ChFiDS_Stripe; first: bool): var Handle[Geom2dCurve] {.
    cdecl, importcpp: "ChangePCurve", dynlib: tkfillet.}
proc orientation*(this: ChFiDS_Stripe; onS: cint): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "Orientation", dynlib: tkfillet.}
proc setOrientation*(this: var ChFiDS_Stripe; `or`: TopAbsOrientation; onS: cint) {.
    cdecl, importcpp: "SetOrientation", dynlib: tkfillet.}
proc orientation*(this: ChFiDS_Stripe; first: bool): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "Orientation", dynlib: tkfillet.}
proc setOrientation*(this: var ChFiDS_Stripe; `or`: TopAbsOrientation; first: bool) {.
    cdecl, importcpp: "SetOrientation", dynlib: tkfillet.}
proc indexPoint*(this: ChFiDS_Stripe; first: bool; onS: cint): cint {.noSideEffect,
    cdecl, importcpp: "IndexPoint", dynlib: tkfillet.}
proc setIndexPoint*(this: var ChFiDS_Stripe; index: cint; first: bool; onS: cint) {.cdecl,
    importcpp: "SetIndexPoint", dynlib: tkfillet.}
proc solidIndex*(this: ChFiDS_Stripe): cint {.noSideEffect, cdecl,
    importcpp: "SolidIndex", dynlib: tkfillet.}
proc setSolidIndex*(this: var ChFiDS_Stripe; index: cint) {.cdecl,
    importcpp: "SetSolidIndex", dynlib: tkfillet.}
proc inDS*(this: var ChFiDS_Stripe; first: bool; nb: cint = 1) {.cdecl, importcpp: "InDS",
    dynlib: tkfillet.}
proc isInDS*(this: ChFiDS_Stripe; first: bool): cint {.noSideEffect, cdecl,
    importcpp: "IsInDS", dynlib: tkfillet.}