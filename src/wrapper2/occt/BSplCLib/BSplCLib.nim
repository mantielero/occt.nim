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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfInteger, ../Standard/Standard_Boolean,
  BSplCLib_KnotDistribution, BSplCLib_MultDistribution,
  ../GeomAbs/GeomAbs_BSplKnotDistribution, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_HArray1OfInteger, BSplCLib_EvaluatorFunction,
  ../TColStd/TColStd_Array2OfReal

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


proc Hunt*(theArray: TColStd_Array1OfReal; theX: Standard_Real;
          theXPos: var Standard_Integer) {.importcpp: "BSplCLib::Hunt(@)",
                                        header: "BSplCLib.hxx".}
proc FirstUKnotIndex*(Degree: Standard_Integer; Mults: TColStd_Array1OfInteger): Standard_Integer {.
    importcpp: "BSplCLib::FirstUKnotIndex(@)", header: "BSplCLib.hxx".}
proc LastUKnotIndex*(Degree: Standard_Integer; Mults: TColStd_Array1OfInteger): Standard_Integer {.
    importcpp: "BSplCLib::LastUKnotIndex(@)", header: "BSplCLib.hxx".}
proc FlatIndex*(Degree: Standard_Integer; Index: Standard_Integer;
               Mults: TColStd_Array1OfInteger; Periodic: Standard_Boolean): Standard_Integer {.
    importcpp: "BSplCLib::FlatIndex(@)", header: "BSplCLib.hxx".}
proc LocateParameter*(Degree: Standard_Integer; Knots: TColStd_Array1OfReal;
                     Mults: TColStd_Array1OfInteger; U: Standard_Real;
                     IsPeriodic: Standard_Boolean; FromK1: Standard_Integer;
                     ToK2: Standard_Integer; KnotIndex: var Standard_Integer;
                     NewU: var Standard_Real) {.
    importcpp: "BSplCLib::LocateParameter(@)", header: "BSplCLib.hxx".}
proc LocateParameter*(Degree: Standard_Integer; Knots: TColStd_Array1OfReal;
                     U: Standard_Real; IsPeriodic: Standard_Boolean;
                     FromK1: Standard_Integer; ToK2: Standard_Integer;
                     KnotIndex: var Standard_Integer; NewU: var Standard_Real) {.
    importcpp: "BSplCLib::LocateParameter(@)", header: "BSplCLib.hxx".}
proc LocateParameter*(Degree: Standard_Integer; Knots: TColStd_Array1OfReal;
                     Mults: ptr TColStd_Array1OfInteger; U: Standard_Real;
                     Periodic: Standard_Boolean; Index: var Standard_Integer;
                     NewU: var Standard_Real) {.
    importcpp: "BSplCLib::LocateParameter(@)", header: "BSplCLib.hxx".}
proc MaxKnotMult*(Mults: TColStd_Array1OfInteger; K1: Standard_Integer;
                 K2: Standard_Integer): Standard_Integer {.
    importcpp: "BSplCLib::MaxKnotMult(@)", header: "BSplCLib.hxx".}
proc MinKnotMult*(Mults: TColStd_Array1OfInteger; K1: Standard_Integer;
                 K2: Standard_Integer): Standard_Integer {.
    importcpp: "BSplCLib::MinKnotMult(@)", header: "BSplCLib.hxx".}
proc NbPoles*(Degree: Standard_Integer; Periodic: Standard_Boolean;
             Mults: TColStd_Array1OfInteger): Standard_Integer {.
    importcpp: "BSplCLib::NbPoles(@)", header: "BSplCLib.hxx".}
proc KnotSequenceLength*(Mults: TColStd_Array1OfInteger; Degree: Standard_Integer;
                        Periodic: Standard_Boolean): Standard_Integer {.
    importcpp: "BSplCLib::KnotSequenceLength(@)", header: "BSplCLib.hxx".}
proc KnotSequence*(Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger;
                  KnotSeq: var TColStd_Array1OfReal;
                  Periodic: Standard_Boolean = Standard_False) {.
    importcpp: "BSplCLib::KnotSequence(@)", header: "BSplCLib.hxx".}
