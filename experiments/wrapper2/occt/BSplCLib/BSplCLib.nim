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


proc hunt*(theArray: TColStdArray1OfReal; theX: float; theXPos: var int) {.
    importcpp: "BSplCLib::Hunt(@)", header: "BSplCLib.hxx".}
proc firstUKnotIndex*(degree: int; mults: TColStdArray1OfInteger): int {.
    importcpp: "BSplCLib::FirstUKnotIndex(@)", header: "BSplCLib.hxx".}
proc lastUKnotIndex*(degree: int; mults: TColStdArray1OfInteger): int {.
    importcpp: "BSplCLib::LastUKnotIndex(@)", header: "BSplCLib.hxx".}
proc flatIndex*(degree: int; index: int; mults: TColStdArray1OfInteger; periodic: bool): int {.
    importcpp: "BSplCLib::FlatIndex(@)", header: "BSplCLib.hxx".}
proc locateParameter*(degree: int; knots: TColStdArray1OfReal;
                     mults: TColStdArray1OfInteger; u: float; isPeriodic: bool;
                     fromK1: int; toK2: int; knotIndex: var int; newU: var float) {.
    importcpp: "BSplCLib::LocateParameter(@)", header: "BSplCLib.hxx".}
proc locateParameter*(degree: int; knots: TColStdArray1OfReal; u: float;
                     isPeriodic: bool; fromK1: int; toK2: int; knotIndex: var int;
                     newU: var float) {.importcpp: "BSplCLib::LocateParameter(@)",
                                     header: "BSplCLib.hxx".}
proc locateParameter*(degree: int; knots: TColStdArray1OfReal;
                     mults: ptr TColStdArray1OfInteger; u: float; periodic: bool;
                     index: var int; newU: var float) {.
    importcpp: "BSplCLib::LocateParameter(@)", header: "BSplCLib.hxx".}
proc maxKnotMult*(mults: TColStdArray1OfInteger; k1: int; k2: int): int {.
    importcpp: "BSplCLib::MaxKnotMult(@)", header: "BSplCLib.hxx".}
proc minKnotMult*(mults: TColStdArray1OfInteger; k1: int; k2: int): int {.
    importcpp: "BSplCLib::MinKnotMult(@)", header: "BSplCLib.hxx".}
proc nbPoles*(degree: int; periodic: bool; mults: TColStdArray1OfInteger): int {.
    importcpp: "BSplCLib::NbPoles(@)", header: "BSplCLib.hxx".}
proc knotSequenceLength*(mults: TColStdArray1OfInteger; degree: int; periodic: bool): int {.
    importcpp: "BSplCLib::KnotSequenceLength(@)", header: "BSplCLib.hxx".}
proc knotSequence*(knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                  knotSeq: var TColStdArray1OfReal; periodic: bool = false) {.
    importcpp: "BSplCLib::KnotSequence(@)", header: "BSplCLib.hxx".}
