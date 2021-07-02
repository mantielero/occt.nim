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


proc hunt*(theArray: TColStdArray1OfReal; theX: StandardReal;
          theXPos: var StandardInteger) {.importcpp: "BSplCLib::Hunt(@)",
                                       header: "BSplCLib.hxx".}
proc firstUKnotIndex*(degree: StandardInteger; mults: TColStdArray1OfInteger): StandardInteger {.
    importcpp: "BSplCLib::FirstUKnotIndex(@)", header: "BSplCLib.hxx".}
proc lastUKnotIndex*(degree: StandardInteger; mults: TColStdArray1OfInteger): StandardInteger {.
    importcpp: "BSplCLib::LastUKnotIndex(@)", header: "BSplCLib.hxx".}
proc flatIndex*(degree: StandardInteger; index: StandardInteger;
               mults: TColStdArray1OfInteger; periodic: StandardBoolean): StandardInteger {.
    importcpp: "BSplCLib::FlatIndex(@)", header: "BSplCLib.hxx".}
proc locateParameter*(degree: StandardInteger; knots: TColStdArray1OfReal;
                     mults: TColStdArray1OfInteger; u: StandardReal;
                     isPeriodic: StandardBoolean; fromK1: StandardInteger;
                     toK2: StandardInteger; knotIndex: var StandardInteger;
                     newU: var StandardReal) {.
    importcpp: "BSplCLib::LocateParameter(@)", header: "BSplCLib.hxx".}
proc locateParameter*(degree: StandardInteger; knots: TColStdArray1OfReal;
                     u: StandardReal; isPeriodic: StandardBoolean;
                     fromK1: StandardInteger; toK2: StandardInteger;
                     knotIndex: var StandardInteger; newU: var StandardReal) {.
    importcpp: "BSplCLib::LocateParameter(@)", header: "BSplCLib.hxx".}
proc locateParameter*(degree: StandardInteger; knots: TColStdArray1OfReal;
                     mults: ptr TColStdArray1OfInteger; u: StandardReal;
                     periodic: StandardBoolean; index: var StandardInteger;
                     newU: var StandardReal) {.
    importcpp: "BSplCLib::LocateParameter(@)", header: "BSplCLib.hxx".}
proc maxKnotMult*(mults: TColStdArray1OfInteger; k1: StandardInteger;
                 k2: StandardInteger): StandardInteger {.
    importcpp: "BSplCLib::MaxKnotMult(@)", header: "BSplCLib.hxx".}
proc minKnotMult*(mults: TColStdArray1OfInteger; k1: StandardInteger;
                 k2: StandardInteger): StandardInteger {.
    importcpp: "BSplCLib::MinKnotMult(@)", header: "BSplCLib.hxx".}
proc nbPoles*(degree: StandardInteger; periodic: StandardBoolean;
             mults: TColStdArray1OfInteger): StandardInteger {.
    importcpp: "BSplCLib::NbPoles(@)", header: "BSplCLib.hxx".}
proc knotSequenceLength*(mults: TColStdArray1OfInteger; degree: StandardInteger;
                        periodic: StandardBoolean): StandardInteger {.
    importcpp: "BSplCLib::KnotSequenceLength(@)", header: "BSplCLib.hxx".}
proc knotSequence*(knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                  knotSeq: var TColStdArray1OfReal;
                  periodic: StandardBoolean = standardFalse) {.
    importcpp: "BSplCLib::KnotSequence(@)", header: "BSplCLib.hxx".}
