##  Created on: 1991-08-09
##  Created by: Jean Claude VAUTHIER
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of math_Matrix"
type
  BSplCLib* {.importcpp: "BSplCLib", header: "BSplCLib.hxx", bycopy.} = object ## ! This routine searches the position of the real value theX
                                                                       ## ! in the
                                                                       ## monotonically
                                                                       ## increasing set of real values theArray using bisection
                                                                       ## algorithm.
                                                                       ## !
                                                                       ## ! If the given value is out of range or array values, algorithm returns either
                                                                       ## !
                                                                       ## theArray.Lower()-1 or
                                                                       ## theArray.Upper()+1 depending on theX position in the ordered set.
                                                                       ## !
                                                                       ## ! This routine is used to locate a knot value in a set of knots.


proc hunt*(theArray: TColStdArray1OfReal; theX: cfloat; theXPos: var cint) {.
    importcpp: "BSplCLib::Hunt(@)", header: "BSplCLib.hxx".}
proc firstUKnotIndex*(degree: cint; mults: TColStdArray1OfInteger): cint {.
    importcpp: "BSplCLib::FirstUKnotIndex(@)", header: "BSplCLib.hxx".}
proc lastUKnotIndex*(degree: cint; mults: TColStdArray1OfInteger): cint {.
    importcpp: "BSplCLib::LastUKnotIndex(@)", header: "BSplCLib.hxx".}
proc flatIndex*(degree: cint; index: cint; mults: TColStdArray1OfInteger;
               periodic: bool): cint {.importcpp: "BSplCLib::FlatIndex(@)",
                                    header: "BSplCLib.hxx".}
proc locateParameter*(degree: cint; knots: TColStdArray1OfReal;
                     mults: TColStdArray1OfInteger; u: cfloat; isPeriodic: bool;
                     fromK1: cint; toK2: cint; knotIndex: var cint; newU: var cfloat) {.
    importcpp: "BSplCLib::LocateParameter(@)", header: "BSplCLib.hxx".}
proc locateParameter*(degree: cint; knots: TColStdArray1OfReal; u: cfloat;
                     isPeriodic: bool; fromK1: cint; toK2: cint; knotIndex: var cint;
                     newU: var cfloat) {.importcpp: "BSplCLib::LocateParameter(@)",
                                      header: "BSplCLib.hxx".}
proc locateParameter*(degree: cint; knots: TColStdArray1OfReal;
                     mults: ptr TColStdArray1OfInteger; u: cfloat; periodic: bool;
                     index: var cint; newU: var cfloat) {.
    importcpp: "BSplCLib::LocateParameter(@)", header: "BSplCLib.hxx".}
proc maxKnotMult*(mults: TColStdArray1OfInteger; k1: cint; k2: cint): cint {.
    importcpp: "BSplCLib::MaxKnotMult(@)", header: "BSplCLib.hxx".}
proc minKnotMult*(mults: TColStdArray1OfInteger; k1: cint; k2: cint): cint {.
    importcpp: "BSplCLib::MinKnotMult(@)", header: "BSplCLib.hxx".}
proc nbPoles*(degree: cint; periodic: bool; mults: TColStdArray1OfInteger): cint {.
    importcpp: "BSplCLib::NbPoles(@)", header: "BSplCLib.hxx".}
proc knotSequenceLength*(mults: TColStdArray1OfInteger; degree: cint; periodic: bool): cint {.
    importcpp: "BSplCLib::KnotSequenceLength(@)", header: "BSplCLib.hxx".}
proc knotSequence*(knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                  knotSeq: var TColStdArray1OfReal; periodic: bool = false) {.
    importcpp: "BSplCLib::KnotSequence(@)", header: "BSplCLib.hxx".}