proc knotSequence*(knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                  degree: int; periodic: bool; knotSeq: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::KnotSequence(@)", header: "BSplCLib.hxx".}
proc knotsLength*(knotSeq: TColStdArray1OfReal; periodic: bool = false): int {.
    importcpp: "BSplCLib::KnotsLength(@)", header: "BSplCLib.hxx".}
proc knots*(knotSeq: TColStdArray1OfReal; knots: var TColStdArray1OfReal;
           mults: var TColStdArray1OfInteger; periodic: bool = false) {.
    importcpp: "BSplCLib::Knots(@)", header: "BSplCLib.hxx".}
proc knotForm*(knots: TColStdArray1OfReal; fromK1: int; toK2: int): BSplCLibKnotDistribution {.
    importcpp: "BSplCLib::KnotForm(@)", header: "BSplCLib.hxx".}
proc multForm*(mults: TColStdArray1OfInteger; fromK1: int; toK2: int): BSplCLibMultDistribution {.
    importcpp: "BSplCLib::MultForm(@)", header: "BSplCLib.hxx".}
proc knotAnalysis*(degree: int; periodic: bool; cKnots: TColStdArray1OfReal;
                  cMults: TColStdArray1OfInteger;
                  knotForm: var GeomAbsBSplKnotDistribution; maxKnotMult: var int) {.
    importcpp: "BSplCLib::KnotAnalysis(@)", header: "BSplCLib.hxx".}
proc reparametrize*(u1: float; u2: float; knots: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Reparametrize(@)", header: "BSplCLib.hxx".}
proc reverse*(knots: var TColStdArray1OfReal) {.importcpp: "BSplCLib::Reverse(@)",
    header: "BSplCLib.hxx".}
proc reverse*(mults: var TColStdArray1OfInteger) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc reverse*(poles: var TColgpArray1OfPnt; last: int) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc reverse*(poles: var TColgpArray1OfPnt2d; last: int) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc reverse*(weights: var TColStdArray1OfReal; last: int) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc isRational*(weights: TColStdArray1OfReal; i1: int; i2: int; epsilon: float = 0.0): bool {.
    importcpp: "BSplCLib::IsRational(@)", header: "BSplCLib.hxx".}
proc maxDegree*(): int {.importcpp: "BSplCLib::MaxDegree(@)", header: "BSplCLib.hxx".}
proc eval*(u: float; degree: int; knots: var float; dimension: int; poles: var float) {.
    importcpp: "BSplCLib::Eval(@)", header: "BSplCLib.hxx".}
proc boorScheme*(u: float; degree: int; knots: var float; dimension: int;
                poles: var float; depth: int; length: int) {.
    importcpp: "BSplCLib::BoorScheme(@)", header: "BSplCLib.hxx".}
proc antiBoorScheme*(u: float; degree: int; knots: var float; dimension: int;
                    poles: var float; depth: int; length: int; tolerance: float): bool {.
    importcpp: "BSplCLib::AntiBoorScheme(@)", header: "BSplCLib.hxx".}
proc derivative*(degree: int; knots: var float; dimension: int; length: int; order: int;
                poles: var float) {.importcpp: "BSplCLib::Derivative(@)",
                                 header: "BSplCLib.hxx".}
proc bohm*(u: float; degree: int; n: int; knots: var float; dimension: int; poles: var float) {.
    importcpp: "BSplCLib::Bohm(@)", header: "BSplCLib.hxx".}
proc noWeights*(): ptr TColStdArray1OfReal {.importcpp: "BSplCLib::NoWeights(@)",
    header: "BSplCLib.hxx".}
proc noMults*(): ptr TColStdArray1OfInteger {.importcpp: "BSplCLib::NoMults(@)",
    header: "BSplCLib.hxx".}
proc buildKnots*(degree: int; index: int; periodic: bool; knots: TColStdArray1OfReal;
                mults: ptr TColStdArray1OfInteger; lk: var float) {.
    importcpp: "BSplCLib::BuildKnots(@)", header: "BSplCLib.hxx".}
proc poleIndex*(degree: int; index: int; periodic: bool; mults: TColStdArray1OfInteger): int {.
    importcpp: "BSplCLib::PoleIndex(@)", header: "BSplCLib.hxx".}
proc buildEval*(degree: int; index: int; poles: TColStdArray1OfReal;
               weights: ptr TColStdArray1OfReal; lp: var float) {.
    importcpp: "BSplCLib::BuildEval(@)", header: "BSplCLib.hxx".}
proc buildEval*(degree: int; index: int; poles: TColgpArray1OfPnt;
               weights: ptr TColStdArray1OfReal; lp: var float) {.
    importcpp: "BSplCLib::BuildEval(@)", header: "BSplCLib.hxx".}
proc buildEval*(degree: int; index: int; poles: TColgpArray1OfPnt2d;
               weights: ptr TColStdArray1OfReal; lp: var float) {.
    importcpp: "BSplCLib::BuildEval(@)", header: "BSplCLib.hxx".}
proc buildBoor*(index: int; length: int; dimension: int; poles: TColStdArray1OfReal;
               lp: var float) {.importcpp: "BSplCLib::BuildBoor(@)",
                             header: "BSplCLib.hxx".}
proc boorIndex*(index: int; length: int; depth: int): int {.
    importcpp: "BSplCLib::BoorIndex(@)", header: "BSplCLib.hxx".}
proc getPole*(index: int; length: int; depth: int; dimension: int; locPoles: var float;
             position: var int; pole: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::GetPole(@)", header: "BSplCLib.hxx".}
proc prepareInsertKnots*(degree: int; periodic: bool; knots: TColStdArray1OfReal;
                        mults: TColStdArray1OfInteger;
                        addKnots: TColStdArray1OfReal;
                        addMults: ptr TColStdArray1OfInteger; nbPoles: var int;
                        nbKnots: var int; epsilon: float; add: bool = true): bool {.
    importcpp: "BSplCLib::PrepareInsertKnots(@)", header: "BSplCLib.hxx".}
proc insertKnots*(degree: int; periodic: bool; dimension: int;
                 poles: TColStdArray1OfReal; knots: TColStdArray1OfReal;
                 mults: TColStdArray1OfInteger; addKnots: TColStdArray1OfReal;
                 addMults: ptr TColStdArray1OfInteger;
                 newPoles: var TColStdArray1OfReal;
                 newKnots: var TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger; epsilon: float;
                 add: bool = true) {.importcpp: "BSplCLib::InsertKnots(@)",
                                 header: "BSplCLib.hxx".}
proc insertKnots*(degree: int; periodic: bool; poles: TColgpArray1OfPnt;
                 weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
                 mults: TColStdArray1OfInteger; addKnots: TColStdArray1OfReal;
                 addMults: ptr TColStdArray1OfInteger;
                 newPoles: var TColgpArray1OfPnt;
                 newWeights: ptr TColStdArray1OfReal;
                 newKnots: var TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger; epsilon: float;
                 add: bool = true) {.importcpp: "BSplCLib::InsertKnots(@)",
                                 header: "BSplCLib.hxx".}
proc insertKnots*(degree: int; periodic: bool; poles: TColgpArray1OfPnt2d;
                 weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
                 mults: TColStdArray1OfInteger; addKnots: TColStdArray1OfReal;
                 addMults: ptr TColStdArray1OfInteger;
                 newPoles: var TColgpArray1OfPnt2d;
                 newWeights: ptr TColStdArray1OfReal;
                 newKnots: var TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger; epsilon: float;
                 add: bool = true) {.importcpp: "BSplCLib::InsertKnots(@)",
                                 header: "BSplCLib.hxx".}
proc insertKnot*(uIndex: int; u: float; uMult: int; degree: int; periodic: bool;
                poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                newPoles: var TColgpArray1OfPnt;
                newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::InsertKnot(@)", header: "BSplCLib.hxx".}
proc insertKnot*(uIndex: int; u: float; uMult: int; degree: int; periodic: bool;
                poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
                knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                newPoles: var TColgpArray1OfPnt2d;
                newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::InsertKnot(@)", header: "BSplCLib.hxx".}
proc raiseMultiplicity*(knotIndex: int; mult: int; degree: int; periodic: bool;
                       poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                       knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                       newPoles: var TColgpArray1OfPnt;
                       newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::RaiseMultiplicity(@)", header: "BSplCLib.hxx".}
proc raiseMultiplicity*(knotIndex: int; mult: int; degree: int; periodic: bool;
                       poles: TColgpArray1OfPnt2d;
                       weights: ptr TColStdArray1OfReal;
                       knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                       newPoles: var TColgpArray1OfPnt2d;
                       newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::RaiseMultiplicity(@)", header: "BSplCLib.hxx".}
proc removeKnot*(index: int; mult: int; degree: int; periodic: bool; dimension: int;
                poles: TColStdArray1OfReal; knots: TColStdArray1OfReal;
                mults: TColStdArray1OfInteger; newPoles: var TColStdArray1OfReal;
                newKnots: var TColStdArray1OfReal;
                newMults: var TColStdArray1OfInteger; tolerance: float): bool {.
    importcpp: "BSplCLib::RemoveKnot(@)", header: "BSplCLib.hxx".}
proc removeKnot*(index: int; mult: int; degree: int; periodic: bool;
                poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                newPoles: var TColgpArray1OfPnt;
                newWeights: ptr TColStdArray1OfReal;
                newKnots: var TColStdArray1OfReal;
                newMults: var TColStdArray1OfInteger; tolerance: float): bool {.
    importcpp: "BSplCLib::RemoveKnot(@)", header: "BSplCLib.hxx".}
proc removeKnot*(index: int; mult: int; degree: int; periodic: bool;
                poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
                knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                newPoles: var TColgpArray1OfPnt2d;
                newWeights: ptr TColStdArray1OfReal;
                newKnots: var TColStdArray1OfReal;
                newMults: var TColStdArray1OfInteger; tolerance: float): bool {.
    importcpp: "BSplCLib::RemoveKnot(@)", header: "BSplCLib.hxx".}
proc increaseDegreeCountKnots*(degree: int; newDegree: int; periodic: bool;
                              mults: TColStdArray1OfInteger): int {.
    importcpp: "BSplCLib::IncreaseDegreeCountKnots(@)", header: "BSplCLib.hxx".}
proc increaseDegree*(degree: int; newDegree: int; periodic: bool; dimension: int;
                    poles: TColStdArray1OfReal; knots: TColStdArray1OfReal;
                    mults: TColStdArray1OfInteger;
                    newPoles: var TColStdArray1OfReal;
                    newKnots: var TColStdArray1OfReal;
                    newMults: var TColStdArray1OfInteger) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc increaseDegree*(degree: int; newDegree: int; periodic: bool;
                    poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                    knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                    newPoles: var TColgpArray1OfPnt;
                    newWeights: ptr TColStdArray1OfReal;
                    newKnots: var TColStdArray1OfReal;
                    newMults: var TColStdArray1OfInteger) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc increaseDegree*(degree: int; newDegree: int; periodic: bool;
                    poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
                    knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                    newPoles: var TColgpArray1OfPnt2d;
                    newWeights: ptr TColStdArray1OfReal;
                    newKnots: var TColStdArray1OfReal;
                    newMults: var TColStdArray1OfInteger) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc increaseDegree*(newDegree: int; poles: TColgpArray1OfPnt;
                    weights: ptr TColStdArray1OfReal;
                    newPoles: var TColgpArray1OfPnt;
                    newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc increaseDegree*(newDegree: int; poles: TColgpArray1OfPnt2d;
                    weights: ptr TColStdArray1OfReal;
                    newPoles: var TColgpArray1OfPnt2d;
                    newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc prepareUnperiodize*(degree: int; mults: TColStdArray1OfInteger;
                        nbKnots: var int; nbPoles: var int) {.
    importcpp: "BSplCLib::PrepareUnperiodize(@)", header: "BSplCLib.hxx".}
proc unperiodize*(degree: int; dimension: int; mults: TColStdArray1OfInteger;
                 knots: TColStdArray1OfReal; poles: TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger;
                 newKnots: var TColStdArray1OfReal;
                 newPoles: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Unperiodize(@)", header: "BSplCLib.hxx".}
proc unperiodize*(degree: int; mults: TColStdArray1OfInteger;
                 knots: TColStdArray1OfReal; poles: TColgpArray1OfPnt;
                 weights: ptr TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger;
                 newKnots: var TColStdArray1OfReal;
                 newPoles: var TColgpArray1OfPnt;
                 newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Unperiodize(@)", header: "BSplCLib.hxx".}
proc unperiodize*(degree: int; mults: TColStdArray1OfInteger;
                 knots: TColStdArray1OfReal; poles: TColgpArray1OfPnt2d;
                 weights: ptr TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger;
                 newKnots: var TColStdArray1OfReal;
                 newPoles: var TColgpArray1OfPnt2d;
                 newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Unperiodize(@)", header: "BSplCLib.hxx".}
proc prepareTrimming*(degree: int; periodic: bool; knots: TColStdArray1OfReal;
                     mults: TColStdArray1OfInteger; u1: float; u2: float;
                     nbKnots: var int; nbPoles: var int) {.
    importcpp: "BSplCLib::PrepareTrimming(@)", header: "BSplCLib.hxx".}
proc trimming*(degree: int; periodic: bool; dimension: int; knots: TColStdArray1OfReal;
              mults: TColStdArray1OfInteger; poles: TColStdArray1OfReal; u1: float;
              u2: float; newKnots: var TColStdArray1OfReal;
              newMults: var TColStdArray1OfInteger;
              newPoles: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Trimming(@)", header: "BSplCLib.hxx".}
proc trimming*(degree: int; periodic: bool; knots: TColStdArray1OfReal;
              mults: TColStdArray1OfInteger; poles: TColgpArray1OfPnt;
              weights: ptr TColStdArray1OfReal; u1: float; u2: float;
              newKnots: var TColStdArray1OfReal;
              newMults: var TColStdArray1OfInteger;
              newPoles: var TColgpArray1OfPnt; newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Trimming(@)", header: "BSplCLib.hxx".}
proc trimming*(degree: int; periodic: bool; knots: TColStdArray1OfReal;
              mults: TColStdArray1OfInteger; poles: TColgpArray1OfPnt2d;
              weights: ptr TColStdArray1OfReal; u1: float; u2: float;
              newKnots: var TColStdArray1OfReal;
              newMults: var TColStdArray1OfInteger;
              newPoles: var TColgpArray1OfPnt2d;
              newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Trimming(@)", header: "BSplCLib.hxx".}
proc d0*(u: float; index: int; degree: int; periodic: bool; poles: TColStdArray1OfReal;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var float) {.
    importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc d0*(u: float; index: int; degree: int; periodic: bool; poles: TColgpArray1OfPnt;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var Pnt) {.importcpp: "BSplCLib::D0(@)",
    header: "BSplCLib.hxx".}
proc d0*(u: float; uIndex: int; degree: int; periodic: bool; poles: TColgpArray1OfPnt2d;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var Pnt2d) {.
    importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc d0*(u: float; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
        p: var Pnt) {.importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc d0*(u: float; poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
        p: var Pnt2d) {.importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc d1*(u: float; index: int; degree: int; periodic: bool; poles: TColStdArray1OfReal;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var float; v: var float) {.
    importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc d1*(u: float; index: int; degree: int; periodic: bool; poles: TColgpArray1OfPnt;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var Pnt; v: var Vec) {.
    importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc d1*(u: float; uIndex: int; degree: int; periodic: bool; poles: TColgpArray1OfPnt2d;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var Pnt2d; v: var Vec2d) {.
    importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc d1*(u: float; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
        p: var Pnt; v: var Vec) {.importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc d1*(u: float; poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
        p: var Pnt2d; v: var Vec2d) {.importcpp: "BSplCLib::D1(@)",
                                header: "BSplCLib.hxx".}
proc d2*(u: float; index: int; degree: int; periodic: bool; poles: TColStdArray1OfReal;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var float; v1: var float; v2: var float) {.
    importcpp: "BSplCLib::D2(@)", header: "BSplCLib.hxx".}
proc d2*(u: float; index: int; degree: int; periodic: bool; poles: TColgpArray1OfPnt;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "BSplCLib::D2(@)", header: "BSplCLib.hxx".}
proc d2*(u: float; uIndex: int; degree: int; periodic: bool; poles: TColgpArray1OfPnt2d;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    importcpp: "BSplCLib::D2(@)", header: "BSplCLib.hxx".}
proc d2*(u: float; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
        p: var Pnt; v1: var Vec; v2: var Vec) {.importcpp: "BSplCLib::D2(@)",
                                       header: "BSplCLib.hxx".}
proc d2*(u: float; poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
        p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.importcpp: "BSplCLib::D2(@)",
    header: "BSplCLib.hxx".}
proc d3*(u: float; index: int; degree: int; periodic: bool; poles: TColStdArray1OfReal;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var float; v1: var float; v2: var float;
        v3: var float) {.importcpp: "BSplCLib::D3(@)", header: "BSplCLib.hxx".}
proc d3*(u: float; index: int; degree: int; periodic: bool; poles: TColgpArray1OfPnt;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "BSplCLib::D3(@)", header: "BSplCLib.hxx".}
proc d3*(u: float; uIndex: int; degree: int; periodic: bool; poles: TColgpArray1OfPnt2d;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.importcpp: "BSplCLib::D3(@)", header: "BSplCLib.hxx".}
proc d3*(u: float; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
        p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.importcpp: "BSplCLib::D3(@)",
    header: "BSplCLib.hxx".}
proc d3*(u: float; poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
        p: var Pnt2d; v1: var Vec2d; v2: var Vec2d; v3: var Vec2d) {.
    importcpp: "BSplCLib::D3(@)", header: "BSplCLib.hxx".}
proc dn*(u: float; n: int; index: int; degree: int; periodic: bool;
        poles: TColStdArray1OfReal; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; vn: var float) {.
    importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc dn*(u: float; n: int; index: int; degree: int; periodic: bool;
        poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; vn: var Vec) {.
    importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc dn*(u: float; n: int; uIndex: int; degree: int; periodic: bool;
        poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; v: var Vec2d) {.
    importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc dn*(u: float; n: int; poles: TColgpArray1OfPnt; weights: TColStdArray1OfReal;
        p: var Pnt; vn: var Vec) {.importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc dn*(u: float; n: int; poles: TColgpArray1OfPnt2d; weights: TColStdArray1OfReal;
        p: var Pnt2d; vn: var Vec2d) {.importcpp: "BSplCLib::DN(@)",
                                 header: "BSplCLib.hxx".}
proc evalBsplineBasis*(derivativeOrder: int; order: int;
                      flatKnots: TColStdArray1OfReal; parameter: float;
                      firstNonZeroBsplineIndex: var int;
                      bsplineBasis: var MathMatrix; isPeriodic: bool = false): int {.
    importcpp: "BSplCLib::EvalBsplineBasis(@)", header: "BSplCLib.hxx".}
proc buildBSpMatrix*(parameters: TColStdArray1OfReal;
                    orderArray: TColStdArray1OfInteger;
                    flatKnots: TColStdArray1OfReal; degree: int;
                    matrix: var MathMatrix; upperBandWidth: var int;
                    lowerBandWidth: var int): int {.
    importcpp: "BSplCLib::BuildBSpMatrix(@)", header: "BSplCLib.hxx".}
proc factorBandedMatrix*(matrix: var MathMatrix; upperBandWidth: int;
                        lowerBandWidth: int; pivotIndexProblem: var int): int {.
    importcpp: "BSplCLib::FactorBandedMatrix(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: int; lowerBandWidth: int;
                       arrayDimension: int; array: var float): int {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: int; lowerBandWidth: int;
                       array: var TColgpArray1OfPnt2d): int {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: int; lowerBandWidth: int;
                       array: var TColgpArray1OfPnt): int {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: int; lowerBandWidth: int;
                       homogenousFlag: bool; arrayDimension: int; array: var float;
                       weights: var float): int {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: int; lowerBandWidth: int;
                       homogenousFlag: bool; array: var TColgpArray1OfPnt2d;
                       weights: var TColStdArray1OfReal): int {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: int; lowerBandWidth: int;
                       homogeneousFlag: bool; array: var TColgpArray1OfPnt;
                       weights: var TColStdArray1OfReal): int {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc mergeBSplineKnots*(tolerance: float; startValue: float; endValue: float;
                       degree1: int; knots1: TColStdArray1OfReal;
                       mults1: TColStdArray1OfInteger; degree2: int;
                       knots2: TColStdArray1OfReal;
                       mults2: TColStdArray1OfInteger; numPoles: var int;
                       newKnots: var Handle[TColStdHArray1OfReal];
                       newMults: var Handle[TColStdHArray1OfInteger]) {.
    importcpp: "BSplCLib::MergeBSplineKnots(@)", header: "BSplCLib.hxx".}
proc functionReparameterise*(function: BSplCLibEvaluatorFunction;
                            bSplineDegree: int;
                            bSplineFlatKnots: TColStdArray1OfReal;
                            polesDimension: int; poles: var float;
                            flatKnots: TColStdArray1OfReal; newDegree: int;
                            newPoles: var float; theStatus: var int) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc functionReparameterise*(function: BSplCLibEvaluatorFunction;
                            bSplineDegree: int;
                            bSplineFlatKnots: TColStdArray1OfReal;
                            poles: TColStdArray1OfReal;
                            flatKnots: TColStdArray1OfReal; newDegree: int;
                            newPoles: var TColStdArray1OfReal; theStatus: var int) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc functionReparameterise*(function: BSplCLibEvaluatorFunction;
                            bSplineDegree: int;
                            bSplineFlatKnots: TColStdArray1OfReal;
                            poles: TColgpArray1OfPnt;
                            flatKnots: TColStdArray1OfReal; newDegree: int;
                            newPoles: var TColgpArray1OfPnt; theStatus: var int) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc functionReparameterise*(function: BSplCLibEvaluatorFunction;
                            bSplineDegree: int;
                            bSplineFlatKnots: TColStdArray1OfReal;
                            poles: TColgpArray1OfPnt2d;
                            flatKnots: TColStdArray1OfReal; newDegree: int;
                            newPoles: var TColgpArray1OfPnt2d; theStatus: var int) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc functionMultiply*(function: BSplCLibEvaluatorFunction; bSplineDegree: int;
                      bSplineFlatKnots: TColStdArray1OfReal; polesDimension: int;
                      poles: var float; flatKnots: TColStdArray1OfReal;
                      newDegree: int; newPoles: var float; theStatus: var int) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc functionMultiply*(function: BSplCLibEvaluatorFunction; bSplineDegree: int;
                      bSplineFlatKnots: TColStdArray1OfReal;
                      poles: TColStdArray1OfReal; flatKnots: TColStdArray1OfReal;
                      newDegree: int; newPoles: var TColStdArray1OfReal;
                      theStatus: var int) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc functionMultiply*(function: BSplCLibEvaluatorFunction; bSplineDegree: int;
                      bSplineFlatKnots: TColStdArray1OfReal;
                      poles: TColgpArray1OfPnt2d; flatKnots: TColStdArray1OfReal;
                      newDegree: int; newPoles: var TColgpArray1OfPnt2d;
                      theStatus: var int) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc functionMultiply*(function: BSplCLibEvaluatorFunction; bSplineDegree: int;
                      bSplineFlatKnots: TColStdArray1OfReal;
                      poles: TColgpArray1OfPnt; flatKnots: TColStdArray1OfReal;
                      newDegree: int; newPoles: var TColgpArray1OfPnt;
                      theStatus: var int) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc eval*(u: float; periodicFlag: bool; derivativeRequest: int; extrapMode: var int;
          degree: int; flatKnots: TColStdArray1OfReal; arrayDimension: int;
          poles: var float; result: var float) {.importcpp: "BSplCLib::Eval(@)",
    header: "BSplCLib.hxx".}
proc eval*(u: float; periodicFlag: bool; derivativeRequest: int; extrapMode: var int;
          degree: int; flatKnots: TColStdArray1OfReal; arrayDimension: int;
          poles: var float; weights: var float; polesResult: var float;
          weightsResult: var float) {.importcpp: "BSplCLib::Eval(@)",
                                   header: "BSplCLib.hxx".}
proc eval*(u: float; periodicFlag: bool; homogeneousFlag: bool; extrapMode: var int;
          degree: int; flatKnots: TColStdArray1OfReal; poles: TColgpArray1OfPnt;
          weights: TColStdArray1OfReal; point: var Pnt; weight: var float) {.
    importcpp: "BSplCLib::Eval(@)", header: "BSplCLib.hxx".}
proc eval*(u: float; periodicFlag: bool; homogeneousFlag: bool; extrapMode: var int;
          degree: int; flatKnots: TColStdArray1OfReal; poles: TColgpArray1OfPnt2d;
          weights: TColStdArray1OfReal; point: var Pnt2d; weight: var float) {.
    importcpp: "BSplCLib::Eval(@)", header: "BSplCLib.hxx".}
proc tangExtendToConstraint*(flatKnots: TColStdArray1OfReal; c1Coefficient: float;
                            numPoles: int; poles: var float; dimension: int;
                            degree: int; constraintPoint: TColStdArray1OfReal;
                            continuity: int; after: bool; nbPolesResult: var int;
                            nbKnotsRsult: var int; knotsResult: var float;
                            polesResult: var float) {.
    importcpp: "BSplCLib::TangExtendToConstraint(@)", header: "BSplCLib.hxx".}
proc cacheD0*(u: float; degree: int; cacheParameter: float; spanLenght: float;
             poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt) {.importcpp: "BSplCLib::CacheD0(@)",
                            header: "BSplCLib.hxx".}
proc cacheD0*(u: float; degree: int; cacheParameter: float; spanLenght: float;
             poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
             point: var Pnt2d) {.importcpp: "BSplCLib::CacheD0(@)",
                              header: "BSplCLib.hxx".}
proc coefsD0*(u: float; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt) {.importcpp: "BSplCLib::CoefsD0(@)",
                            header: "BSplCLib.hxx".}
proc coefsD0*(u: float; poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
             point: var Pnt2d) {.importcpp: "BSplCLib::CoefsD0(@)",
                              header: "BSplCLib.hxx".}
proc cacheD1*(u: float; degree: int; cacheParameter: float; spanLenght: float;
             poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt; vec: var Vec) {.importcpp: "BSplCLib::CacheD1(@)",
                                       header: "BSplCLib.hxx".}
proc cacheD1*(u: float; degree: int; cacheParameter: float; spanLenght: float;
             poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
             point: var Pnt2d; vec: var Vec2d) {.importcpp: "BSplCLib::CacheD1(@)",
    header: "BSplCLib.hxx".}
proc coefsD1*(u: float; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt; vec: var Vec) {.importcpp: "BSplCLib::CoefsD1(@)",
                                       header: "BSplCLib.hxx".}
proc coefsD1*(u: float; poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
             point: var Pnt2d; vec: var Vec2d) {.importcpp: "BSplCLib::CoefsD1(@)",
    header: "BSplCLib.hxx".}
proc cacheD2*(u: float; degree: int; cacheParameter: float; spanLenght: float;
             poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt; vec1: var Vec; vec2: var Vec) {.
    importcpp: "BSplCLib::CacheD2(@)", header: "BSplCLib.hxx".}
proc cacheD2*(u: float; degree: int; cacheParameter: float; spanLenght: float;
             poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
             point: var Pnt2d; vec1: var Vec2d; vec2: var Vec2d) {.
    importcpp: "BSplCLib::CacheD2(@)", header: "BSplCLib.hxx".}
proc coefsD2*(u: float; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt; vec1: var Vec; vec2: var Vec) {.
    importcpp: "BSplCLib::CoefsD2(@)", header: "BSplCLib.hxx".}
proc coefsD2*(u: float; poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
             point: var Pnt2d; vec1: var Vec2d; vec2: var Vec2d) {.
    importcpp: "BSplCLib::CoefsD2(@)", header: "BSplCLib.hxx".}
proc cacheD3*(u: float; degree: int; cacheParameter: float; spanLenght: float;
             poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt; vec1: var Vec; vec2: var Vec; vec3: var Vec) {.
    importcpp: "BSplCLib::CacheD3(@)", header: "BSplCLib.hxx".}
proc cacheD3*(u: float; degree: int; cacheParameter: float; spanLenght: float;
             poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
             point: var Pnt2d; vec1: var Vec2d; vec2: var Vec2d; vec3: var Vec2d) {.
    importcpp: "BSplCLib::CacheD3(@)", header: "BSplCLib.hxx".}
proc coefsD3*(u: float; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
             point: var Pnt; vec1: var Vec; vec2: var Vec; vec3: var Vec) {.
    importcpp: "BSplCLib::CoefsD3(@)", header: "BSplCLib.hxx".}
proc coefsD3*(u: float; poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
             point: var Pnt2d; vec1: var Vec2d; vec2: var Vec2d; vec3: var Vec2d) {.
    importcpp: "BSplCLib::CoefsD3(@)", header: "BSplCLib.hxx".}
proc buildCache*(u: float; inverseOfSpanDomain: float; periodicFlag: bool; degree: int;
                flatKnots: TColStdArray1OfReal; poles: TColgpArray1OfPnt;
                weights: ptr TColStdArray1OfReal;
                cachePoles: var TColgpArray1OfPnt;
                cacheWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::BuildCache(@)", header: "BSplCLib.hxx".}
proc buildCache*(u: float; inverseOfSpanDomain: float; periodicFlag: bool; degree: int;
                flatKnots: TColStdArray1OfReal; poles: TColgpArray1OfPnt2d;
                weights: ptr TColStdArray1OfReal;
                cachePoles: var TColgpArray1OfPnt2d;
                cacheWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::BuildCache(@)", header: "BSplCLib.hxx".}
proc buildCache*(theParameter: float; theSpanDomain: float; thePeriodicFlag: bool;
                theDegree: int; theSpanIndex: int;
                theFlatKnots: TColStdArray1OfReal; thePoles: TColgpArray1OfPnt;
                theWeights: ptr TColStdArray1OfReal;
                theCacheArray: var TColStdArray2OfReal) {.
    importcpp: "BSplCLib::BuildCache(@)", header: "BSplCLib.hxx".}
proc buildCache*(theParameter: float; theSpanDomain: float; thePeriodicFlag: bool;
                theDegree: int; theSpanIndex: int;
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
proc flatBezierKnots*(degree: int): float {.importcpp: "BSplCLib::FlatBezierKnots(@)",
                                        header: "BSplCLib.hxx".}
proc buildSchoenbergPoints*(degree: int; flatKnots: TColStdArray1OfReal;
                           parameters: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::BuildSchoenbergPoints(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: int; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger;
                 poles: var TColgpArray1OfPnt; inversionProblem: var int) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: int; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger;
                 poles: var TColgpArray1OfPnt2d; inversionProblem: var int) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: int; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger;
                 poles: var TColgpArray1OfPnt; weights: var TColStdArray1OfReal;
                 inversionProblem: var int) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: int; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger;
                 poles: var TColgpArray1OfPnt2d; weights: var TColStdArray1OfReal;
                 inversionProblem: var int) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: int; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger; arrayDimension: int;
                 poles: var float; inversionProblem: var int) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: int; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger; arrayDimension: int;
                 poles: var float; weights: var float; inversionProblem: var int) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc movePoint*(u: float; displ: Vec2d; index1: int; index2: int; degree: int;
               poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
               flatKnots: TColStdArray1OfReal; firstIndex: var int;
               lastIndex: var int; newPoles: var TColgpArray1OfPnt2d) {.
    importcpp: "BSplCLib::MovePoint(@)", header: "BSplCLib.hxx".}
proc movePoint*(u: float; displ: Vec; index1: int; index2: int; degree: int;
               poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
               flatKnots: TColStdArray1OfReal; firstIndex: var int;
               lastIndex: var int; newPoles: var TColgpArray1OfPnt) {.
    importcpp: "BSplCLib::MovePoint(@)", header: "BSplCLib.hxx".}
proc movePointAndTangent*(u: float; arrayDimension: int; delta: var float;
                         deltaDerivative: var float; tolerance: float; degree: int;
                         startingCondition: int; endingCondition: int;
                         poles: var float; weights: ptr TColStdArray1OfReal;
                         flatKnots: TColStdArray1OfReal; newPoles: var float;
                         errorStatus: var int) {.
    importcpp: "BSplCLib::MovePointAndTangent(@)", header: "BSplCLib.hxx".}
proc movePointAndTangent*(u: float; delta: Vec; deltaDerivative: Vec; tolerance: float;
                         degree: int; startingCondition: int; endingCondition: int;
                         poles: TColgpArray1OfPnt;
                         weights: ptr TColStdArray1OfReal;
                         flatKnots: TColStdArray1OfReal;
                         newPoles: var TColgpArray1OfPnt; errorStatus: var int) {.
    importcpp: "BSplCLib::MovePointAndTangent(@)", header: "BSplCLib.hxx".}
proc movePointAndTangent*(u: float; delta: Vec2d; deltaDerivative: Vec2d;
                         tolerance: float; degree: int; startingCondition: int;
                         endingCondition: int; poles: TColgpArray1OfPnt2d;
                         weights: ptr TColStdArray1OfReal;
                         flatKnots: TColStdArray1OfReal;
                         newPoles: var TColgpArray1OfPnt2d; errorStatus: var int) {.
    importcpp: "BSplCLib::MovePointAndTangent(@)", header: "BSplCLib.hxx".}
proc resolution*(polesArray: var float; arrayDimension: int; numPoles: int;
                weights: ptr TColStdArray1OfReal; flatKnots: TColStdArray1OfReal;
                degree: int; tolerance3D: float; uTolerance: var float) {.
    importcpp: "BSplCLib::Resolution(@)", header: "BSplCLib.hxx".}
proc resolution*(poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                numPoles: int; flatKnots: TColStdArray1OfReal; degree: int;
                tolerance3D: float; uTolerance: var float) {.
    importcpp: "BSplCLib::Resolution(@)", header: "BSplCLib.hxx".}
proc resolution*(poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
                numPoles: int; flatKnots: TColStdArray1OfReal; degree: int;
                tolerance3D: float; uTolerance: var float) {.
    importcpp: "BSplCLib::Resolution(@)", header: "BSplCLib.hxx".}