proc knotSequence*(knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                  degree: StandardInteger; periodic: StandardBoolean;
                  knotSeq: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::KnotSequence(@)", header: "BSplCLib.hxx".}
proc knotsLength*(knotSeq: TColStdArray1OfReal;
                 periodic: StandardBoolean = standardFalse): StandardInteger {.
    importcpp: "BSplCLib::KnotsLength(@)", header: "BSplCLib.hxx".}
proc knots*(knotSeq: TColStdArray1OfReal; knots: var TColStdArray1OfReal;
           mults: var TColStdArray1OfInteger;
           periodic: StandardBoolean = standardFalse) {.
    importcpp: "BSplCLib::Knots(@)", header: "BSplCLib.hxx".}
proc knotForm*(knots: TColStdArray1OfReal; fromK1: StandardInteger;
              toK2: StandardInteger): BSplCLibKnotDistribution {.
    importcpp: "BSplCLib::KnotForm(@)", header: "BSplCLib.hxx".}
proc multForm*(mults: TColStdArray1OfInteger; fromK1: StandardInteger;
              toK2: StandardInteger): BSplCLibMultDistribution {.
    importcpp: "BSplCLib::MultForm(@)", header: "BSplCLib.hxx".}
proc knotAnalysis*(degree: StandardInteger; periodic: StandardBoolean;
                  cKnots: TColStdArray1OfReal; cMults: TColStdArray1OfInteger;
                  knotForm: var GeomAbsBSplKnotDistribution;
                  maxKnotMult: var StandardInteger) {.
    importcpp: "BSplCLib::KnotAnalysis(@)", header: "BSplCLib.hxx".}
proc reparametrize*(u1: StandardReal; u2: StandardReal;
                   knots: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Reparametrize(@)", header: "BSplCLib.hxx".}
proc reverse*(knots: var TColStdArray1OfReal) {.importcpp: "BSplCLib::Reverse(@)",
    header: "BSplCLib.hxx".}
proc reverse*(mults: var TColStdArray1OfInteger) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc reverse*(poles: var TColgpArray1OfPnt; last: StandardInteger) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc reverse*(poles: var TColgpArray1OfPnt2d; last: StandardInteger) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc reverse*(weights: var TColStdArray1OfReal; last: StandardInteger) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc isRational*(weights: TColStdArray1OfReal; i1: StandardInteger;
                i2: StandardInteger; epsilon: StandardReal = 0.0): StandardBoolean {.
    importcpp: "BSplCLib::IsRational(@)", header: "BSplCLib.hxx".}
proc maxDegree*(): StandardInteger {.importcpp: "BSplCLib::MaxDegree(@)",
                                  header: "BSplCLib.hxx".}
proc eval*(u: StandardReal; degree: StandardInteger; knots: var StandardReal;
          dimension: StandardInteger; poles: var StandardReal) {.
    importcpp: "BSplCLib::Eval(@)", header: "BSplCLib.hxx".}
proc boorScheme*(u: StandardReal; degree: StandardInteger; knots: var StandardReal;
                dimension: StandardInteger; poles: var StandardReal;
                depth: StandardInteger; length: StandardInteger) {.
    importcpp: "BSplCLib::BoorScheme(@)", header: "BSplCLib.hxx".}
proc antiBoorScheme*(u: StandardReal; degree: StandardInteger;
                    knots: var StandardReal; dimension: StandardInteger;
                    poles: var StandardReal; depth: StandardInteger;
                    length: StandardInteger; tolerance: StandardReal): StandardBoolean {.
    importcpp: "BSplCLib::AntiBoorScheme(@)", header: "BSplCLib.hxx".}
proc derivative*(degree: StandardInteger; knots: var StandardReal;
                dimension: StandardInteger; length: StandardInteger;
                order: StandardInteger; poles: var StandardReal) {.
    importcpp: "BSplCLib::Derivative(@)", header: "BSplCLib.hxx".}
proc bohm*(u: StandardReal; degree: StandardInteger; n: StandardInteger;
          knots: var StandardReal; dimension: StandardInteger;
          poles: var StandardReal) {.importcpp: "BSplCLib::Bohm(@)",
                                  header: "BSplCLib.hxx".}
proc noWeights*(): ptr TColStdArray1OfReal {.importcpp: "BSplCLib::NoWeights(@)",
    header: "BSplCLib.hxx".}
proc noMults*(): ptr TColStdArray1OfInteger {.importcpp: "BSplCLib::NoMults(@)",
    header: "BSplCLib.hxx".}
proc buildKnots*(degree: StandardInteger; index: StandardInteger;
                periodic: StandardBoolean; knots: TColStdArray1OfReal;
                mults: ptr TColStdArray1OfInteger; lk: var StandardReal) {.
    importcpp: "BSplCLib::BuildKnots(@)", header: "BSplCLib.hxx".}
proc poleIndex*(degree: StandardInteger; index: StandardInteger;
               periodic: StandardBoolean; mults: TColStdArray1OfInteger): StandardInteger {.
    importcpp: "BSplCLib::PoleIndex(@)", header: "BSplCLib.hxx".}
proc buildEval*(degree: StandardInteger; index: StandardInteger;
               poles: TColStdArray1OfReal; weights: ptr TColStdArray1OfReal;
               lp: var StandardReal) {.importcpp: "BSplCLib::BuildEval(@)",
                                    header: "BSplCLib.hxx".}
proc buildEval*(degree: StandardInteger; index: StandardInteger;
               poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
               lp: var StandardReal) {.importcpp: "BSplCLib::BuildEval(@)",
                                    header: "BSplCLib.hxx".}
proc buildEval*(degree: StandardInteger; index: StandardInteger;
               poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
               lp: var StandardReal) {.importcpp: "BSplCLib::BuildEval(@)",
                                    header: "BSplCLib.hxx".}
proc buildBoor*(index: StandardInteger; length: StandardInteger;
               dimension: StandardInteger; poles: TColStdArray1OfReal;
               lp: var StandardReal) {.importcpp: "BSplCLib::BuildBoor(@)",
                                    header: "BSplCLib.hxx".}
proc boorIndex*(index: StandardInteger; length: StandardInteger;
               depth: StandardInteger): StandardInteger {.
    importcpp: "BSplCLib::BoorIndex(@)", header: "BSplCLib.hxx".}
proc getPole*(index: StandardInteger; length: StandardInteger;
             depth: StandardInteger; dimension: StandardInteger;
             locPoles: var StandardReal; position: var StandardInteger;
             pole: var TColStdArray1OfReal) {.importcpp: "BSplCLib::GetPole(@)",
    header: "BSplCLib.hxx".}
proc prepareInsertKnots*(degree: StandardInteger; periodic: StandardBoolean;
                        knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                        addKnots: TColStdArray1OfReal;
                        addMults: ptr TColStdArray1OfInteger;
                        nbPoles: var StandardInteger; nbKnots: var StandardInteger;
                        epsilon: StandardReal; add: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "BSplCLib::PrepareInsertKnots(@)", header: "BSplCLib.hxx".}
proc insertKnots*(degree: StandardInteger; periodic: StandardBoolean;
                 dimension: StandardInteger; poles: TColStdArray1OfReal;
                 knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                 addKnots: TColStdArray1OfReal;
                 addMults: ptr TColStdArray1OfInteger;
                 newPoles: var TColStdArray1OfReal;
                 newKnots: var TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger; epsilon: StandardReal;
                 add: StandardBoolean = standardTrue) {.
    importcpp: "BSplCLib::InsertKnots(@)", header: "BSplCLib.hxx".}
proc insertKnots*(degree: StandardInteger; periodic: StandardBoolean;
                 poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                 knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                 addKnots: TColStdArray1OfReal;
                 addMults: ptr TColStdArray1OfInteger;
                 newPoles: var TColgpArray1OfPnt;
                 newWeights: ptr TColStdArray1OfReal;
                 newKnots: var TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger; epsilon: StandardReal;
                 add: StandardBoolean = standardTrue) {.
    importcpp: "BSplCLib::InsertKnots(@)", header: "BSplCLib.hxx".}
proc insertKnots*(degree: StandardInteger; periodic: StandardBoolean;
                 poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
                 knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                 addKnots: TColStdArray1OfReal;
                 addMults: ptr TColStdArray1OfInteger;
                 newPoles: var TColgpArray1OfPnt2d;
                 newWeights: ptr TColStdArray1OfReal;
                 newKnots: var TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger; epsilon: StandardReal;
                 add: StandardBoolean = standardTrue) {.
    importcpp: "BSplCLib::InsertKnots(@)", header: "BSplCLib.hxx".}
proc insertKnot*(uIndex: StandardInteger; u: StandardReal; uMult: StandardInteger;
                degree: StandardInteger; periodic: StandardBoolean;
                poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                newPoles: var TColgpArray1OfPnt;
                newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::InsertKnot(@)", header: "BSplCLib.hxx".}
proc insertKnot*(uIndex: StandardInteger; u: StandardReal; uMult: StandardInteger;
                degree: StandardInteger; periodic: StandardBoolean;
                poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
                knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                newPoles: var TColgpArray1OfPnt2d;
                newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::InsertKnot(@)", header: "BSplCLib.hxx".}
proc raiseMultiplicity*(knotIndex: StandardInteger; mult: StandardInteger;
                       degree: StandardInteger; periodic: StandardBoolean;
                       poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                       knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                       newPoles: var TColgpArray1OfPnt;
                       newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::RaiseMultiplicity(@)", header: "BSplCLib.hxx".}
proc raiseMultiplicity*(knotIndex: StandardInteger; mult: StandardInteger;
                       degree: StandardInteger; periodic: StandardBoolean;
                       poles: TColgpArray1OfPnt2d;
                       weights: ptr TColStdArray1OfReal;
                       knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                       newPoles: var TColgpArray1OfPnt2d;
                       newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::RaiseMultiplicity(@)", header: "BSplCLib.hxx".}
proc removeKnot*(index: StandardInteger; mult: StandardInteger;
                degree: StandardInteger; periodic: StandardBoolean;
                dimension: StandardInteger; poles: TColStdArray1OfReal;
                knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                newPoles: var TColStdArray1OfReal;
                newKnots: var TColStdArray1OfReal;
                newMults: var TColStdArray1OfInteger; tolerance: StandardReal): StandardBoolean {.
    importcpp: "BSplCLib::RemoveKnot(@)", header: "BSplCLib.hxx".}
proc removeKnot*(index: StandardInteger; mult: StandardInteger;
                degree: StandardInteger; periodic: StandardBoolean;
                poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                newPoles: var TColgpArray1OfPnt;
                newWeights: ptr TColStdArray1OfReal;
                newKnots: var TColStdArray1OfReal;
                newMults: var TColStdArray1OfInteger; tolerance: StandardReal): StandardBoolean {.
    importcpp: "BSplCLib::RemoveKnot(@)", header: "BSplCLib.hxx".}
proc removeKnot*(index: StandardInteger; mult: StandardInteger;
                degree: StandardInteger; periodic: StandardBoolean;
                poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
                knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                newPoles: var TColgpArray1OfPnt2d;
                newWeights: ptr TColStdArray1OfReal;
                newKnots: var TColStdArray1OfReal;
                newMults: var TColStdArray1OfInteger; tolerance: StandardReal): StandardBoolean {.
    importcpp: "BSplCLib::RemoveKnot(@)", header: "BSplCLib.hxx".}
proc increaseDegreeCountKnots*(degree: StandardInteger; newDegree: StandardInteger;
                              periodic: StandardBoolean;
                              mults: TColStdArray1OfInteger): StandardInteger {.
    importcpp: "BSplCLib::IncreaseDegreeCountKnots(@)", header: "BSplCLib.hxx".}
proc increaseDegree*(degree: StandardInteger; newDegree: StandardInteger;
                    periodic: StandardBoolean; dimension: StandardInteger;
                    poles: TColStdArray1OfReal; knots: TColStdArray1OfReal;
                    mults: TColStdArray1OfInteger;
                    newPoles: var TColStdArray1OfReal;
                    newKnots: var TColStdArray1OfReal;
                    newMults: var TColStdArray1OfInteger) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc increaseDegree*(degree: StandardInteger; newDegree: StandardInteger;
                    periodic: StandardBoolean; poles: TColgpArray1OfPnt;
                    weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
                    mults: TColStdArray1OfInteger;
                    newPoles: var TColgpArray1OfPnt;
                    newWeights: ptr TColStdArray1OfReal;
                    newKnots: var TColStdArray1OfReal;
                    newMults: var TColStdArray1OfInteger) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc increaseDegree*(degree: StandardInteger; newDegree: StandardInteger;
                    periodic: StandardBoolean; poles: TColgpArray1OfPnt2d;
                    weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
                    mults: TColStdArray1OfInteger;
                    newPoles: var TColgpArray1OfPnt2d;
                    newWeights: ptr TColStdArray1OfReal;
                    newKnots: var TColStdArray1OfReal;
                    newMults: var TColStdArray1OfInteger) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc increaseDegree*(newDegree: StandardInteger; poles: TColgpArray1OfPnt;
                    weights: ptr TColStdArray1OfReal;
                    newPoles: var TColgpArray1OfPnt;
                    newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc increaseDegree*(newDegree: StandardInteger; poles: TColgpArray1OfPnt2d;
                    weights: ptr TColStdArray1OfReal;
                    newPoles: var TColgpArray1OfPnt2d;
                    newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc prepareUnperiodize*(degree: StandardInteger; mults: TColStdArray1OfInteger;
                        nbKnots: var StandardInteger; nbPoles: var StandardInteger) {.
    importcpp: "BSplCLib::PrepareUnperiodize(@)", header: "BSplCLib.hxx".}
proc unperiodize*(degree: StandardInteger; dimension: StandardInteger;
                 mults: TColStdArray1OfInteger; knots: TColStdArray1OfReal;
                 poles: TColStdArray1OfReal; newMults: var TColStdArray1OfInteger;
                 newKnots: var TColStdArray1OfReal;
                 newPoles: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Unperiodize(@)", header: "BSplCLib.hxx".}
proc unperiodize*(degree: StandardInteger; mults: TColStdArray1OfInteger;
                 knots: TColStdArray1OfReal; poles: TColgpArray1OfPnt;
                 weights: ptr TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger;
                 newKnots: var TColStdArray1OfReal;
                 newPoles: var TColgpArray1OfPnt;
                 newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Unperiodize(@)", header: "BSplCLib.hxx".}
proc unperiodize*(degree: StandardInteger; mults: TColStdArray1OfInteger;
                 knots: TColStdArray1OfReal; poles: TColgpArray1OfPnt2d;
                 weights: ptr TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger;
                 newKnots: var TColStdArray1OfReal;
                 newPoles: var TColgpArray1OfPnt2d;
                 newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Unperiodize(@)", header: "BSplCLib.hxx".}
proc prepareTrimming*(degree: StandardInteger; periodic: StandardBoolean;
                     knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                     u1: StandardReal; u2: StandardReal;
                     nbKnots: var StandardInteger; nbPoles: var StandardInteger) {.
    importcpp: "BSplCLib::PrepareTrimming(@)", header: "BSplCLib.hxx".}
proc trimming*(degree: StandardInteger; periodic: StandardBoolean;
              dimension: StandardInteger; knots: TColStdArray1OfReal;
              mults: TColStdArray1OfInteger; poles: TColStdArray1OfReal;
              u1: StandardReal; u2: StandardReal; newKnots: var TColStdArray1OfReal;
              newMults: var TColStdArray1OfInteger;
              newPoles: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Trimming(@)", header: "BSplCLib.hxx".}
proc trimming*(degree: StandardInteger; periodic: StandardBoolean;
              knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
              poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
              u1: StandardReal; u2: StandardReal; newKnots: var TColStdArray1OfReal;
              newMults: var TColStdArray1OfInteger;
              newPoles: var TColgpArray1OfPnt; newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Trimming(@)", header: "BSplCLib.hxx".}
proc trimming*(degree: StandardInteger; periodic: StandardBoolean;
              knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
              poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
              u1: StandardReal; u2: StandardReal; newKnots: var TColStdArray1OfReal;
              newMults: var TColStdArray1OfInteger;
              newPoles: var TColgpArray1OfPnt2d;
              newWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::Trimming(@)", header: "BSplCLib.hxx".}
proc d0*(u: StandardReal; index: StandardInteger; degree: StandardInteger;
        periodic: StandardBoolean; poles: TColStdArray1OfReal;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var StandardReal) {.
    importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc d0*(u: StandardReal; index: StandardInteger; degree: StandardInteger;
        periodic: StandardBoolean; poles: TColgpArray1OfPnt;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var GpPnt) {.
    importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc d0*(u: StandardReal; uIndex: StandardInteger; degree: StandardInteger;
        periodic: StandardBoolean; poles: TColgpArray1OfPnt2d;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var GpPnt2d) {.
    importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc d0*(u: StandardReal; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
        p: var GpPnt) {.importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc d0*(u: StandardReal; poles: TColgpArray1OfPnt2d;
        weights: ptr TColStdArray1OfReal; p: var GpPnt2d) {.
    importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc d1*(u: StandardReal; index: StandardInteger; degree: StandardInteger;
        periodic: StandardBoolean; poles: TColStdArray1OfReal;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var StandardReal; v: var StandardReal) {.
    importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc d1*(u: StandardReal; index: StandardInteger; degree: StandardInteger;
        periodic: StandardBoolean; poles: TColgpArray1OfPnt;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var GpPnt; v: var GpVec) {.
    importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc d1*(u: StandardReal; uIndex: StandardInteger; degree: StandardInteger;
        periodic: StandardBoolean; poles: TColgpArray1OfPnt2d;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var GpPnt2d; v: var GpVec2d) {.
    importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc d1*(u: StandardReal; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
        p: var GpPnt; v: var GpVec) {.importcpp: "BSplCLib::D1(@)",
                                header: "BSplCLib.hxx".}
proc d1*(u: StandardReal; poles: TColgpArray1OfPnt2d;
        weights: ptr TColStdArray1OfReal; p: var GpPnt2d; v: var GpVec2d) {.
    importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc d2*(u: StandardReal; index: StandardInteger; degree: StandardInteger;
        periodic: StandardBoolean; poles: TColStdArray1OfReal;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var StandardReal; v1: var StandardReal;
        v2: var StandardReal) {.importcpp: "BSplCLib::D2(@)", header: "BSplCLib.hxx".}
proc d2*(u: StandardReal; index: StandardInteger; degree: StandardInteger;
        periodic: StandardBoolean; poles: TColgpArray1OfPnt;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var GpPnt; v1: var GpVec; v2: var GpVec) {.
    importcpp: "BSplCLib::D2(@)", header: "BSplCLib.hxx".}
proc d2*(u: StandardReal; uIndex: StandardInteger; degree: StandardInteger;
        periodic: StandardBoolean; poles: TColgpArray1OfPnt2d;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d) {.importcpp: "BSplCLib::D2(@)", header: "BSplCLib.hxx".}
proc d2*(u: StandardReal; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
        p: var GpPnt; v1: var GpVec; v2: var GpVec) {.importcpp: "BSplCLib::D2(@)",
    header: "BSplCLib.hxx".}
proc d2*(u: StandardReal; poles: TColgpArray1OfPnt2d;
        weights: ptr TColStdArray1OfReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d) {.importcpp: "BSplCLib::D2(@)", header: "BSplCLib.hxx".}
proc d3*(u: StandardReal; index: StandardInteger; degree: StandardInteger;
        periodic: StandardBoolean; poles: TColStdArray1OfReal;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var StandardReal; v1: var StandardReal;
        v2: var StandardReal; v3: var StandardReal) {.importcpp: "BSplCLib::D3(@)",
    header: "BSplCLib.hxx".}
proc d3*(u: StandardReal; index: StandardInteger; degree: StandardInteger;
        periodic: StandardBoolean; poles: TColgpArray1OfPnt;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var GpPnt; v1: var GpVec; v2: var GpVec;
        v3: var GpVec) {.importcpp: "BSplCLib::D3(@)", header: "BSplCLib.hxx".}
proc d3*(u: StandardReal; uIndex: StandardInteger; degree: StandardInteger;
        periodic: StandardBoolean; poles: TColgpArray1OfPnt2d;
        weights: ptr TColStdArray1OfReal; knots: TColStdArray1OfReal;
        mults: ptr TColStdArray1OfInteger; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d; v3: var GpVec2d) {.importcpp: "BSplCLib::D3(@)",
                                      header: "BSplCLib.hxx".}
proc d3*(u: StandardReal; poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
        p: var GpPnt; v1: var GpVec; v2: var GpVec; v3: var GpVec) {.
    importcpp: "BSplCLib::D3(@)", header: "BSplCLib.hxx".}
proc d3*(u: StandardReal; poles: TColgpArray1OfPnt2d;
        weights: ptr TColStdArray1OfReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d; v3: var GpVec2d) {.importcpp: "BSplCLib::D3(@)",
                                      header: "BSplCLib.hxx".}
proc dn*(u: StandardReal; n: StandardInteger; index: StandardInteger;
        degree: StandardInteger; periodic: StandardBoolean;
        poles: TColStdArray1OfReal; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger;
        vn: var StandardReal) {.importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc dn*(u: StandardReal; n: StandardInteger; index: StandardInteger;
        degree: StandardInteger; periodic: StandardBoolean;
        poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; vn: var GpVec) {.
    importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc dn*(u: StandardReal; n: StandardInteger; uIndex: StandardInteger;
        degree: StandardInteger; periodic: StandardBoolean;
        poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
        knots: TColStdArray1OfReal; mults: ptr TColStdArray1OfInteger; v: var GpVec2d) {.
    importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc dn*(u: StandardReal; n: StandardInteger; poles: TColgpArray1OfPnt;
        weights: TColStdArray1OfReal; p: var GpPnt; vn: var GpVec) {.
    importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc dn*(u: StandardReal; n: StandardInteger; poles: TColgpArray1OfPnt2d;
        weights: TColStdArray1OfReal; p: var GpPnt2d; vn: var GpVec2d) {.
    importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc evalBsplineBasis*(derivativeOrder: StandardInteger; order: StandardInteger;
                      flatKnots: TColStdArray1OfReal; parameter: StandardReal;
                      firstNonZeroBsplineIndex: var StandardInteger;
                      bsplineBasis: var MathMatrix;
                      isPeriodic: StandardBoolean = standardFalse): StandardInteger {.
    importcpp: "BSplCLib::EvalBsplineBasis(@)", header: "BSplCLib.hxx".}
proc buildBSpMatrix*(parameters: TColStdArray1OfReal;
                    orderArray: TColStdArray1OfInteger;
                    flatKnots: TColStdArray1OfReal; degree: StandardInteger;
                    matrix: var MathMatrix; upperBandWidth: var StandardInteger;
                    lowerBandWidth: var StandardInteger): StandardInteger {.
    importcpp: "BSplCLib::BuildBSpMatrix(@)", header: "BSplCLib.hxx".}
proc factorBandedMatrix*(matrix: var MathMatrix; upperBandWidth: StandardInteger;
                        lowerBandWidth: StandardInteger;
                        pivotIndexProblem: var StandardInteger): StandardInteger {.
    importcpp: "BSplCLib::FactorBandedMatrix(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: StandardInteger;
                       lowerBandWidth: StandardInteger;
                       arrayDimension: StandardInteger; array: var StandardReal): StandardInteger {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: StandardInteger;
                       lowerBandWidth: StandardInteger;
                       array: var TColgpArray1OfPnt2d): StandardInteger {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: StandardInteger;
                       lowerBandWidth: StandardInteger;
                       array: var TColgpArray1OfPnt): StandardInteger {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: StandardInteger;
                       lowerBandWidth: StandardInteger;
                       homogenousFlag: StandardBoolean;
                       arrayDimension: StandardInteger; array: var StandardReal;
                       weights: var StandardReal): StandardInteger {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: StandardInteger;
                       lowerBandWidth: StandardInteger;
                       homogenousFlag: StandardBoolean;
                       array: var TColgpArray1OfPnt2d;
                       weights: var TColStdArray1OfReal): StandardInteger {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc solveBandedSystem*(matrix: MathMatrix; upperBandWidth: StandardInteger;
                       lowerBandWidth: StandardInteger;
                       homogeneousFlag: StandardBoolean;
                       array: var TColgpArray1OfPnt;
                       weights: var TColStdArray1OfReal): StandardInteger {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc mergeBSplineKnots*(tolerance: StandardReal; startValue: StandardReal;
                       endValue: StandardReal; degree1: StandardInteger;
                       knots1: TColStdArray1OfReal;
                       mults1: TColStdArray1OfInteger; degree2: StandardInteger;
                       knots2: TColStdArray1OfReal;
                       mults2: TColStdArray1OfInteger;
                       numPoles: var StandardInteger;
                       newKnots: var Handle[TColStdHArray1OfReal];
                       newMults: var Handle[TColStdHArray1OfInteger]) {.
    importcpp: "BSplCLib::MergeBSplineKnots(@)", header: "BSplCLib.hxx".}
proc functionReparameterise*(function: BSplCLibEvaluatorFunction;
                            bSplineDegree: StandardInteger;
                            bSplineFlatKnots: TColStdArray1OfReal;
                            polesDimension: StandardInteger;
                            poles: var StandardReal;
                            flatKnots: TColStdArray1OfReal;
                            newDegree: StandardInteger;
                            newPoles: var StandardReal;
                            theStatus: var StandardInteger) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc functionReparameterise*(function: BSplCLibEvaluatorFunction;
                            bSplineDegree: StandardInteger;
                            bSplineFlatKnots: TColStdArray1OfReal;
                            poles: TColStdArray1OfReal;
                            flatKnots: TColStdArray1OfReal;
                            newDegree: StandardInteger;
                            newPoles: var TColStdArray1OfReal;
                            theStatus: var StandardInteger) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc functionReparameterise*(function: BSplCLibEvaluatorFunction;
                            bSplineDegree: StandardInteger;
                            bSplineFlatKnots: TColStdArray1OfReal;
                            poles: TColgpArray1OfPnt;
                            flatKnots: TColStdArray1OfReal;
                            newDegree: StandardInteger;
                            newPoles: var TColgpArray1OfPnt;
                            theStatus: var StandardInteger) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc functionReparameterise*(function: BSplCLibEvaluatorFunction;
                            bSplineDegree: StandardInteger;
                            bSplineFlatKnots: TColStdArray1OfReal;
                            poles: TColgpArray1OfPnt2d;
                            flatKnots: TColStdArray1OfReal;
                            newDegree: StandardInteger;
                            newPoles: var TColgpArray1OfPnt2d;
                            theStatus: var StandardInteger) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc functionMultiply*(function: BSplCLibEvaluatorFunction;
                      bSplineDegree: StandardInteger;
                      bSplineFlatKnots: TColStdArray1OfReal;
                      polesDimension: StandardInteger; poles: var StandardReal;
                      flatKnots: TColStdArray1OfReal; newDegree: StandardInteger;
                      newPoles: var StandardReal; theStatus: var StandardInteger) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc functionMultiply*(function: BSplCLibEvaluatorFunction;
                      bSplineDegree: StandardInteger;
                      bSplineFlatKnots: TColStdArray1OfReal;
                      poles: TColStdArray1OfReal; flatKnots: TColStdArray1OfReal;
                      newDegree: StandardInteger;
                      newPoles: var TColStdArray1OfReal;
                      theStatus: var StandardInteger) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc functionMultiply*(function: BSplCLibEvaluatorFunction;
                      bSplineDegree: StandardInteger;
                      bSplineFlatKnots: TColStdArray1OfReal;
                      poles: TColgpArray1OfPnt2d; flatKnots: TColStdArray1OfReal;
                      newDegree: StandardInteger;
                      newPoles: var TColgpArray1OfPnt2d;
                      theStatus: var StandardInteger) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc functionMultiply*(function: BSplCLibEvaluatorFunction;
                      bSplineDegree: StandardInteger;
                      bSplineFlatKnots: TColStdArray1OfReal;
                      poles: TColgpArray1OfPnt; flatKnots: TColStdArray1OfReal;
                      newDegree: StandardInteger; newPoles: var TColgpArray1OfPnt;
                      theStatus: var StandardInteger) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc eval*(u: StandardReal; periodicFlag: StandardBoolean;
          derivativeRequest: StandardInteger; extrapMode: var StandardInteger;
          degree: StandardInteger; flatKnots: TColStdArray1OfReal;
          arrayDimension: StandardInteger; poles: var StandardReal;
          result: var StandardReal) {.importcpp: "BSplCLib::Eval(@)",
                                   header: "BSplCLib.hxx".}
proc eval*(u: StandardReal; periodicFlag: StandardBoolean;
          derivativeRequest: StandardInteger; extrapMode: var StandardInteger;
          degree: StandardInteger; flatKnots: TColStdArray1OfReal;
          arrayDimension: StandardInteger; poles: var StandardReal;
          weights: var StandardReal; polesResult: var StandardReal;
          weightsResult: var StandardReal) {.importcpp: "BSplCLib::Eval(@)",
    header: "BSplCLib.hxx".}
proc eval*(u: StandardReal; periodicFlag: StandardBoolean;
          homogeneousFlag: StandardBoolean; extrapMode: var StandardInteger;
          degree: StandardInteger; flatKnots: TColStdArray1OfReal;
          poles: TColgpArray1OfPnt; weights: TColStdArray1OfReal; point: var GpPnt;
          weight: var StandardReal) {.importcpp: "BSplCLib::Eval(@)",
                                   header: "BSplCLib.hxx".}
proc eval*(u: StandardReal; periodicFlag: StandardBoolean;
          homogeneousFlag: StandardBoolean; extrapMode: var StandardInteger;
          degree: StandardInteger; flatKnots: TColStdArray1OfReal;
          poles: TColgpArray1OfPnt2d; weights: TColStdArray1OfReal;
          point: var GpPnt2d; weight: var StandardReal) {.
    importcpp: "BSplCLib::Eval(@)", header: "BSplCLib.hxx".}
proc tangExtendToConstraint*(flatKnots: TColStdArray1OfReal;
                            c1Coefficient: StandardReal;
                            numPoles: StandardInteger; poles: var StandardReal;
                            dimension: StandardInteger; degree: StandardInteger;
                            constraintPoint: TColStdArray1OfReal;
                            continuity: StandardInteger; after: StandardBoolean;
                            nbPolesResult: var StandardInteger;
                            nbKnotsRsult: var StandardInteger;
                            knotsResult: var StandardReal;
                            polesResult: var StandardReal) {.
    importcpp: "BSplCLib::TangExtendToConstraint(@)", header: "BSplCLib.hxx".}
proc cacheD0*(u: StandardReal; degree: StandardInteger; cacheParameter: StandardReal;
             spanLenght: StandardReal; poles: TColgpArray1OfPnt;
             weights: ptr TColStdArray1OfReal; point: var GpPnt) {.
    importcpp: "BSplCLib::CacheD0(@)", header: "BSplCLib.hxx".}
proc cacheD0*(u: StandardReal; degree: StandardInteger; cacheParameter: StandardReal;
             spanLenght: StandardReal; poles: TColgpArray1OfPnt2d;
             weights: ptr TColStdArray1OfReal; point: var GpPnt2d) {.
    importcpp: "BSplCLib::CacheD0(@)", header: "BSplCLib.hxx".}
proc coefsD0*(u: StandardReal; poles: TColgpArray1OfPnt;
             weights: ptr TColStdArray1OfReal; point: var GpPnt) {.
    importcpp: "BSplCLib::CoefsD0(@)", header: "BSplCLib.hxx".}
proc coefsD0*(u: StandardReal; poles: TColgpArray1OfPnt2d;
             weights: ptr TColStdArray1OfReal; point: var GpPnt2d) {.
    importcpp: "BSplCLib::CoefsD0(@)", header: "BSplCLib.hxx".}
proc cacheD1*(u: StandardReal; degree: StandardInteger; cacheParameter: StandardReal;
             spanLenght: StandardReal; poles: TColgpArray1OfPnt;
             weights: ptr TColStdArray1OfReal; point: var GpPnt; vec: var GpVec) {.
    importcpp: "BSplCLib::CacheD1(@)", header: "BSplCLib.hxx".}
proc cacheD1*(u: StandardReal; degree: StandardInteger; cacheParameter: StandardReal;
             spanLenght: StandardReal; poles: TColgpArray1OfPnt2d;
             weights: ptr TColStdArray1OfReal; point: var GpPnt2d; vec: var GpVec2d) {.
    importcpp: "BSplCLib::CacheD1(@)", header: "BSplCLib.hxx".}
proc coefsD1*(u: StandardReal; poles: TColgpArray1OfPnt;
             weights: ptr TColStdArray1OfReal; point: var GpPnt; vec: var GpVec) {.
    importcpp: "BSplCLib::CoefsD1(@)", header: "BSplCLib.hxx".}
proc coefsD1*(u: StandardReal; poles: TColgpArray1OfPnt2d;
             weights: ptr TColStdArray1OfReal; point: var GpPnt2d; vec: var GpVec2d) {.
    importcpp: "BSplCLib::CoefsD1(@)", header: "BSplCLib.hxx".}
proc cacheD2*(u: StandardReal; degree: StandardInteger; cacheParameter: StandardReal;
             spanLenght: StandardReal; poles: TColgpArray1OfPnt;
             weights: ptr TColStdArray1OfReal; point: var GpPnt; vec1: var GpVec;
             vec2: var GpVec) {.importcpp: "BSplCLib::CacheD2(@)",
                             header: "BSplCLib.hxx".}
proc cacheD2*(u: StandardReal; degree: StandardInteger; cacheParameter: StandardReal;
             spanLenght: StandardReal; poles: TColgpArray1OfPnt2d;
             weights: ptr TColStdArray1OfReal; point: var GpPnt2d; vec1: var GpVec2d;
             vec2: var GpVec2d) {.importcpp: "BSplCLib::CacheD2(@)",
                               header: "BSplCLib.hxx".}
proc coefsD2*(u: StandardReal; poles: TColgpArray1OfPnt;
             weights: ptr TColStdArray1OfReal; point: var GpPnt; vec1: var GpVec;
             vec2: var GpVec) {.importcpp: "BSplCLib::CoefsD2(@)",
                             header: "BSplCLib.hxx".}
proc coefsD2*(u: StandardReal; poles: TColgpArray1OfPnt2d;
             weights: ptr TColStdArray1OfReal; point: var GpPnt2d; vec1: var GpVec2d;
             vec2: var GpVec2d) {.importcpp: "BSplCLib::CoefsD2(@)",
                               header: "BSplCLib.hxx".}
proc cacheD3*(u: StandardReal; degree: StandardInteger; cacheParameter: StandardReal;
             spanLenght: StandardReal; poles: TColgpArray1OfPnt;
             weights: ptr TColStdArray1OfReal; point: var GpPnt; vec1: var GpVec;
             vec2: var GpVec; vec3: var GpVec) {.importcpp: "BSplCLib::CacheD3(@)",
    header: "BSplCLib.hxx".}
proc cacheD3*(u: StandardReal; degree: StandardInteger; cacheParameter: StandardReal;
             spanLenght: StandardReal; poles: TColgpArray1OfPnt2d;
             weights: ptr TColStdArray1OfReal; point: var GpPnt2d; vec1: var GpVec2d;
             vec2: var GpVec2d; vec3: var GpVec2d) {.
    importcpp: "BSplCLib::CacheD3(@)", header: "BSplCLib.hxx".}
proc coefsD3*(u: StandardReal; poles: TColgpArray1OfPnt;
             weights: ptr TColStdArray1OfReal; point: var GpPnt; vec1: var GpVec;
             vec2: var GpVec; vec3: var GpVec) {.importcpp: "BSplCLib::CoefsD3(@)",
    header: "BSplCLib.hxx".}
proc coefsD3*(u: StandardReal; poles: TColgpArray1OfPnt2d;
             weights: ptr TColStdArray1OfReal; point: var GpPnt2d; vec1: var GpVec2d;
             vec2: var GpVec2d; vec3: var GpVec2d) {.
    importcpp: "BSplCLib::CoefsD3(@)", header: "BSplCLib.hxx".}
proc buildCache*(u: StandardReal; inverseOfSpanDomain: StandardReal;
                periodicFlag: StandardBoolean; degree: StandardInteger;
                flatKnots: TColStdArray1OfReal; poles: TColgpArray1OfPnt;
                weights: ptr TColStdArray1OfReal;
                cachePoles: var TColgpArray1OfPnt;
                cacheWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::BuildCache(@)", header: "BSplCLib.hxx".}
proc buildCache*(u: StandardReal; inverseOfSpanDomain: StandardReal;
                periodicFlag: StandardBoolean; degree: StandardInteger;
                flatKnots: TColStdArray1OfReal; poles: TColgpArray1OfPnt2d;
                weights: ptr TColStdArray1OfReal;
                cachePoles: var TColgpArray1OfPnt2d;
                cacheWeights: ptr TColStdArray1OfReal) {.
    importcpp: "BSplCLib::BuildCache(@)", header: "BSplCLib.hxx".}
proc buildCache*(theParameter: StandardReal; theSpanDomain: StandardReal;
                thePeriodicFlag: StandardBoolean; theDegree: StandardInteger;
                theSpanIndex: StandardInteger; theFlatKnots: TColStdArray1OfReal;
                thePoles: TColgpArray1OfPnt; theWeights: ptr TColStdArray1OfReal;
                theCacheArray: var TColStdArray2OfReal) {.
    importcpp: "BSplCLib::BuildCache(@)", header: "BSplCLib.hxx".}
proc buildCache*(theParameter: StandardReal; theSpanDomain: StandardReal;
                thePeriodicFlag: StandardBoolean; theDegree: StandardInteger;
                theSpanIndex: StandardInteger; theFlatKnots: TColStdArray1OfReal;
                thePoles: TColgpArray1OfPnt2d;
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
proc flatBezierKnots*(degree: StandardInteger): StandardReal {.
    importcpp: "BSplCLib::FlatBezierKnots(@)", header: "BSplCLib.hxx".}
proc buildSchoenbergPoints*(degree: StandardInteger;
                           flatKnots: TColStdArray1OfReal;
                           parameters: var TColStdArray1OfReal) {.
    importcpp: "BSplCLib::BuildSchoenbergPoints(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: StandardInteger; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger;
                 poles: var TColgpArray1OfPnt;
                 inversionProblem: var StandardInteger) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: StandardInteger; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger;
                 poles: var TColgpArray1OfPnt2d;
                 inversionProblem: var StandardInteger) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: StandardInteger; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger;
                 poles: var TColgpArray1OfPnt; weights: var TColStdArray1OfReal;
                 inversionProblem: var StandardInteger) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: StandardInteger; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger;
                 poles: var TColgpArray1OfPnt2d; weights: var TColStdArray1OfReal;
                 inversionProblem: var StandardInteger) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: StandardInteger; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger;
                 arrayDimension: StandardInteger; poles: var StandardReal;
                 inversionProblem: var StandardInteger) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc interpolate*(degree: StandardInteger; flatKnots: TColStdArray1OfReal;
                 parameters: TColStdArray1OfReal;
                 contactOrderArray: TColStdArray1OfInteger;
                 arrayDimension: StandardInteger; poles: var StandardReal;
                 weights: var StandardReal; inversionProblem: var StandardInteger) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc movePoint*(u: StandardReal; displ: GpVec2d; index1: StandardInteger;
               index2: StandardInteger; degree: StandardInteger;
               poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
               flatKnots: TColStdArray1OfReal; firstIndex: var StandardInteger;
               lastIndex: var StandardInteger; newPoles: var TColgpArray1OfPnt2d) {.
    importcpp: "BSplCLib::MovePoint(@)", header: "BSplCLib.hxx".}
proc movePoint*(u: StandardReal; displ: GpVec; index1: StandardInteger;
               index2: StandardInteger; degree: StandardInteger;
               poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
               flatKnots: TColStdArray1OfReal; firstIndex: var StandardInteger;
               lastIndex: var StandardInteger; newPoles: var TColgpArray1OfPnt) {.
    importcpp: "BSplCLib::MovePoint(@)", header: "BSplCLib.hxx".}
proc movePointAndTangent*(u: StandardReal; arrayDimension: StandardInteger;
                         delta: var StandardReal;
                         deltaDerivative: var StandardReal;
                         tolerance: StandardReal; degree: StandardInteger;
                         startingCondition: StandardInteger;
                         endingCondition: StandardInteger;
                         poles: var StandardReal; weights: ptr TColStdArray1OfReal;
                         flatKnots: TColStdArray1OfReal;
                         newPoles: var StandardReal;
                         errorStatus: var StandardInteger) {.
    importcpp: "BSplCLib::MovePointAndTangent(@)", header: "BSplCLib.hxx".}
proc movePointAndTangent*(u: StandardReal; delta: GpVec; deltaDerivative: GpVec;
                         tolerance: StandardReal; degree: StandardInteger;
                         startingCondition: StandardInteger;
                         endingCondition: StandardInteger;
                         poles: TColgpArray1OfPnt;
                         weights: ptr TColStdArray1OfReal;
                         flatKnots: TColStdArray1OfReal;
                         newPoles: var TColgpArray1OfPnt;
                         errorStatus: var StandardInteger) {.
    importcpp: "BSplCLib::MovePointAndTangent(@)", header: "BSplCLib.hxx".}
proc movePointAndTangent*(u: StandardReal; delta: GpVec2d; deltaDerivative: GpVec2d;
                         tolerance: StandardReal; degree: StandardInteger;
                         startingCondition: StandardInteger;
                         endingCondition: StandardInteger;
                         poles: TColgpArray1OfPnt2d;
                         weights: ptr TColStdArray1OfReal;
                         flatKnots: TColStdArray1OfReal;
                         newPoles: var TColgpArray1OfPnt2d;
                         errorStatus: var StandardInteger) {.
    importcpp: "BSplCLib::MovePointAndTangent(@)", header: "BSplCLib.hxx".}
proc resolution*(polesArray: var StandardReal; arrayDimension: StandardInteger;
                numPoles: StandardInteger; weights: ptr TColStdArray1OfReal;
                flatKnots: TColStdArray1OfReal; degree: StandardInteger;
                tolerance3D: StandardReal; uTolerance: var StandardReal) {.
    importcpp: "BSplCLib::Resolution(@)", header: "BSplCLib.hxx".}
proc resolution*(poles: TColgpArray1OfPnt; weights: ptr TColStdArray1OfReal;
                numPoles: StandardInteger; flatKnots: TColStdArray1OfReal;
                degree: StandardInteger; tolerance3D: StandardReal;
                uTolerance: var StandardReal) {.
    importcpp: "BSplCLib::Resolution(@)", header: "BSplCLib.hxx".}
proc resolution*(poles: TColgpArray1OfPnt2d; weights: ptr TColStdArray1OfReal;
                numPoles: StandardInteger; flatKnots: TColStdArray1OfReal;
                degree: StandardInteger; tolerance3D: StandardReal;
                uTolerance: var StandardReal) {.
    importcpp: "BSplCLib::Resolution(@)", header: "BSplCLib.hxx".}