proc knotSequence*(knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                  degree: cint; periodic: bool; knotSeq: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::KnotSequence(@)", header: "BSplCLib.hxx".}
proc knotsLength*(knotSeq: TColStdArray1OfReal; periodic: bool = false): cint {.
    importcpp: "BSplCLib::KnotsLength(@)", header: "BSplCLib.hxx".}
proc knots*(knotSeq: TColStdArray1OfReal; knots: var TColStdArray1OfReal;
           mults: var TColStdArray1OfInteger; periodic: bool = false) {.
    importcpp: "BSplCLib::Knots(@)", header: "BSplCLib.hxx".}
proc knotForm*(knots: TColStdArray1OfReal; fromK1: cint; toK2: cint): BSplCLibKnotDistribution {.
    importcpp: "BSplCLib::KnotForm(@)", header: "BSplCLib.hxx".}
proc multForm*(mults: TColStdArray1OfInteger; fromK1: cint; toK2: cint): BSplCLibMultDistribution {.
    importcpp: "BSplCLib::MultForm(@)", header: "BSplCLib.hxx".}
proc knotAnalysis*(degree: cint; periodic: bool; cKnots: TColStdArray1OfReal;
                  cMults: TColStdArray1OfInteger;
                  knotForm: var GeomAbsBSplKnotDistribution; maxKnotMult: var cint) {.
    importcpp: "BSplCLib::KnotAnalysis(@)", header: "BSplCLib.hxx".}
proc reparametrize*(u1: cfloat; u2: cfloat; knots: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Reparametrize(@)", header: "BSplCLib.hxx".}
proc reverse*(knots: var TColStdArray1OfReal) {.importcpp: "BSplCLib::Reverse(@)",
    header: "BSplCLib.hxx".}
proc reverse*(mults: var TColStdArray1OfInteger) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc reverse*(poles: var TColgpArray1OfPnt; last: cint) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc reverse*(poles: var TColgpArray1OfPnt2d; last: cint) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc reverse*(weights: var TColStdArray1OfReal; last: cint) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc isRational*(weights: TColStdArray1OfReal; i1: cint; i2: cint;
                epsilon: cfloat = 0.0): bool {.importcpp: "BSplCLib::IsRational(@)",
    header: "BSplCLib.hxx".}
proc maxDegree*(): cint {.importcpp: "BSplCLib::MaxDegree(@)", header: "BSplCLib.hxx".}
proc eval*(u: cfloat; degree: cint; knots: var cfloat; dimension: cint; poles: var cfloat) {.
    importcpp: "BSplCLib::Eval(@)", header: "BSplCLib.hxx".}
proc boorScheme*(u: cfloat; degree: cint; knots: var cfloat; dimension: cint;
                poles: var cfloat; depth: cint; length: cint) {.
    importcpp: "BSplCLib::BoorScheme(@)", header: "BSplCLib.hxx".}
proc antiBoorScheme*(u: cfloat; degree: cint; knots: var cfloat; dimension: cint;
                    poles: var cfloat; depth: cint; length: cint; tolerance: cfloat): bool {.
    importcpp: "BSplCLib::AntiBoorScheme(@)", header: "BSplCLib.hxx".}
proc derivative*(degree: cint; knots: var cfloat; dimension: cint; length: cint;
                order: cint; poles: var cfloat) {.
    importcpp: "BSplCLib::Derivative(@)", header: "BSplCLib.hxx".}
proc bohm*(u: cfloat; degree: cint; n: cint; knots: var cfloat; dimension: cint;
          poles: var cfloat) {.importcpp: "BSplCLib::Bohm(@)", header: "BSplCLib.hxx".}
proc noWeights*(): ptr TColStdArray1OfReal {.importcpp: "BSplCLib::NoWeights(@)",
    header: "BSplCLib.hxx".}
proc noMults*(): ptr TColStdArray1OfInteger {.importcpp: "BSplCLib::NoMults(@)",
    header: "BSplCLib.hxx".}
proc buildKnots*(degree: cint; index: cint; periodic: bool; knots: TColStdArray1OfReal;
                mults: ptr TColStdArray1OfInteger; lk: var cfloat) {.
    importcpp: "BSplCLib::BuildKnots(@)", header: "BSplCLib.hxx".}
proc poleIndex*(degree: cint; index: cint; periodic: bool;
               mults: TColStdArray1OfInteger): cint {.
    importcpp: "BSplCLib::PoleIndex(@)", header: "BSplCLib.hxx".}
proc buildEval*(degree: cint; index: cint; poles: TColStdArray1OfReal;
               weights: ptr TColStdArray1OfReal; lp: var cfloat) {.
    importcpp: "BSplCLib::BuildEval(@)", header: "BSplCLib.hxx".}
proc buildEval*(degree: cint; index: cint; poles: TColgpArray1OfPnt;
               weights: ptr TColStdArray1OfReal; lp: var cfloat) {.
    importcpp: "BSplCLib::BuildEval(@)", header: "BSplCLib.hxx".}
proc buildEval*(degree: cint; index: cint; poles: TColgpArray1OfPnt2d;
               weights: ptr TColStdArray1OfReal; lp: var cfloat) {.
    importcpp: "BSplCLib::BuildEval(@)", header: "BSplCLib.hxx".}
proc buildBoor*(index: cint; length: cint; dimension: cint; poles: TColStdArray1OfReal;
               lp: var cfloat) {.importcpp: "BSplCLib::BuildBoor(@)",
                              header: "BSplCLib.hxx".}
proc boorIndex*(index: cint; length: cint; depth: cint): cint {.
    importcpp: "BSplCLib::BoorIndex(@)", header: "BSplCLib.hxx".}
proc getPole*(index: cint; length: cint; depth: cint; dimension: cint;
             locPoles: var cfloat; position: var cint; pole: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::GetPole(@)", header: "BSplCLib.hxx".}
proc prepareInsertKnots*(degree: cint; periodic: bool; knots: TColStdArray1OfReal;
                        mults: TColStdArray1OfInteger;
                        addKnots: TColStdArray1OfReal;
                        addMults: ptr TColStdArray1OfInteger; nbPoles: var cint;
                        nbKnots: var cint; epsilon: cfloat; add: bool = true): bool {.
    importcpp: "BSplCLib::PrepareInsertKnots(@)", header: "BSplCLib.hxx".}
proc insertKnots*(degree: cint; periodic: bool; dimension: cint;
                 poles: TColStdArray1OfReal; knots: TColStdArray1OfReal;
                 mults: TColStdArray1OfInteger; addKnots: TColStdArray1OfReal;
                 addMults: ptr TColStdArray1OfInteger;
                 newPoles: var TColStdArray1OfReal;
                 newKnots: var TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger; epsilon: cfloat;
                 add: bool = true) {.importcpp: "BSplCLib::InsertKnots(@)",
                                 header: "BSplCLib.hxx".}
proc insertKnots*(degree: cint; periodic: bool; poles: TColgpArray1OfPnt;
                 weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
                 mults: TColStdArray1OfInteger; addKnots: TColStdArray1OfReal;
                 addMults: ptr TColStdArray1OfInteger;
                 newPoles: var TColgpArray1OfPnt;
                 newWeights: ptr TColStdArray1OfReal;
                 newKnots: var TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger; epsilon: cfloat;
                 add: bool = true) {.importcpp: "BSplCLib::InsertKnots(@)",
                                 header: "BSplCLib.hxx".}
proc insertKnots*(degree: cint; periodic: bool; poles: TColgpArray1OfPnt2d;
                 weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
                 mults: TColStdArray1OfInteger; addKnots: TColStdArray1OfReal;
                 addMults: ptr TColStdArray1OfInteger;
                 newPoles: var TColgpArray1OfPnt2d;
                 newWeights: ptr TColStdArray1OfReal;
                 newKnots: var TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger; epsilon: cfloat;
                 add: bool = true) {.importcpp: "BSplCLib::InsertKnots(@)",
                                 header: "BSplCLib.hxx".}
proc insertKnot*(uIndex: cint; u: cfloat; uMult: cint; degree: cint; periodic: bool;
                poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                newPoles: var TColgpArray1OfPnt;
                newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::InsertKnot(@)", header: "BSplCLib.hxx".}
proc insertKnot*(uIndex: cint; u: cfloat; uMult: cint; degree: cint; periodic: bool;
                poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
                knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                newPoles: var TColgpArray1OfPnt2d;
                newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::InsertKnot(@)", header: "BSplCLib.hxx".}
proc raiseMultiplicity*(knotIndex: cint; mult: cint; degree: cint; periodic: bool;
                       poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                       knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                       newPoles: var TColgpArray1OfPnt;
                       newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::RaiseMultiplicity(@)", header: "BSplCLib.hxx".}
proc raiseMultiplicity*(knotIndex: cint; mult: cint; degree: cint; periodic: bool;
                       poles: TColgpArray1OfPnt2d;
                       weights: ptr TColStdArray1OfReal;
                       knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                       newPoles: var TColgpArray1OfPnt2d;
                       newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::RaiseMultiplicity(@)", header: "BSplCLib.hxx".}
proc removeKnot*(index: cint; mult: cint; degree: cint; periodic: bool; dimension: cint;
                poles: TColStdArray1OfReal; knots: TColStdArray1OfReal;
                mults: TColStdArray1OfInteger; newPoles: var TColStdArray1OfReal;
                newKnots: var TColStdArray1OfReal;
                newMults: var TColStdArray1OfInteger; tolerance: cfloat): bool {.
    importcpp: "BSplCLib::RemoveKnot(@)", header: "BSplCLib.hxx".}
proc removeKnot*(index: cint; mult: cint; degree: cint; periodic: bool;
                poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                newPoles: var TColgpArray1OfPnt;
                newWeights: ptr TColStdArray1OfReal;
                newKnots: var TColStdArray1OfReal;
                newMults: var TColStdArray1OfInteger; tolerance: cfloat): bool {.
    importcpp: "BSplCLib::RemoveKnot(@)", header: "BSplCLib.hxx".}
proc removeKnot*(index: cint; mult: cint; degree: cint; periodic: bool;
                poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
                knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                newPoles: var TColgpArray1OfPnt2d;
                newWeights: ptr TColStdArray1OfReal;
                newKnots: var TColStdArray1OfReal;
                newMults: var TColStdArray1OfInteger; tolerance: cfloat): bool {.
    importcpp: "BSplCLib::RemoveKnot(@)", header: "BSplCLib.hxx".}
proc increaseDegreeCountKnots*(degree: cint; newDegree: cint; periodic: bool;
                              mults: TColStdArray1OfInteger): cint {.
    importcpp: "BSplCLib::IncreaseDegreeCountKnots(@)", header: "BSplCLib.hxx".}
proc increaseDegree*(degree: cint; newDegree: cint; periodic: bool; dimension: cint;
                    poles: TColStdArray1OfReal; knots: TColStdArray1OfReal;
                    mults: TColStdArray1OfInteger;
                    newPoles: var TColStdArray1OfReal;
                    newKnots: var TColStdArray1OfReal;
                    newMults: var TColStdArray1OfInteger) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc increaseDegree*(degree: cint; newDegree: cint; periodic: bool;
                    poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                    knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                    newPoles: var TColgpArray1OfPnt;
                    newWeights: ptr TColStdArray1OfReal;
                    newKnots: var TColStdArray1OfReal;
                    newMults: var TColStdArray1OfInteger) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc increaseDegree*(degree: cint; newDegree: cint; periodic: bool;
                    poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
                    knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                    newPoles: var TColgpArray1OfPnt2d;
                    newWeights: ptr TColStdArray1OfReal;
                    newKnots: var TColStdArray1OfReal;
                    newMults: var TColStdArray1OfInteger) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc increaseDegree*(newDegree: cint; poles: TColgpArray1OfPnt;
                    weights: ptr TColStdArray1OfReal;
                    newPoles: var TColgpArray1OfPnt;
                    newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc increaseDegree*(newDegree: cint; poles: TColgpArray1OfPnt2d;
                    weights: ptr TColStdArray1OfReal;
                    newPoles: var TColgpArray1OfPnt2d;
                    newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc prepareUnperiodize*(degree: cint; mults: TColStdArray1OfInteger;
                        nbKnots: var cint; nbPoles: var cint) {.
    importcpp: "BSplCLib::PrepareUnperiodize(@)", header: "BSplCLib.hxx".}
proc unperiodize*(degree: cint; dimension: cint; mults: TColStdArray1OfInteger;
                 knots: TColStdArray1OfReal; poles: TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger;
                 newKnots: var TColStdArray1OfReal;
                 newPoles: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Unperiodize(@)", header: "BSplCLib.hxx".}
proc unperiodize*(degree: cint; mults: TColStdArray1OfInteger;
                 knots: TColStdArray1OfReal; poles: TColgpArray1OfPnt;
                 weights: ptr TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger;
                 newKnots: var TColStdArray1OfReal;
                 newPoles: var TColgpArray1OfPnt;
                 newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Unperiodize(@)", header: "BSplCLib.hxx".}
proc unperiodize*(degree: cint; mults: TColStdArray1OfInteger;
                 knots: TColStdArray1OfReal; poles: TColgpArray1OfPnt2d;
                 weights: ptr TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger;
                 newKnots: var TColStdArray1OfReal;
                 newPoles: var TColgpArray1OfPnt2d;
                 newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Unperiodize(@)", header: "BSplCLib.hxx".}
proc prepareTrimming*(degree: cint; periodic: bool; knots: TColStdArray1OfReal;
                     mults: TColStdArray1OfInteger; u1: cfloat; u2: cfloat;
                     nbKnots: var cint; nbPoles: var cint) {.
    importcpp: "BSplCLib::PrepareTrimming(@)", header: "BSplCLib.hxx".}
proc trimming*(degree: cint; periodic: bool; dimension: cint;
              knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
              poles: TColStdArray1OfReal; u1: cfloat; u2: cfloat;
              newKnots: var TColStdArray1OfReal;
              newMults: var TColStdArray1OfInteger;
              newPoles: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Trimming(@)", header: "BSplCLib.hxx".}
proc trimming*(degree: cint; periodic: bool; knots: TColStdArray1OfReal;
              mults: TColStdArray1OfInteger; poles: TColgpArray1OfPnt;
              weights: ptr TColStdArray1OfReal; u1: cfloat; u2: cfloat;
              newKnots: var TColStdArray1OfReal;
              newMults: var TColStdArray1OfInteger;
              newPoles: var TColgpArray1OfPnt; newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Trimming(@)", header: "BSplCLib.hxx".}
proc trimming*(degree: cint; periodic: bool; knots: TColStdArray1OfReal;
              mults: TColStdArray1OfInteger; poles: TColgpArray1OfPnt2d;
              weights: ptr TColStdArray1OfReal; u1: cfloat; u2: cfloat;
              newKnots: var TColStdArray1OfReal;
              newMults: var TColStdArray1OfInteger;
              newPoles: var TColgpArray1OfPnt2d;
              newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Trimming(@)", header: "BSplCLib.hxx".}
proc d0*(u: cfloat; index: cint; degree: cint; periodic: bool;
        poles: TColStdArray1OfReal; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; p: var cfloat) {.
    importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc d0*(u: cfloat; index: cint; degree: cint; periodic: bool; poles: TColgpArray1OfPnt;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var Pnt) {.importcpp: "BSplCLib::D0(@)",
    header: "BSplCLib.hxx".}
proc d0*(u: cfloat; uIndex: cint; degree: cint; periodic: bool;
        poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; p: var Pnt2d) {.
    importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc d0*(u: cfloat; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
        p: var Pnt) {.importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc d0*(u: cfloat; poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
        p: var Pnt2d) {.importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc d1*(u: cfloat; index: cint; degree: cint; periodic: bool;
        poles: TColStdArray1OfReal; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; p: var cfloat;
        v: var cfloat) {.importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc d1*(u: cfloat; index: cint; degree: cint; periodic: bool; poles: TColgpArray1OfPnt;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var Pnt; v: var Vec) {.
    importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc d1*(u: cfloat; uIndex: cint; degree: cint; periodic: bool;
        poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; p: var Pnt2d;
        v: var Vec2d) {.importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc d1*(u: cfloat; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
        p: var Pnt; v: var Vec) {.importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc d1*(u: cfloat; poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
        p: var Pnt2d; v: var Vec2d) {.importcpp: "BSplCLib::D1(@)",
                                header: "BSplCLib.hxx".}
proc d2*(u: cfloat; index: cint; degree: cint; periodic: bool;
        poles: TColStdArray1OfReal; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; p: var cfloat;
        v1: var cfloat; v2: var cfloat) {.importcpp: "BSplCLib::D2(@)",
                                    header: "BSplCLib.hxx".}
proc d2*(u: cfloat; index: cint; degree: cint; periodic: bool; poles: TColgpArray1OfPnt;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "BSplCLib::D2(@)", header: "BSplCLib.hxx".}
proc d2*(u: cfloat; uIndex: cint; degree: cint; periodic: bool;
        poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; p: var Pnt2d;
        v1: var Vec2d; v2: var Vec2d) {.importcpp: "BSplCLib::D2(@)",
                                  header: "BSplCLib.hxx".}
proc d2*(u: cfloat; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
        p: var Pnt; v1: var Vec; v2: var Vec) {.importcpp: "BSplCLib::D2(@)",
                                       header: "BSplCLib.hxx".}
proc d2*(u: cfloat; poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
        p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.importcpp: "BSplCLib::D2(@)",
    header: "BSplCLib.hxx".}
proc d3*(u: cfloat; index: cint; degree: cint; periodic: bool;
        poles: TColStdArray1OfReal; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; p: var cfloat;
        v1: var cfloat; v2: var cfloat; v3: var cfloat) {.importcpp: "BSplCLib::D3(@)",
    header: "BSplCLib.hxx".}
proc d3*(u: cfloat; index: cint; degree: cint; periodic: bool; poles: TColgpArray1OfPnt;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "BSplCLib::D3(@)", header: "BSplCLib.hxx".}
proc d3*(u: cfloat; uIndex: cint; degree: cint; periodic: bool;
        poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; p: var Pnt2d;
        v1: var Vec2d; v2: var Vec2d; v3: var Vec2d) {.importcpp: "BSplCLib::D3(@)",
    header: "BSplCLib.hxx".}
proc d3*(u: cfloat; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
        p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.importcpp: "BSplCLib::D3(@)",
    header: "BSplCLib.hxx".}
proc d3*(u: cfloat; poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
        p: var Pnt2d; v1: var Vec2d; v2: var Vec2d; v3: var Vec2d) {.
    importcpp: "BSplCLib::D3(@)", header: "BSplCLib.hxx".}
proc dn*(u: cfloat; n: cint; index: cint; degree: cint; periodic: bool;
        poles: TColStdArray1OfReal; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; vn: var cfloat) {.
    importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc dn*(u: cfloat; n: cint; index: cint; degree: cint; periodic: bool;
        poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; vn: var Vec) {.
    importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc dn*(u: cfloat; n: cint; uIndex: cint; degree: cint; periodic: bool;
        poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; v: var Vec2d) {.
    importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc dn*(u: cfloat; n: cint; poles: TColgpArray1OfPnt; weights: TColStdArray1OfReal;
        p: var Pnt; vn: var Vec) {.importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc dn*(u: cfloat; n: cint; poles: TColgpArray1OfPnt2d; weights: TColStdArray1OfReal;
        p: var Pnt2d; vn: var Vec2d) {.importcpp: "BSplCLib::DN(@)",
                                 header: "BSplCLib.hxx".}
proc evalBsplineBasis*(derivativeOrder: cint; order: cint;
                      flatKnots: TColStdArray1OfReal; parameter: cfloat;
                      firstNonZeroBsplineIndex: var cint;
                      bsplineBasis: var MathMatrix; isPeriodic: bool = false): cint {.
    importcpp: "BSplCLib::EvalBsplineBasis(@)", header: "BSplCLib.hxx".}
proc buildBSpMatrix*(parameters: TColStdArray1OfReal;
                    orderArray: TColStdArray1OfInteger;
                    flatKnots: TColStdArray1OfReal; degree: cint;
                    matrix: var MathMatrix; upperBandWidth: var cint;
                    lowerBandWidth: var cint): cint {.
    importcpp: "BSplCLib::BuildBSpMatrix(@)", header: "BSplCLib.hxx".}
proc factorBandedMatrix*(matrix: var MathMatrix; upperBandWidth: cint;
                        lowerBandWidth: cint; pivotIndexProblem: var cint): cint {.
    importcpp: "BSplCLib::FactorBandedMatrix(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: cint;
                       lowerBandWidth: cint; arrayDimension: cint; array: var cfloat): cint {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: cint;
                       lowerBandWidth: cint; array: var TColgpArray1OfPnt2d): cint {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: cint;
                       lowerBandWidth: cint; array: var TColgpArray1OfPnt): cint {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: cint;
                       lowerBandWidth: cint; homogenousFlag: bool;
                       arrayDimension: cint; array: var cfloat; weights: var cfloat): cint {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: cint;
                       lowerBandWidth: cint; homogenousFlag: bool;
                       array: var TColgpArray1OfPnt2d;
                       weights: var TColStdArray1OfReal): cint {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: cint;
                       lowerBandWidth: cint; homogeneousFlag: bool;
                       array: var TColgpArray1OfPnt;
                       weights: var TColStdArray1OfReal): cint {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc mergeBSplineKnots*(tolerance: cfloat; startValue: cfloat; endValue: cfloat;
                       degree1: cint; knots1: TColStdArray1OfReal;
                       mults1: TColStdArray1OfInteger; degree2: cint;
                       knots2: TColStdArray1OfReal;
                       mults2: TColStdArray1OfInteger; numPoles: var cint;
                       newKnots: var Handle[TColStdHArray1OfReal];
                       newMults: var Handle[TColStdHArray1OfInteger]) {.
    importcpp: "BSplCLib::MergeBSplineKnots(@)", header: "BSplCLib.hxx".}
proc functionReparameterise*(function: BSplCLibEvaluatorFunction;
                            bSplineDegree: cint;
                            bSplineFlatKnots: TColStdArray1OfReal;
                            polesDimension: cint; poles: var cfloat;
                            flatKnots: TColStdArray1OfReal; newDegree: cint;
                            newPoles: var cfloat; theStatus: var cint) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc functionReparameterise*(function: BSplCLibEvaluatorFunction;
                            bSplineDegree: cint;
                            bSplineFlatKnots: TColStdArray1OfReal;
                            poles: TColStdArray1OfReal;
                            flatKnots: TColStdArray1OfReal; newDegree: cint;
                            newPoles: var TColStdArray1OfReal; theStatus: var cint) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc functionReparameterise*(function: BSplCLibEvaluatorFunction;
                            bSplineDegree: cint;
                            bSplineFlatKnots: TColStdArray1OfReal;
                            poles: TColgpArray1OfPnt;
                            flatKnots: TColStdArray1OfReal; newDegree: cint;
                            newPoles: var TColgpArray1OfPnt; theStatus: var cint) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc functionReparameterise*(function: BSplCLibEvaluatorFunction;
                            bSplineDegree: cint;
                            bSplineFlatKnots: TColStdArray1OfReal;
                            poles: TColgpArray1OfPnt2d;
                            flatKnots: TColStdArray1OfReal; newDegree: cint;
                            newPoles: var TColgpArray1OfPnt2d; theStatus: var cint) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc functionMultiply*(function: BSplCLibEvaluatorFunction; bSplineDegree: cint;
                      bSplineFlatKnots: TColStdArray1OfReal; polesDimension: cint;
                      poles: var cfloat; flatKnots: TColStdArray1OfReal;
                      newDegree: cint; newPoles: var cfloat; theStatus: var cint) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc functionMultiply*(function: BSplCLibEvaluatorFunction; bSplineDegree: cint;
                      bSplineFlatKnots: TColStdArray1OfReal;
                      poles: TColStdArray1OfReal; flatKnots: TColStdArray1OfReal;
                      newDegree: cint; newPoles: var TColStdArray1OfReal;
                      theStatus: var cint) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc functionMultiply*(function: BSplCLibEvaluatorFunction; bSplineDegree: cint;
                      bSplineFlatKnots: TColStdArray1OfReal;
                      poles: TColgpArray1OfPnt2d; flatKnots: TColStdArray1OfReal;
                      newDegree: cint; newPoles: var TColgpArray1OfPnt2d;
                      theStatus: var cint) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc functionMultiply*(function: BSplCLibEvaluatorFunction; bSplineDegree: cint;
                      bSplineFlatKnots: TColStdArray1OfReal;
                      poles: TColgpArray1OfPnt; flatKnots: TColStdArray1OfReal;
                      newDegree: cint; newPoles: var TColgpArray1OfPnt;
                      theStatus: var cint) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc eval*(u: cfloat; periodicFlag: bool; derivativeRequest: cint;
          extrapMode: var cint; degree: cint; flatKnots: TColStdArray1OfReal;
          arrayDimension: cint; poles: var cfloat; result: var cfloat) {.
    importcpp: "BSplCLib::Eval(@)", header: "BSplCLib.hxx".}
proc eval*(u: cfloat; periodicFlag: bool; derivativeRequest: cint;
          extrapMode: var cint; degree: cint; flatKnots: TColStdArray1OfReal;
          arrayDimension: cint; poles: var cfloat; weights: var cfloat;
          polesResult: var cfloat; weightsResult: var cfloat) {.
    importcpp: "BSplCLib::Eval(@)", header: "BSplCLib.hxx".}
proc eval*(u: cfloat; periodicFlag: bool; homogeneousFlag: bool; extrapMode: var cint;
          degree: cint; flatKnots: TColStdArray1OfReal; poles: TColgpArray1OfPnt;
          weights: TColStdArray1OfReal; point: var Pnt; weight: var cfloat) {.
    importcpp: "BSplCLib::Eval(@)", header: "BSplCLib.hxx".}
proc eval*(u: cfloat; periodicFlag: bool; homogeneousFlag: bool; extrapMode: var cint;
          degree: cint; flatKnots: TColStdArray1OfReal; poles: TColgpArray1OfPnt2d;
          weights: TColStdArray1OfReal; point: var Pnt2d; weight: var cfloat) {.
    importcpp: "BSplCLib::Eval(@)", header: "BSplCLib.hxx".}
proc tangExtendToConstraint*(flatKnots: TColStdArray1OfReal; c1Coefficient: cfloat;
                            numPoles: cint; poles: var cfloat; dimension: cint;
                            degree: cint; constraintPoint: TColStdArray1OfReal;
                            continuity: cint; after: bool; nbPolesResult: var cint;
                            nbKnotsRsult: var cint; knotsResult: var cfloat;
                            polesResult: var cfloat) {.
    importcpp: "BSplCLib::TangExtendToConstraint(@)", header: "BSplCLib.hxx".}
proc cacheD0*(u: cfloat; degree: cint; cacheParameter: cfloat; spanLenght: cfloat;
             poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt) {.importcpp: "BSplCLib::CacheD0(@)",
                            header: "BSplCLib.hxx".}
proc cacheD0*(u: cfloat; degree: cint; cacheParameter: cfloat; spanLenght: cfloat;
             poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
             point: var Pnt2d) {.importcpp: "BSplCLib::CacheD0(@)",
                              header: "BSplCLib.hxx".}
proc coefsD0*(u: cfloat; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt) {.importcpp: "BSplCLib::CoefsD0(@)",
                            header: "BSplCLib.hxx".}
proc coefsD0*(u: cfloat; poles: TColgpArray1OfPnt2d;
             weights: ptr TColStdArray1OfReal; point: var Pnt2d) {.
    importcpp: "BSplCLib::CoefsD0(@)", header: "BSplCLib.hxx".}
proc cacheD1*(u: cfloat; degree: cint; cacheParameter: cfloat; spanLenght: cfloat;
             poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt; vec: var Vec) {.importcpp: "BSplCLib::CacheD1(@)",
                                       header: "BSplCLib.hxx".}
proc cacheD1*(u: cfloat; degree: cint; cacheParameter: cfloat; spanLenght: cfloat;
             poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
             point: var Pnt2d; vec: var Vec2d) {.importcpp: "BSplCLib::CacheD1(@)",
    header: "BSplCLib.hxx".}
proc coefsD1*(u: cfloat; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt; vec: var Vec) {.importcpp: "BSplCLib::CoefsD1(@)",
                                       header: "BSplCLib.hxx".}
proc coefsD1*(u: cfloat; poles: TColgpArray1OfPnt2d;
             weights: ptr TColStdArray1OfReal; point: var Pnt2d; vec: var Vec2d) {.
    importcpp: "BSplCLib::CoefsD1(@)", header: "BSplCLib.hxx".}
proc cacheD2*(u: cfloat; degree: cint; cacheParameter: cfloat; spanLenght: cfloat;
             poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt; vec1: var Vec; vec2: var Vec) {.
    importcpp: "BSplCLib::CacheD2(@)", header: "BSplCLib.hxx".}
proc cacheD2*(u: cfloat; degree: cint; cacheParameter: cfloat; spanLenght: cfloat;
             poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
             point: var Pnt2d; vec1: var Vec2d; vec2: var Vec2d) {.
    importcpp: "BSplCLib::CacheD2(@)", header: "BSplCLib.hxx".}
proc coefsD2*(u: cfloat; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt; vec1: var Vec; vec2: var Vec) {.
    importcpp: "BSplCLib::CoefsD2(@)", header: "BSplCLib.hxx".}
proc coefsD2*(u: cfloat; poles: TColgpArray1OfPnt2d;
             weights: ptr TColStdArray1OfReal; point: var Pnt2d; vec1: var Vec2d;
             vec2: var Vec2d) {.importcpp: "BSplCLib::CoefsD2(@)",
                             header: "BSplCLib.hxx".}
proc cacheD3*(u: cfloat; degree: cint; cacheParameter: cfloat; spanLenght: cfloat;
             poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt; vec1: var Vec; vec2: var Vec; vec3: var Vec) {.
    importcpp: "BSplCLib::CacheD3(@)", header: "BSplCLib.hxx".}
proc cacheD3*(u: cfloat; degree: cint; cacheParameter: cfloat; spanLenght: cfloat;
             poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
             point: var Pnt2d; vec1: var Vec2d; vec2: var Vec2d; vec3: var Vec2d) {.
    importcpp: "BSplCLib::CacheD3(@)", header: "BSplCLib.hxx".}
proc coefsD3*(u: cfloat; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt; vec1: var Vec; vec2: var Vec; vec3: var Vec) {.
    importcpp: "BSplCLib::CoefsD3(@)", header: "BSplCLib.hxx".}
proc coefsD3*(u: cfloat; poles: TColgpArray1OfPnt2d;
             weights: ptr TColStdArray1OfReal; point: var Pnt2d; vec1: var Vec2d;
             vec2: var Vec2d; vec3: var Vec2d) {.importcpp: "BSplCLib::CoefsD3(@)",
    header: "BSplCLib.hxx".}
proc buildCache*(u: cfloat; inverseOfSpanDomain: cfloat; periodicFlag: bool;
                degree: cint; flatKnots: TColStdArray1OfReal;
                poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                cachePoles: var TColgpArray1OfPnt;
                cacheWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::BuildCache(@)", header: "BSplCLib.hxx".}
proc buildCache*(u: cfloat; inverseOfSpanDomain: cfloat; periodicFlag: bool;
                degree: cint; flatKnots: TColStdArray1OfReal;
                poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
                cachePoles: var TColgpArray1OfPnt2d;
                cacheWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::BuildCache(@)", header: "BSplCLib.hxx".}
proc buildCache*(theParameter: cfloat; theSpanDomain: cfloat; thePeriodicFlag: bool;
                theDegree: cint; theSpanIndex: cint;
                theFlatKnots: TColStdArray1OfReal; thePoles: TColgpArray1OfPnt;
                theWeights: ptr TColStdArray1OfReal;
                theCacheArray: var TColStdArray2OfReal) {.
    importcpp: "BSplCLib::BuildCache(@)", header: "BSplCLib.hxx".}
proc buildCache*(theParameter: cfloat; theSpanDomain: cfloat; thePeriodicFlag: bool;
                theDegree: cint; theSpanIndex: cint;
                theFlatKnots: TColStdArray1OfReal; thePoles: TColgpArray1OfPnt2d;
                theWeights: ptr TColStdArray1OfReal;
                theCacheArray: var TColStdArray2OfReal) {.
    importcpp: "BSplCLib::BuildCache(@)", header: "BSplCLib.hxx".}
proc polesCoefficients*(poles: TColgpArray1OfPnt2d;
                       cachePoles: var TColgpArray1OfPnt2d) {.
    importcpp: "BSplCLib::PolesCoefficients(@)", header: "BSplCLib.hxx".}
proc polesCoefficients*(poles: TColgpArray1OfPnt2d;
                       weights: ptr TColStdArray1OfReal;
                       cachePoles: var TColgpArray1OfPnt2d;
                       cacheWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::PolesCoefficients(@)", header: "BSplCLib.hxx".}
proc polesCoefficients*(poles: TColgpArray1OfPnt; cachePoles: var TColgpArray1OfPnt) {.
    importcpp: "BSplCLib::PolesCoefficients(@)", header: "BSplCLib.hxx".}
proc polesCoefficients*(poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                       cachePoles: var TColgpArray1OfPnt;
                       cacheWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::PolesCoefficients(@)", header: "BSplCLib.hxx".}
proc flatBezierKnots*(degree: cint): cfloat {.
    importcpp: "BSplCLib::FlatBezierKnots(@)", header: "BSplCLib.hxx".}
proc buildSchoenbergPoints*(degree: cint; flatKnots: TColStdArray1OfReal;
                           parameters: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::BuildSchoenbergPoints(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: cint; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger;
                 poles: var TColgpArray1OfPnt; inversionProblem: var cint) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: cint; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger;
                 poles: var TColgpArray1OfPnt2d; inversionProblem: var cint) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: cint; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger;
                 poles: var TColgpArray1OfPnt; weights: var TColStdArray1OfReal;
                 inversionProblem: var cint) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: cint; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger;
                 poles: var TColgpArray1OfPnt2d; weights: var TColStdArray1OfReal;
                 inversionProblem: var cint) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: cint; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger; arrayDimension: cint;
                 poles: var cfloat; inversionProblem: var cint) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: cint; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger; arrayDimension: cint;
                 poles: var cfloat; weights: var cfloat; inversionProblem: var cint) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc movePoint*(u: cfloat; displ: Vec2d; index1: cint; index2: cint; degree: cint;
               poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
               flatKnots: TColStdArray1OfReal; firstIndex: var cint;
               lastIndex: var cint; newPoles: var TColgpArray1OfPnt2d) {.
    importcpp: "BSplCLib::MovePoint(@)", header: "BSplCLib.hxx".}
proc movePoint*(u: cfloat; displ: Vec; index1: cint; index2: cint; degree: cint;
               poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
               flatKnots: TColStdArray1OfReal; firstIndex: var cint;
               lastIndex: var cint; newPoles: var TColgpArray1OfPnt) {.
    importcpp: "BSplCLib::MovePoint(@)", header: "BSplCLib.hxx".}
proc movePointAndTangent*(u: cfloat; arrayDimension: cint; delta: var cfloat;
                         deltaDerivative: var cfloat; tolerance: cfloat;
                         degree: cint; startingCondition: cint;
                         endingCondition: cint; poles: var cfloat;
                         weights: ptr TColStdArray1OfReal;
                         flatKnots: TColStdArray1OfReal; newPoles: var cfloat;
                         errorStatus: var cint) {.
    importcpp: "BSplCLib::MovePointAndTangent(@)", header: "BSplCLib.hxx".}
proc movePointAndTangent*(u: cfloat; delta: Vec; deltaDerivative: Vec;
                         tolerance: cfloat; degree: cint; startingCondition: cint;
                         endingCondition: cint; poles: TColgpArray1OfPnt;
                         weights: ptr TColStdArray1OfReal;
                         flatKnots: TColStdArray1OfReal;
                         newPoles: var TColgpArray1OfPnt; errorStatus: var cint) {.
    importcpp: "BSplCLib::MovePointAndTangent(@)", header: "BSplCLib.hxx".}
proc movePointAndTangent*(u: cfloat; delta: Vec2d; deltaDerivative: Vec2d;
                         tolerance: cfloat; degree: cint; startingCondition: cint;
                         endingCondition: cint; poles: TColgpArray1OfPnt2d;
                         weights: ptr TColStdArray1OfReal;
                         flatKnots: TColStdArray1OfReal;
                         newPoles: var TColgpArray1OfPnt2d; errorStatus: var cint) {.
    importcpp: "BSplCLib::MovePointAndTangent(@)", header: "BSplCLib.hxx".}
proc resolution*(polesArray: var cfloat; arrayDimension: cint; numPoles: cint;
                weights: ptr TColStdArray1OfReal; flatKnots: TColStdArray1OfReal;
                degree: cint; tolerance3D: cfloat; uTolerance: var cfloat) {.
    importcpp: "BSplCLib::Resolution(@)", header: "BSplCLib.hxx".}
proc resolution*(poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                numPoles: cint; flatKnots: TColStdArray1OfReal; degree: cint;
                tolerance3D: cfloat; uTolerance: var cfloat) {.
    importcpp: "BSplCLib::Resolution(@)", header: "BSplCLib.hxx".}
proc resolution*(poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
                numPoles: cint; flatKnots: TColStdArray1OfReal; degree: cint;
                tolerance3D: cfloat; uTolerance: var cfloat) {.
    importcpp: "BSplCLib::Resolution(@)", header: "BSplCLib.hxx".}

