proc KnotSequence*(Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger;
                  Degree: Standard_Integer; Periodic: Standard_Boolean;
                  KnotSeq: var TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::KnotSequence(@)", header: "BSplCLib.hxx".}
proc KnotsLength*(KnotSeq: TColStd_Array1OfReal;
                 Periodic: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "BSplCLib::KnotsLength(@)", header: "BSplCLib.hxx".}
proc Knots*(KnotSeq: TColStd_Array1OfReal; Knots: var TColStd_Array1OfReal;
           Mults: var TColStd_Array1OfInteger;
           Periodic: Standard_Boolean = Standard_False) {.
    importcpp: "BSplCLib::Knots(@)", header: "BSplCLib.hxx".}
proc KnotForm*(Knots: TColStd_Array1OfReal; FromK1: Standard_Integer;
              ToK2: Standard_Integer): BSplCLib_KnotDistribution {.
    importcpp: "BSplCLib::KnotForm(@)", header: "BSplCLib.hxx".}
proc MultForm*(Mults: TColStd_Array1OfInteger; FromK1: Standard_Integer;
              ToK2: Standard_Integer): BSplCLib_MultDistribution {.
    importcpp: "BSplCLib::MultForm(@)", header: "BSplCLib.hxx".}
proc KnotAnalysis*(Degree: Standard_Integer; Periodic: Standard_Boolean;
                  CKnots: TColStd_Array1OfReal; CMults: TColStd_Array1OfInteger;
                  KnotForm: var GeomAbs_BSplKnotDistribution;
                  MaxKnotMult: var Standard_Integer) {.
    importcpp: "BSplCLib::KnotAnalysis(@)", header: "BSplCLib.hxx".}
proc Reparametrize*(U1: Standard_Real; U2: Standard_Real;
                   Knots: var TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::Reparametrize(@)", header: "BSplCLib.hxx".}
proc Reverse*(Knots: var TColStd_Array1OfReal) {.importcpp: "BSplCLib::Reverse(@)",
    header: "BSplCLib.hxx".}
proc Reverse*(Mults: var TColStd_Array1OfInteger) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc Reverse*(Poles: var TColgp_Array1OfPnt; Last: Standard_Integer) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc Reverse*(Poles: var TColgp_Array1OfPnt2d; Last: Standard_Integer) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc Reverse*(Weights: var TColStd_Array1OfReal; Last: Standard_Integer) {.
    importcpp: "BSplCLib::Reverse(@)", header: "BSplCLib.hxx".}
proc IsRational*(Weights: TColStd_Array1OfReal; I1: Standard_Integer;
                I2: Standard_Integer; Epsilon: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "BSplCLib::IsRational(@)", header: "BSplCLib.hxx".}
proc MaxDegree*(): Standard_Integer {.importcpp: "BSplCLib::MaxDegree(@)",
                                   header: "BSplCLib.hxx".}
proc Eval*(U: Standard_Real; Degree: Standard_Integer; Knots: var Standard_Real;
          Dimension: Standard_Integer; Poles: var Standard_Real) {.
    importcpp: "BSplCLib::Eval(@)", header: "BSplCLib.hxx".}
proc BoorScheme*(U: Standard_Real; Degree: Standard_Integer;
                Knots: var Standard_Real; Dimension: Standard_Integer;
                Poles: var Standard_Real; Depth: Standard_Integer;
                Length: Standard_Integer) {.importcpp: "BSplCLib::BoorScheme(@)",
    header: "BSplCLib.hxx".}
proc AntiBoorScheme*(U: Standard_Real; Degree: Standard_Integer;
                    Knots: var Standard_Real; Dimension: Standard_Integer;
                    Poles: var Standard_Real; Depth: Standard_Integer;
                    Length: Standard_Integer; Tolerance: Standard_Real): Standard_Boolean {.
    importcpp: "BSplCLib::AntiBoorScheme(@)", header: "BSplCLib.hxx".}
proc Derivative*(Degree: Standard_Integer; Knots: var Standard_Real;
                Dimension: Standard_Integer; Length: Standard_Integer;
                Order: Standard_Integer; Poles: var Standard_Real) {.
    importcpp: "BSplCLib::Derivative(@)", header: "BSplCLib.hxx".}
proc Bohm*(U: Standard_Real; Degree: Standard_Integer; N: Standard_Integer;
          Knots: var Standard_Real; Dimension: Standard_Integer;
          Poles: var Standard_Real) {.importcpp: "BSplCLib::Bohm(@)",
                                   header: "BSplCLib.hxx".}
proc NoWeights*(): ptr TColStd_Array1OfReal {.importcpp: "BSplCLib::NoWeights(@)",
    header: "BSplCLib.hxx".}
proc NoMults*(): ptr TColStd_Array1OfInteger {.importcpp: "BSplCLib::NoMults(@)",
    header: "BSplCLib.hxx".}
proc BuildKnots*(Degree: Standard_Integer; Index: Standard_Integer;
                Periodic: Standard_Boolean; Knots: TColStd_Array1OfReal;
                Mults: ptr TColStd_Array1OfInteger; LK: var Standard_Real) {.
    importcpp: "BSplCLib::BuildKnots(@)", header: "BSplCLib.hxx".}
proc PoleIndex*(Degree: Standard_Integer; Index: Standard_Integer;
               Periodic: Standard_Boolean; Mults: TColStd_Array1OfInteger): Standard_Integer {.
    importcpp: "BSplCLib::PoleIndex(@)", header: "BSplCLib.hxx".}
proc BuildEval*(Degree: Standard_Integer; Index: Standard_Integer;
               Poles: TColStd_Array1OfReal; Weights: ptr TColStd_Array1OfReal;
               LP: var Standard_Real) {.importcpp: "BSplCLib::BuildEval(@)",
                                     header: "BSplCLib.hxx".}
proc BuildEval*(Degree: Standard_Integer; Index: Standard_Integer;
               Poles: TColgp_Array1OfPnt; Weights: ptr TColStd_Array1OfReal;
               LP: var Standard_Real) {.importcpp: "BSplCLib::BuildEval(@)",
                                     header: "BSplCLib.hxx".}
proc BuildEval*(Degree: Standard_Integer; Index: Standard_Integer;
               Poles: TColgp_Array1OfPnt2d; Weights: ptr TColStd_Array1OfReal;
               LP: var Standard_Real) {.importcpp: "BSplCLib::BuildEval(@)",
                                     header: "BSplCLib.hxx".}
proc BuildBoor*(Index: Standard_Integer; Length: Standard_Integer;
               Dimension: Standard_Integer; Poles: TColStd_Array1OfReal;
               LP: var Standard_Real) {.importcpp: "BSplCLib::BuildBoor(@)",
                                     header: "BSplCLib.hxx".}
proc BoorIndex*(Index: Standard_Integer; Length: Standard_Integer;
               Depth: Standard_Integer): Standard_Integer {.
    importcpp: "BSplCLib::BoorIndex(@)", header: "BSplCLib.hxx".}
proc GetPole*(Index: Standard_Integer; Length: Standard_Integer;
             Depth: Standard_Integer; Dimension: Standard_Integer;
             LocPoles: var Standard_Real; Position: var Standard_Integer;
             Pole: var TColStd_Array1OfReal) {.importcpp: "BSplCLib::GetPole(@)",
    header: "BSplCLib.hxx".}
proc PrepareInsertKnots*(Degree: Standard_Integer; Periodic: Standard_Boolean;
                        Knots: TColStd_Array1OfReal;
                        Mults: TColStd_Array1OfInteger;
                        AddKnots: TColStd_Array1OfReal;
                        AddMults: ptr TColStd_Array1OfInteger;
                        NbPoles: var Standard_Integer;
                        NbKnots: var Standard_Integer; Epsilon: Standard_Real;
                        Add: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "BSplCLib::PrepareInsertKnots(@)", header: "BSplCLib.hxx".}
proc InsertKnots*(Degree: Standard_Integer; Periodic: Standard_Boolean;
                 Dimension: Standard_Integer; Poles: TColStd_Array1OfReal;
                 Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger;
                 AddKnots: TColStd_Array1OfReal;
                 AddMults: ptr TColStd_Array1OfInteger;
                 NewPoles: var TColStd_Array1OfReal;
                 NewKnots: var TColStd_Array1OfReal;
                 NewMults: var TColStd_Array1OfInteger; Epsilon: Standard_Real;
                 Add: Standard_Boolean = Standard_True) {.
    importcpp: "BSplCLib::InsertKnots(@)", header: "BSplCLib.hxx".}
proc InsertKnots*(Degree: Standard_Integer; Periodic: Standard_Boolean;
                 Poles: TColgp_Array1OfPnt; Weights: ptr TColStd_Array1OfReal;
                 Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger;
                 AddKnots: TColStd_Array1OfReal;
                 AddMults: ptr TColStd_Array1OfInteger;
                 NewPoles: var TColgp_Array1OfPnt;
                 NewWeights: ptr TColStd_Array1OfReal;
                 NewKnots: var TColStd_Array1OfReal;
                 NewMults: var TColStd_Array1OfInteger; Epsilon: Standard_Real;
                 Add: Standard_Boolean = Standard_True) {.
    importcpp: "BSplCLib::InsertKnots(@)", header: "BSplCLib.hxx".}
proc InsertKnots*(Degree: Standard_Integer; Periodic: Standard_Boolean;
                 Poles: TColgp_Array1OfPnt2d; Weights: ptr TColStd_Array1OfReal;
                 Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger;
                 AddKnots: TColStd_Array1OfReal;
                 AddMults: ptr TColStd_Array1OfInteger;
                 NewPoles: var TColgp_Array1OfPnt2d;
                 NewWeights: ptr TColStd_Array1OfReal;
                 NewKnots: var TColStd_Array1OfReal;
                 NewMults: var TColStd_Array1OfInteger; Epsilon: Standard_Real;
                 Add: Standard_Boolean = Standard_True) {.
    importcpp: "BSplCLib::InsertKnots(@)", header: "BSplCLib.hxx".}
proc InsertKnot*(UIndex: Standard_Integer; U: Standard_Real; UMult: Standard_Integer;
                Degree: Standard_Integer; Periodic: Standard_Boolean;
                Poles: TColgp_Array1OfPnt; Weights: ptr TColStd_Array1OfReal;
                Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger;
                NewPoles: var TColgp_Array1OfPnt;
                NewWeights: ptr TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::InsertKnot(@)", header: "BSplCLib.hxx".}
proc InsertKnot*(UIndex: Standard_Integer; U: Standard_Real; UMult: Standard_Integer;
                Degree: Standard_Integer; Periodic: Standard_Boolean;
                Poles: TColgp_Array1OfPnt2d; Weights: ptr TColStd_Array1OfReal;
                Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger;
                NewPoles: var TColgp_Array1OfPnt2d;
                NewWeights: ptr TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::InsertKnot(@)", header: "BSplCLib.hxx".}
proc RaiseMultiplicity*(KnotIndex: Standard_Integer; Mult: Standard_Integer;
                       Degree: Standard_Integer; Periodic: Standard_Boolean;
                       Poles: TColgp_Array1OfPnt;
                       Weights: ptr TColStd_Array1OfReal;
                       Knots: TColStd_Array1OfReal;
                       Mults: TColStd_Array1OfInteger;
                       NewPoles: var TColgp_Array1OfPnt;
                       NewWeights: ptr TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::RaiseMultiplicity(@)", header: "BSplCLib.hxx".}
proc RaiseMultiplicity*(KnotIndex: Standard_Integer; Mult: Standard_Integer;
                       Degree: Standard_Integer; Periodic: Standard_Boolean;
                       Poles: TColgp_Array1OfPnt2d;
                       Weights: ptr TColStd_Array1OfReal;
                       Knots: TColStd_Array1OfReal;
                       Mults: TColStd_Array1OfInteger;
                       NewPoles: var TColgp_Array1OfPnt2d;
                       NewWeights: ptr TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::RaiseMultiplicity(@)", header: "BSplCLib.hxx".}
proc RemoveKnot*(Index: Standard_Integer; Mult: Standard_Integer;
                Degree: Standard_Integer; Periodic: Standard_Boolean;
                Dimension: Standard_Integer; Poles: TColStd_Array1OfReal;
                Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger;
                NewPoles: var TColStd_Array1OfReal;
                NewKnots: var TColStd_Array1OfReal;
                NewMults: var TColStd_Array1OfInteger; Tolerance: Standard_Real): Standard_Boolean {.
    importcpp: "BSplCLib::RemoveKnot(@)", header: "BSplCLib.hxx".}
proc RemoveKnot*(Index: Standard_Integer; Mult: Standard_Integer;
                Degree: Standard_Integer; Periodic: Standard_Boolean;
                Poles: TColgp_Array1OfPnt; Weights: ptr TColStd_Array1OfReal;
                Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger;
                NewPoles: var TColgp_Array1OfPnt;
                NewWeights: ptr TColStd_Array1OfReal;
                NewKnots: var TColStd_Array1OfReal;
                NewMults: var TColStd_Array1OfInteger; Tolerance: Standard_Real): Standard_Boolean {.
    importcpp: "BSplCLib::RemoveKnot(@)", header: "BSplCLib.hxx".}
proc RemoveKnot*(Index: Standard_Integer; Mult: Standard_Integer;
                Degree: Standard_Integer; Periodic: Standard_Boolean;
                Poles: TColgp_Array1OfPnt2d; Weights: ptr TColStd_Array1OfReal;
                Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger;
                NewPoles: var TColgp_Array1OfPnt2d;
                NewWeights: ptr TColStd_Array1OfReal;
                NewKnots: var TColStd_Array1OfReal;
                NewMults: var TColStd_Array1OfInteger; Tolerance: Standard_Real): Standard_Boolean {.
    importcpp: "BSplCLib::RemoveKnot(@)", header: "BSplCLib.hxx".}
proc IncreaseDegreeCountKnots*(Degree: Standard_Integer;
                              NewDegree: Standard_Integer;
                              Periodic: Standard_Boolean;
                              Mults: TColStd_Array1OfInteger): Standard_Integer {.
    importcpp: "BSplCLib::IncreaseDegreeCountKnots(@)", header: "BSplCLib.hxx".}
proc IncreaseDegree*(Degree: Standard_Integer; NewDegree: Standard_Integer;
                    Periodic: Standard_Boolean; Dimension: Standard_Integer;
                    Poles: TColStd_Array1OfReal; Knots: TColStd_Array1OfReal;
                    Mults: TColStd_Array1OfInteger;
                    NewPoles: var TColStd_Array1OfReal;
                    NewKnots: var TColStd_Array1OfReal;
                    NewMults: var TColStd_Array1OfInteger) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc IncreaseDegree*(Degree: Standard_Integer; NewDegree: Standard_Integer;
                    Periodic: Standard_Boolean; Poles: TColgp_Array1OfPnt;
                    Weights: ptr TColStd_Array1OfReal; Knots: TColStd_Array1OfReal;
                    Mults: TColStd_Array1OfInteger;
                    NewPoles: var TColgp_Array1OfPnt;
                    NewWeights: ptr TColStd_Array1OfReal;
                    NewKnots: var TColStd_Array1OfReal;
                    NewMults: var TColStd_Array1OfInteger) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc IncreaseDegree*(Degree: Standard_Integer; NewDegree: Standard_Integer;
                    Periodic: Standard_Boolean; Poles: TColgp_Array1OfPnt2d;
                    Weights: ptr TColStd_Array1OfReal; Knots: TColStd_Array1OfReal;
                    Mults: TColStd_Array1OfInteger;
                    NewPoles: var TColgp_Array1OfPnt2d;
                    NewWeights: ptr TColStd_Array1OfReal;
                    NewKnots: var TColStd_Array1OfReal;
                    NewMults: var TColStd_Array1OfInteger) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc IncreaseDegree*(NewDegree: Standard_Integer; Poles: TColgp_Array1OfPnt;
                    Weights: ptr TColStd_Array1OfReal;
                    NewPoles: var TColgp_Array1OfPnt;
                    NewWeights: ptr TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc IncreaseDegree*(NewDegree: Standard_Integer; Poles: TColgp_Array1OfPnt2d;
                    Weights: ptr TColStd_Array1OfReal;
                    NewPoles: var TColgp_Array1OfPnt2d;
                    NewWeights: ptr TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::IncreaseDegree(@)", header: "BSplCLib.hxx".}
proc PrepareUnperiodize*(Degree: Standard_Integer; Mults: TColStd_Array1OfInteger;
                        NbKnots: var Standard_Integer;
                        NbPoles: var Standard_Integer) {.
    importcpp: "BSplCLib::PrepareUnperiodize(@)", header: "BSplCLib.hxx".}
proc Unperiodize*(Degree: Standard_Integer; Dimension: Standard_Integer;
                 Mults: TColStd_Array1OfInteger; Knots: TColStd_Array1OfReal;
                 Poles: TColStd_Array1OfReal;
                 NewMults: var TColStd_Array1OfInteger;
                 NewKnots: var TColStd_Array1OfReal;
                 NewPoles: var TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::Unperiodize(@)", header: "BSplCLib.hxx".}
proc Unperiodize*(Degree: Standard_Integer; Mults: TColStd_Array1OfInteger;
                 Knots: TColStd_Array1OfReal; Poles: TColgp_Array1OfPnt;
                 Weights: ptr TColStd_Array1OfReal;
                 NewMults: var TColStd_Array1OfInteger;
                 NewKnots: var TColStd_Array1OfReal;
                 NewPoles: var TColgp_Array1OfPnt;
                 NewWeights: ptr TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::Unperiodize(@)", header: "BSplCLib.hxx".}
proc Unperiodize*(Degree: Standard_Integer; Mults: TColStd_Array1OfInteger;
                 Knots: TColStd_Array1OfReal; Poles: TColgp_Array1OfPnt2d;
                 Weights: ptr TColStd_Array1OfReal;
                 NewMults: var TColStd_Array1OfInteger;
                 NewKnots: var TColStd_Array1OfReal;
                 NewPoles: var TColgp_Array1OfPnt2d;
                 NewWeights: ptr TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::Unperiodize(@)", header: "BSplCLib.hxx".}
proc PrepareTrimming*(Degree: Standard_Integer; Periodic: Standard_Boolean;
                     Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger;
                     U1: Standard_Real; U2: Standard_Real;
                     NbKnots: var Standard_Integer; NbPoles: var Standard_Integer) {.
    importcpp: "BSplCLib::PrepareTrimming(@)", header: "BSplCLib.hxx".}
proc Trimming*(Degree: Standard_Integer; Periodic: Standard_Boolean;
              Dimension: Standard_Integer; Knots: TColStd_Array1OfReal;
              Mults: TColStd_Array1OfInteger; Poles: TColStd_Array1OfReal;
              U1: Standard_Real; U2: Standard_Real;
              NewKnots: var TColStd_Array1OfReal;
              NewMults: var TColStd_Array1OfInteger;
              NewPoles: var TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::Trimming(@)", header: "BSplCLib.hxx".}
proc Trimming*(Degree: Standard_Integer; Periodic: Standard_Boolean;
              Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger;
              Poles: TColgp_Array1OfPnt; Weights: ptr TColStd_Array1OfReal;
              U1: Standard_Real; U2: Standard_Real;
              NewKnots: var TColStd_Array1OfReal;
              NewMults: var TColStd_Array1OfInteger;
              NewPoles: var TColgp_Array1OfPnt;
              NewWeights: ptr TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::Trimming(@)", header: "BSplCLib.hxx".}
proc Trimming*(Degree: Standard_Integer; Periodic: Standard_Boolean;
              Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger;
              Poles: TColgp_Array1OfPnt2d; Weights: ptr TColStd_Array1OfReal;
              U1: Standard_Real; U2: Standard_Real;
              NewKnots: var TColStd_Array1OfReal;
              NewMults: var TColStd_Array1OfInteger;
              NewPoles: var TColgp_Array1OfPnt2d;
              NewWeights: ptr TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::Trimming(@)", header: "BSplCLib.hxx".}
proc D0*(U: Standard_Real; Index: Standard_Integer; Degree: Standard_Integer;
        Periodic: Standard_Boolean; Poles: TColStd_Array1OfReal;
        Weights: ptr TColStd_Array1OfReal; Knots: TColStd_Array1OfReal;
        Mults: ptr TColStd_Array1OfInteger; P: var Standard_Real) {.
    importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc D0*(U: Standard_Real; Index: Standard_Integer; Degree: Standard_Integer;
        Periodic: Standard_Boolean; Poles: TColgp_Array1OfPnt;
        Weights: ptr TColStd_Array1OfReal; Knots: TColStd_Array1OfReal;
        Mults: ptr TColStd_Array1OfInteger; P: var gp_Pnt) {.
    importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc D0*(U: Standard_Real; UIndex: Standard_Integer; Degree: Standard_Integer;
        Periodic: Standard_Boolean; Poles: TColgp_Array1OfPnt2d;
        Weights: ptr TColStd_Array1OfReal; Knots: TColStd_Array1OfReal;
        Mults: ptr TColStd_Array1OfInteger; P: var gp_Pnt2d) {.
    importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc D0*(U: Standard_Real; Poles: TColgp_Array1OfPnt;
        Weights: ptr TColStd_Array1OfReal; P: var gp_Pnt) {.
    importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc D0*(U: Standard_Real; Poles: TColgp_Array1OfPnt2d;
        Weights: ptr TColStd_Array1OfReal; P: var gp_Pnt2d) {.
    importcpp: "BSplCLib::D0(@)", header: "BSplCLib.hxx".}
proc D1*(U: Standard_Real; Index: Standard_Integer; Degree: Standard_Integer;
        Periodic: Standard_Boolean; Poles: TColStd_Array1OfReal;
        Weights: ptr TColStd_Array1OfReal; Knots: TColStd_Array1OfReal;
        Mults: ptr TColStd_Array1OfInteger; P: var Standard_Real; V: var Standard_Real) {.
    importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc D1*(U: Standard_Real; Index: Standard_Integer; Degree: Standard_Integer;
        Periodic: Standard_Boolean; Poles: TColgp_Array1OfPnt;
        Weights: ptr TColStd_Array1OfReal; Knots: TColStd_Array1OfReal;
        Mults: ptr TColStd_Array1OfInteger; P: var gp_Pnt; V: var gp_Vec) {.
    importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc D1*(U: Standard_Real; UIndex: Standard_Integer; Degree: Standard_Integer;
        Periodic: Standard_Boolean; Poles: TColgp_Array1OfPnt2d;
        Weights: ptr TColStd_Array1OfReal; Knots: TColStd_Array1OfReal;
        Mults: ptr TColStd_Array1OfInteger; P: var gp_Pnt2d; V: var gp_Vec2d) {.
    importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc D1*(U: Standard_Real; Poles: TColgp_Array1OfPnt;
        Weights: ptr TColStd_Array1OfReal; P: var gp_Pnt; V: var gp_Vec) {.
    importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc D1*(U: Standard_Real; Poles: TColgp_Array1OfPnt2d;
        Weights: ptr TColStd_Array1OfReal; P: var gp_Pnt2d; V: var gp_Vec2d) {.
    importcpp: "BSplCLib::D1(@)", header: "BSplCLib.hxx".}
proc D2*(U: Standard_Real; Index: Standard_Integer; Degree: Standard_Integer;
        Periodic: Standard_Boolean; Poles: TColStd_Array1OfReal;
        Weights: ptr TColStd_Array1OfReal; Knots: TColStd_Array1OfReal;
        Mults: ptr TColStd_Array1OfInteger; P: var Standard_Real;
        V1: var Standard_Real; V2: var Standard_Real) {.importcpp: "BSplCLib::D2(@)",
    header: "BSplCLib.hxx".}
proc D2*(U: Standard_Real; Index: Standard_Integer; Degree: Standard_Integer;
        Periodic: Standard_Boolean; Poles: TColgp_Array1OfPnt;
        Weights: ptr TColStd_Array1OfReal; Knots: TColStd_Array1OfReal;
        Mults: ptr TColStd_Array1OfInteger; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec) {.
    importcpp: "BSplCLib::D2(@)", header: "BSplCLib.hxx".}
proc D2*(U: Standard_Real; UIndex: Standard_Integer; Degree: Standard_Integer;
        Periodic: Standard_Boolean; Poles: TColgp_Array1OfPnt2d;
        Weights: ptr TColStd_Array1OfReal; Knots: TColStd_Array1OfReal;
        Mults: ptr TColStd_Array1OfInteger; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.importcpp: "BSplCLib::D2(@)", header: "BSplCLib.hxx".}
proc D2*(U: Standard_Real; Poles: TColgp_Array1OfPnt;
        Weights: ptr TColStd_Array1OfReal; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec) {.
    importcpp: "BSplCLib::D2(@)", header: "BSplCLib.hxx".}
proc D2*(U: Standard_Real; Poles: TColgp_Array1OfPnt2d;
        Weights: ptr TColStd_Array1OfReal; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.importcpp: "BSplCLib::D2(@)", header: "BSplCLib.hxx".}
proc D3*(U: Standard_Real; Index: Standard_Integer; Degree: Standard_Integer;
        Periodic: Standard_Boolean; Poles: TColStd_Array1OfReal;
        Weights: ptr TColStd_Array1OfReal; Knots: TColStd_Array1OfReal;
        Mults: ptr TColStd_Array1OfInteger; P: var Standard_Real;
        V1: var Standard_Real; V2: var Standard_Real; V3: var Standard_Real) {.
    importcpp: "BSplCLib::D3(@)", header: "BSplCLib.hxx".}
proc D3*(U: Standard_Real; Index: Standard_Integer; Degree: Standard_Integer;
        Periodic: Standard_Boolean; Poles: TColgp_Array1OfPnt;
        Weights: ptr TColStd_Array1OfReal; Knots: TColStd_Array1OfReal;
        Mults: ptr TColStd_Array1OfInteger; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.importcpp: "BSplCLib::D3(@)",
                                    header: "BSplCLib.hxx".}
proc D3*(U: Standard_Real; UIndex: Standard_Integer; Degree: Standard_Integer;
        Periodic: Standard_Boolean; Poles: TColgp_Array1OfPnt2d;
        Weights: ptr TColStd_Array1OfReal; Knots: TColStd_Array1OfReal;
        Mults: ptr TColStd_Array1OfInteger; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.importcpp: "BSplCLib::D3(@)",
                                        header: "BSplCLib.hxx".}
proc D3*(U: Standard_Real; Poles: TColgp_Array1OfPnt;
        Weights: ptr TColStd_Array1OfReal; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec;
        V3: var gp_Vec) {.importcpp: "BSplCLib::D3(@)", header: "BSplCLib.hxx".}
proc D3*(U: Standard_Real; Poles: TColgp_Array1OfPnt2d;
        Weights: ptr TColStd_Array1OfReal; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.importcpp: "BSplCLib::D3(@)",
                                        header: "BSplCLib.hxx".}
proc DN*(U: Standard_Real; N: Standard_Integer; Index: Standard_Integer;
        Degree: Standard_Integer; Periodic: Standard_Boolean;
        Poles: TColStd_Array1OfReal; Weights: ptr TColStd_Array1OfReal;
        Knots: TColStd_Array1OfReal; Mults: ptr TColStd_Array1OfInteger;
        VN: var Standard_Real) {.importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc DN*(U: Standard_Real; N: Standard_Integer; Index: Standard_Integer;
        Degree: Standard_Integer; Periodic: Standard_Boolean;
        Poles: TColgp_Array1OfPnt; Weights: ptr TColStd_Array1OfReal;
        Knots: TColStd_Array1OfReal; Mults: ptr TColStd_Array1OfInteger;
        VN: var gp_Vec) {.importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc DN*(U: Standard_Real; N: Standard_Integer; UIndex: Standard_Integer;
        Degree: Standard_Integer; Periodic: Standard_Boolean;
        Poles: TColgp_Array1OfPnt2d; Weights: ptr TColStd_Array1OfReal;
        Knots: TColStd_Array1OfReal; Mults: ptr TColStd_Array1OfInteger;
        V: var gp_Vec2d) {.importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc DN*(U: Standard_Real; N: Standard_Integer; Poles: TColgp_Array1OfPnt;
        Weights: TColStd_Array1OfReal; P: var gp_Pnt; VN: var gp_Vec) {.
    importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc DN*(U: Standard_Real; N: Standard_Integer; Poles: TColgp_Array1OfPnt2d;
        Weights: TColStd_Array1OfReal; P: var gp_Pnt2d; VN: var gp_Vec2d) {.
    importcpp: "BSplCLib::DN(@)", header: "BSplCLib.hxx".}
proc EvalBsplineBasis*(DerivativeOrder: Standard_Integer; Order: Standard_Integer;
                      FlatKnots: TColStd_Array1OfReal; Parameter: Standard_Real;
                      FirstNonZeroBsplineIndex: var Standard_Integer;
                      BsplineBasis: var math_Matrix;
                      isPeriodic: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "BSplCLib::EvalBsplineBasis(@)", header: "BSplCLib.hxx".}
proc BuildBSpMatrix*(Parameters: TColStd_Array1OfReal;
                    OrderArray: TColStd_Array1OfInteger;
                    FlatKnots: TColStd_Array1OfReal; Degree: Standard_Integer;
                    Matrix: var math_Matrix; UpperBandWidth: var Standard_Integer;
                    LowerBandWidth: var Standard_Integer): Standard_Integer {.
    importcpp: "BSplCLib::BuildBSpMatrix(@)", header: "BSplCLib.hxx".}
proc FactorBandedMatrix*(Matrix: var math_Matrix; UpperBandWidth: Standard_Integer;
                        LowerBandWidth: Standard_Integer;
                        PivotIndexProblem: var Standard_Integer): Standard_Integer {.
    importcpp: "BSplCLib::FactorBandedMatrix(@)", header: "BSplCLib.hxx".}
proc SolveBandedSystem*(Matrix: math_Matrix; UpperBandWidth: Standard_Integer;
                       LowerBandWidth: Standard_Integer;
                       ArrayDimension: Standard_Integer; Array: var Standard_Real): Standard_Integer {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc SolveBandedSystem*(Matrix: math_Matrix; UpperBandWidth: Standard_Integer;
                       LowerBandWidth: Standard_Integer;
                       Array: var TColgp_Array1OfPnt2d): Standard_Integer {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc SolveBandedSystem*(Matrix: math_Matrix; UpperBandWidth: Standard_Integer;
                       LowerBandWidth: Standard_Integer;
                       Array: var TColgp_Array1OfPnt): Standard_Integer {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc SolveBandedSystem*(Matrix: math_Matrix; UpperBandWidth: Standard_Integer;
                       LowerBandWidth: Standard_Integer;
                       HomogenousFlag: Standard_Boolean;
                       ArrayDimension: Standard_Integer; Array: var Standard_Real;
                       Weights: var Standard_Real): Standard_Integer {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc SolveBandedSystem*(Matrix: math_Matrix; UpperBandWidth: Standard_Integer;
                       LowerBandWidth: Standard_Integer;
                       HomogenousFlag: Standard_Boolean;
                       Array: var TColgp_Array1OfPnt2d;
                       Weights: var TColStd_Array1OfReal): Standard_Integer {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc SolveBandedSystem*(Matrix: math_Matrix; UpperBandWidth: Standard_Integer;
                       LowerBandWidth: Standard_Integer;
                       HomogeneousFlag: Standard_Boolean;
                       Array: var TColgp_Array1OfPnt;
                       Weights: var TColStd_Array1OfReal): Standard_Integer {.
    importcpp: "BSplCLib::SolveBandedSystem(@)", header: "BSplCLib.hxx".}
proc MergeBSplineKnots*(Tolerance: Standard_Real; StartValue: Standard_Real;
                       EndValue: Standard_Real; Degree1: Standard_Integer;
                       Knots1: TColStd_Array1OfReal;
                       Mults1: TColStd_Array1OfInteger; Degree2: Standard_Integer;
                       Knots2: TColStd_Array1OfReal;
                       Mults2: TColStd_Array1OfInteger;
                       NumPoles: var Standard_Integer;
                       NewKnots: var handle[TColStd_HArray1OfReal];
                       NewMults: var handle[TColStd_HArray1OfInteger]) {.
    importcpp: "BSplCLib::MergeBSplineKnots(@)", header: "BSplCLib.hxx".}
proc FunctionReparameterise*(Function: BSplCLib_EvaluatorFunction;
                            BSplineDegree: Standard_Integer;
                            BSplineFlatKnots: TColStd_Array1OfReal;
                            PolesDimension: Standard_Integer;
                            Poles: var Standard_Real;
                            FlatKnots: TColStd_Array1OfReal;
                            NewDegree: Standard_Integer;
                            NewPoles: var Standard_Real;
                            theStatus: var Standard_Integer) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc FunctionReparameterise*(Function: BSplCLib_EvaluatorFunction;
                            BSplineDegree: Standard_Integer;
                            BSplineFlatKnots: TColStd_Array1OfReal;
                            Poles: TColStd_Array1OfReal;
                            FlatKnots: TColStd_Array1OfReal;
                            NewDegree: Standard_Integer;
                            NewPoles: var TColStd_Array1OfReal;
                            theStatus: var Standard_Integer) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc FunctionReparameterise*(Function: BSplCLib_EvaluatorFunction;
                            BSplineDegree: Standard_Integer;
                            BSplineFlatKnots: TColStd_Array1OfReal;
                            Poles: TColgp_Array1OfPnt;
                            FlatKnots: TColStd_Array1OfReal;
                            NewDegree: Standard_Integer;
                            NewPoles: var TColgp_Array1OfPnt;
                            theStatus: var Standard_Integer) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc FunctionReparameterise*(Function: BSplCLib_EvaluatorFunction;
                            BSplineDegree: Standard_Integer;
                            BSplineFlatKnots: TColStd_Array1OfReal;
                            Poles: TColgp_Array1OfPnt2d;
                            FlatKnots: TColStd_Array1OfReal;
                            NewDegree: Standard_Integer;
                            NewPoles: var TColgp_Array1OfPnt2d;
                            theStatus: var Standard_Integer) {.
    importcpp: "BSplCLib::FunctionReparameterise(@)", header: "BSplCLib.hxx".}
proc FunctionMultiply*(Function: BSplCLib_EvaluatorFunction;
                      BSplineDegree: Standard_Integer;
                      BSplineFlatKnots: TColStd_Array1OfReal;
                      PolesDimension: Standard_Integer; Poles: var Standard_Real;
                      FlatKnots: TColStd_Array1OfReal;
                      NewDegree: Standard_Integer; NewPoles: var Standard_Real;
                      theStatus: var Standard_Integer) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc FunctionMultiply*(Function: BSplCLib_EvaluatorFunction;
                      BSplineDegree: Standard_Integer;
                      BSplineFlatKnots: TColStd_Array1OfReal;
                      Poles: TColStd_Array1OfReal;
                      FlatKnots: TColStd_Array1OfReal;
                      NewDegree: Standard_Integer;
                      NewPoles: var TColStd_Array1OfReal;
                      theStatus: var Standard_Integer) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc FunctionMultiply*(Function: BSplCLib_EvaluatorFunction;
                      BSplineDegree: Standard_Integer;
                      BSplineFlatKnots: TColStd_Array1OfReal;
                      Poles: TColgp_Array1OfPnt2d;
                      FlatKnots: TColStd_Array1OfReal;
                      NewDegree: Standard_Integer;
                      NewPoles: var TColgp_Array1OfPnt2d;
                      theStatus: var Standard_Integer) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc FunctionMultiply*(Function: BSplCLib_EvaluatorFunction;
                      BSplineDegree: Standard_Integer;
                      BSplineFlatKnots: TColStd_Array1OfReal;
                      Poles: TColgp_Array1OfPnt; FlatKnots: TColStd_Array1OfReal;
                      NewDegree: Standard_Integer;
                      NewPoles: var TColgp_Array1OfPnt;
                      theStatus: var Standard_Integer) {.
    importcpp: "BSplCLib::FunctionMultiply(@)", header: "BSplCLib.hxx".}
proc Eval*(U: Standard_Real; PeriodicFlag: Standard_Boolean;
          DerivativeRequest: Standard_Integer; ExtrapMode: var Standard_Integer;
          Degree: Standard_Integer; FlatKnots: TColStd_Array1OfReal;
          ArrayDimension: Standard_Integer; Poles: var Standard_Real;
          Result: var Standard_Real) {.importcpp: "BSplCLib::Eval(@)",
                                    header: "BSplCLib.hxx".}
proc Eval*(U: Standard_Real; PeriodicFlag: Standard_Boolean;
          DerivativeRequest: Standard_Integer; ExtrapMode: var Standard_Integer;
          Degree: Standard_Integer; FlatKnots: TColStd_Array1OfReal;
          ArrayDimension: Standard_Integer; Poles: var Standard_Real;
          Weights: var Standard_Real; PolesResult: var Standard_Real;
          WeightsResult: var Standard_Real) {.importcpp: "BSplCLib::Eval(@)",
    header: "BSplCLib.hxx".}
proc Eval*(U: Standard_Real; PeriodicFlag: Standard_Boolean;
          HomogeneousFlag: Standard_Boolean; ExtrapMode: var Standard_Integer;
          Degree: Standard_Integer; FlatKnots: TColStd_Array1OfReal;
          Poles: TColgp_Array1OfPnt; Weights: TColStd_Array1OfReal;
          Point: var gp_Pnt; Weight: var Standard_Real) {.
    importcpp: "BSplCLib::Eval(@)", header: "BSplCLib.hxx".}
proc Eval*(U: Standard_Real; PeriodicFlag: Standard_Boolean;
          HomogeneousFlag: Standard_Boolean; ExtrapMode: var Standard_Integer;
          Degree: Standard_Integer; FlatKnots: TColStd_Array1OfReal;
          Poles: TColgp_Array1OfPnt2d; Weights: TColStd_Array1OfReal;
          Point: var gp_Pnt2d; Weight: var Standard_Real) {.
    importcpp: "BSplCLib::Eval(@)", header: "BSplCLib.hxx".}
proc TangExtendToConstraint*(FlatKnots: TColStd_Array1OfReal;
                            C1Coefficient: Standard_Real;
                            NumPoles: Standard_Integer; Poles: var Standard_Real;
                            Dimension: Standard_Integer; Degree: Standard_Integer;
                            ConstraintPoint: TColStd_Array1OfReal;
                            Continuity: Standard_Integer; After: Standard_Boolean;
                            NbPolesResult: var Standard_Integer;
                            NbKnotsRsult: var Standard_Integer;
                            KnotsResult: var Standard_Real;
                            PolesResult: var Standard_Real) {.
    importcpp: "BSplCLib::TangExtendToConstraint(@)", header: "BSplCLib.hxx".}
proc CacheD0*(U: Standard_Real; Degree: Standard_Integer;
             CacheParameter: Standard_Real; SpanLenght: Standard_Real;
             Poles: TColgp_Array1OfPnt; Weights: ptr TColStd_Array1OfReal;
             Point: var gp_Pnt) {.importcpp: "BSplCLib::CacheD0(@)",
                               header: "BSplCLib.hxx".}
proc CacheD0*(U: Standard_Real; Degree: Standard_Integer;
             CacheParameter: Standard_Real; SpanLenght: Standard_Real;
             Poles: TColgp_Array1OfPnt2d; Weights: ptr TColStd_Array1OfReal;
             Point: var gp_Pnt2d) {.importcpp: "BSplCLib::CacheD0(@)",
                                 header: "BSplCLib.hxx".}
proc CoefsD0*(U: Standard_Real; Poles: TColgp_Array1OfPnt;
             Weights: ptr TColStd_Array1OfReal; Point: var gp_Pnt) {.
    importcpp: "BSplCLib::CoefsD0(@)", header: "BSplCLib.hxx".}
proc CoefsD0*(U: Standard_Real; Poles: TColgp_Array1OfPnt2d;
             Weights: ptr TColStd_Array1OfReal; Point: var gp_Pnt2d) {.
    importcpp: "BSplCLib::CoefsD0(@)", header: "BSplCLib.hxx".}
proc CacheD1*(U: Standard_Real; Degree: Standard_Integer;
             CacheParameter: Standard_Real; SpanLenght: Standard_Real;
             Poles: TColgp_Array1OfPnt; Weights: ptr TColStd_Array1OfReal;
             Point: var gp_Pnt; Vec: var gp_Vec) {.importcpp: "BSplCLib::CacheD1(@)",
    header: "BSplCLib.hxx".}
proc CacheD1*(U: Standard_Real; Degree: Standard_Integer;
             CacheParameter: Standard_Real; SpanLenght: Standard_Real;
             Poles: TColgp_Array1OfPnt2d; Weights: ptr TColStd_Array1OfReal;
             Point: var gp_Pnt2d; Vec: var gp_Vec2d) {.
    importcpp: "BSplCLib::CacheD1(@)", header: "BSplCLib.hxx".}
proc CoefsD1*(U: Standard_Real; Poles: TColgp_Array1OfPnt;
             Weights: ptr TColStd_Array1OfReal; Point: var gp_Pnt; Vec: var gp_Vec) {.
    importcpp: "BSplCLib::CoefsD1(@)", header: "BSplCLib.hxx".}
proc CoefsD1*(U: Standard_Real; Poles: TColgp_Array1OfPnt2d;
             Weights: ptr TColStd_Array1OfReal; Point: var gp_Pnt2d; Vec: var gp_Vec2d) {.
    importcpp: "BSplCLib::CoefsD1(@)", header: "BSplCLib.hxx".}
proc CacheD2*(U: Standard_Real; Degree: Standard_Integer;
             CacheParameter: Standard_Real; SpanLenght: Standard_Real;
             Poles: TColgp_Array1OfPnt; Weights: ptr TColStd_Array1OfReal;
             Point: var gp_Pnt; Vec1: var gp_Vec; Vec2: var gp_Vec) {.
    importcpp: "BSplCLib::CacheD2(@)", header: "BSplCLib.hxx".}
proc CacheD2*(U: Standard_Real; Degree: Standard_Integer;
             CacheParameter: Standard_Real; SpanLenght: Standard_Real;
             Poles: TColgp_Array1OfPnt2d; Weights: ptr TColStd_Array1OfReal;
             Point: var gp_Pnt2d; Vec1: var gp_Vec2d; Vec2: var gp_Vec2d) {.
    importcpp: "BSplCLib::CacheD2(@)", header: "BSplCLib.hxx".}
proc CoefsD2*(U: Standard_Real; Poles: TColgp_Array1OfPnt;
             Weights: ptr TColStd_Array1OfReal; Point: var gp_Pnt; Vec1: var gp_Vec;
             Vec2: var gp_Vec) {.importcpp: "BSplCLib::CoefsD2(@)",
                              header: "BSplCLib.hxx".}
proc CoefsD2*(U: Standard_Real; Poles: TColgp_Array1OfPnt2d;
             Weights: ptr TColStd_Array1OfReal; Point: var gp_Pnt2d;
             Vec1: var gp_Vec2d; Vec2: var gp_Vec2d) {.
    importcpp: "BSplCLib::CoefsD2(@)", header: "BSplCLib.hxx".}
proc CacheD3*(U: Standard_Real; Degree: Standard_Integer;
             CacheParameter: Standard_Real; SpanLenght: Standard_Real;
             Poles: TColgp_Array1OfPnt; Weights: ptr TColStd_Array1OfReal;
             Point: var gp_Pnt; Vec1: var gp_Vec; Vec2: var gp_Vec; Vec3: var gp_Vec) {.
    importcpp: "BSplCLib::CacheD3(@)", header: "BSplCLib.hxx".}
proc CacheD3*(U: Standard_Real; Degree: Standard_Integer;
             CacheParameter: Standard_Real; SpanLenght: Standard_Real;
             Poles: TColgp_Array1OfPnt2d; Weights: ptr TColStd_Array1OfReal;
             Point: var gp_Pnt2d; Vec1: var gp_Vec2d; Vec2: var gp_Vec2d;
             Vec3: var gp_Vec2d) {.importcpp: "BSplCLib::CacheD3(@)",
                                header: "BSplCLib.hxx".}
proc CoefsD3*(U: Standard_Real; Poles: TColgp_Array1OfPnt;
             Weights: ptr TColStd_Array1OfReal; Point: var gp_Pnt; Vec1: var gp_Vec;
             Vec2: var gp_Vec; Vec3: var gp_Vec) {.importcpp: "BSplCLib::CoefsD3(@)",
    header: "BSplCLib.hxx".}
proc CoefsD3*(U: Standard_Real; Poles: TColgp_Array1OfPnt2d;
             Weights: ptr TColStd_Array1OfReal; Point: var gp_Pnt2d;
             Vec1: var gp_Vec2d; Vec2: var gp_Vec2d; Vec3: var gp_Vec2d) {.
    importcpp: "BSplCLib::CoefsD3(@)", header: "BSplCLib.hxx".}
proc BuildCache*(U: Standard_Real; InverseOfSpanDomain: Standard_Real;
                PeriodicFlag: Standard_Boolean; Degree: Standard_Integer;
                FlatKnots: TColStd_Array1OfReal; Poles: TColgp_Array1OfPnt;
                Weights: ptr TColStd_Array1OfReal;
                CachePoles: var TColgp_Array1OfPnt;
                CacheWeights: ptr TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::BuildCache(@)", header: "BSplCLib.hxx".}
proc BuildCache*(U: Standard_Real; InverseOfSpanDomain: Standard_Real;
                PeriodicFlag: Standard_Boolean; Degree: Standard_Integer;
                FlatKnots: TColStd_Array1OfReal; Poles: TColgp_Array1OfPnt2d;
                Weights: ptr TColStd_Array1OfReal;
                CachePoles: var TColgp_Array1OfPnt2d;
                CacheWeights: ptr TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::BuildCache(@)", header: "BSplCLib.hxx".}
proc BuildCache*(theParameter: Standard_Real; theSpanDomain: Standard_Real;
                thePeriodicFlag: Standard_Boolean; theDegree: Standard_Integer;
                theSpanIndex: Standard_Integer;
                theFlatKnots: TColStd_Array1OfReal; thePoles: TColgp_Array1OfPnt;
                theWeights: ptr TColStd_Array1OfReal;
                theCacheArray: var TColStd_Array2OfReal) {.
    importcpp: "BSplCLib::BuildCache(@)", header: "BSplCLib.hxx".}
proc BuildCache*(theParameter: Standard_Real; theSpanDomain: Standard_Real;
                thePeriodicFlag: Standard_Boolean; theDegree: Standard_Integer;
                theSpanIndex: Standard_Integer;
                theFlatKnots: TColStd_Array1OfReal;
                thePoles: TColgp_Array1OfPnt2d;
                theWeights: ptr TColStd_Array1OfReal;
                theCacheArray: var TColStd_Array2OfReal) {.
    importcpp: "BSplCLib::BuildCache(@)", header: "BSplCLib.hxx".}
proc PolesCoefficients*(Poles: TColgp_Array1OfPnt2d;
                       CachePoles: var TColgp_Array1OfPnt2d) {.
    importcpp: "BSplCLib::PolesCoefficients(@)", header: "BSplCLib.hxx".}
proc PolesCoefficients*(Poles: TColgp_Array1OfPnt2d;
                       Weights: ptr TColStd_Array1OfReal;
                       CachePoles: var TColgp_Array1OfPnt2d;
                       CacheWeights: ptr TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::PolesCoefficients(@)", header: "BSplCLib.hxx".}
proc PolesCoefficients*(Poles: TColgp_Array1OfPnt;
                       CachePoles: var TColgp_Array1OfPnt) {.
    importcpp: "BSplCLib::PolesCoefficients(@)", header: "BSplCLib.hxx".}
proc PolesCoefficients*(Poles: TColgp_Array1OfPnt;
                       Weights: ptr TColStd_Array1OfReal;
                       CachePoles: var TColgp_Array1OfPnt;
                       CacheWeights: ptr TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::PolesCoefficients(@)", header: "BSplCLib.hxx".}
proc FlatBezierKnots*(Degree: Standard_Integer): Standard_Real {.
    importcpp: "BSplCLib::FlatBezierKnots(@)", header: "BSplCLib.hxx".}
proc BuildSchoenbergPoints*(Degree: Standard_Integer;
                           FlatKnots: TColStd_Array1OfReal;
                           Parameters: var TColStd_Array1OfReal) {.
    importcpp: "BSplCLib::BuildSchoenbergPoints(@)", header: "BSplCLib.hxx".}
proc Interpolate*(Degree: Standard_Integer; FlatKnots: TColStd_Array1OfReal;
                 Parameters: TColStd_Array1OfReal;
                 ContactOrderArray: TColStd_Array1OfInteger;
                 Poles: var TColgp_Array1OfPnt;
                 InversionProblem: var Standard_Integer) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc Interpolate*(Degree: Standard_Integer; FlatKnots: TColStd_Array1OfReal;
                 Parameters: TColStd_Array1OfReal;
                 ContactOrderArray: TColStd_Array1OfInteger;
                 Poles: var TColgp_Array1OfPnt2d;
                 InversionProblem: var Standard_Integer) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc Interpolate*(Degree: Standard_Integer; FlatKnots: TColStd_Array1OfReal;
                 Parameters: TColStd_Array1OfReal;
                 ContactOrderArray: TColStd_Array1OfInteger;
                 Poles: var TColgp_Array1OfPnt; Weights: var TColStd_Array1OfReal;
                 InversionProblem: var Standard_Integer) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc Interpolate*(Degree: Standard_Integer; FlatKnots: TColStd_Array1OfReal;
                 Parameters: TColStd_Array1OfReal;
                 ContactOrderArray: TColStd_Array1OfInteger;
                 Poles: var TColgp_Array1OfPnt2d;
                 Weights: var TColStd_Array1OfReal;
                 InversionProblem: var Standard_Integer) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc Interpolate*(Degree: Standard_Integer; FlatKnots: TColStd_Array1OfReal;
                 Parameters: TColStd_Array1OfReal;
                 ContactOrderArray: TColStd_Array1OfInteger;
                 ArrayDimension: Standard_Integer; Poles: var Standard_Real;
                 InversionProblem: var Standard_Integer) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc Interpolate*(Degree: Standard_Integer; FlatKnots: TColStd_Array1OfReal;
                 Parameters: TColStd_Array1OfReal;
                 ContactOrderArray: TColStd_Array1OfInteger;
                 ArrayDimension: Standard_Integer; Poles: var Standard_Real;
                 Weights: var Standard_Real; InversionProblem: var Standard_Integer) {.
    importcpp: "BSplCLib::Interpolate(@)", header: "BSplCLib.hxx".}
proc MovePoint*(U: Standard_Real; Displ: gp_Vec2d; Index1: Standard_Integer;
               Index2: Standard_Integer; Degree: Standard_Integer;
               Poles: TColgp_Array1OfPnt2d; Weights: ptr TColStd_Array1OfReal;
               FlatKnots: TColStd_Array1OfReal; FirstIndex: var Standard_Integer;
               LastIndex: var Standard_Integer; NewPoles: var TColgp_Array1OfPnt2d) {.
    importcpp: "BSplCLib::MovePoint(@)", header: "BSplCLib.hxx".}
proc MovePoint*(U: Standard_Real; Displ: gp_Vec; Index1: Standard_Integer;
               Index2: Standard_Integer; Degree: Standard_Integer;
               Poles: TColgp_Array1OfPnt; Weights: ptr TColStd_Array1OfReal;
               FlatKnots: TColStd_Array1OfReal; FirstIndex: var Standard_Integer;
               LastIndex: var Standard_Integer; NewPoles: var TColgp_Array1OfPnt) {.
    importcpp: "BSplCLib::MovePoint(@)", header: "BSplCLib.hxx".}
proc MovePointAndTangent*(U: Standard_Real; ArrayDimension: Standard_Integer;
                         Delta: var Standard_Real;
                         DeltaDerivative: var Standard_Real;
                         Tolerance: Standard_Real; Degree: Standard_Integer;
                         StartingCondition: Standard_Integer;
                         EndingCondition: Standard_Integer;
                         Poles: var Standard_Real;
                         Weights: ptr TColStd_Array1OfReal;
                         FlatKnots: TColStd_Array1OfReal;
                         NewPoles: var Standard_Real;
                         ErrorStatus: var Standard_Integer) {.
    importcpp: "BSplCLib::MovePointAndTangent(@)", header: "BSplCLib.hxx".}
proc MovePointAndTangent*(U: Standard_Real; Delta: gp_Vec; DeltaDerivative: gp_Vec;
                         Tolerance: Standard_Real; Degree: Standard_Integer;
                         StartingCondition: Standard_Integer;
                         EndingCondition: Standard_Integer;
                         Poles: TColgp_Array1OfPnt;
                         Weights: ptr TColStd_Array1OfReal;
                         FlatKnots: TColStd_Array1OfReal;
                         NewPoles: var TColgp_Array1OfPnt;
                         ErrorStatus: var Standard_Integer) {.
    importcpp: "BSplCLib::MovePointAndTangent(@)", header: "BSplCLib.hxx".}
proc MovePointAndTangent*(U: Standard_Real; Delta: gp_Vec2d;
                         DeltaDerivative: gp_Vec2d; Tolerance: Standard_Real;
                         Degree: Standard_Integer;
                         StartingCondition: Standard_Integer;
                         EndingCondition: Standard_Integer;
                         Poles: TColgp_Array1OfPnt2d;
                         Weights: ptr TColStd_Array1OfReal;
                         FlatKnots: TColStd_Array1OfReal;
                         NewPoles: var TColgp_Array1OfPnt2d;
                         ErrorStatus: var Standard_Integer) {.
    importcpp: "BSplCLib::MovePointAndTangent(@)", header: "BSplCLib.hxx".}
proc Resolution*(PolesArray: var Standard_Real; ArrayDimension: Standard_Integer;
                NumPoles: Standard_Integer; Weights: ptr TColStd_Array1OfReal;
                FlatKnots: TColStd_Array1OfReal; Degree: Standard_Integer;
                Tolerance3D: Standard_Real; UTolerance: var Standard_Real) {.
    importcpp: "BSplCLib::Resolution(@)", header: "BSplCLib.hxx".}
proc Resolution*(Poles: TColgp_Array1OfPnt; Weights: ptr TColStd_Array1OfReal;
                NumPoles: Standard_Integer; FlatKnots: TColStd_Array1OfReal;
                Degree: Standard_Integer; Tolerance3D: Standard_Real;
                UTolerance: var Standard_Real) {.
    importcpp: "BSplCLib::Resolution(@)", header: "BSplCLib.hxx".}
proc Resolution*(Poles: TColgp_Array1OfPnt2d; Weights: ptr TColStd_Array1OfReal;
                NumPoles: Standard_Integer; FlatKnots: TColStd_Array1OfReal;
                Degree: Standard_Integer; Tolerance3D: Standard_Real;
                UTolerance: var Standard_Real) {.
    importcpp: "BSplCLib::Resolution(@)", header: "BSplCLib.hxx".}