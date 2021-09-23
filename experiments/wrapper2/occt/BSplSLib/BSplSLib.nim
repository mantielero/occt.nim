##  Created on: 1991-08-26
##  Created by: JCV
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../TColgp/TColgp_Array2OfPnt, ../TColStd/TColStd_Array2OfReal,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger,
  ../TColgp/TColgp_Array1OfPnt, BSplSLib_EvaluatorFunction

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  BSplSLib* {.importcpp: "BSplSLib", header: "BSplSLib.hxx", bycopy.} = object ## ! this is a one
                                                                       ## dimensional function
                                                                       ## ! typedef  void
                                                                       ## (*EvaluatorFunction)  (
                                                                       ## !
                                                                       ## Standard_Integer     //
                                                                       ## Derivative Request
                                                                       ## !
                                                                       ## Standard_Real    *   //
                                                                       ## StartEnd[2][2]
                                                                       ## ! //  [0] = U
                                                                       ## ! //  [1] = V
                                                                       ## ! //        [0] = start
                                                                       ## ! //        [1] = end
                                                                       ## !
                                                                       ## Standard_Real        //
                                                                       ## UParameter
                                                                       ## !
                                                                       ## Standard_Real        //
                                                                       ## VParamerer
                                                                       ## !
                                                                       ## Standard_Real    &   // Result
                                                                       ## !
                                                                       ## Standard_Integer &) ;// Error Code
                                                                       ## ! serves to multiply a given vectorial BSpline by a function
                                                                       ## ! Computes  the
                                                                       ## derivatives   of  a    ratio  of
                                                                       ## !
                                                                       ## two-variables functions  x(u,v) / w(u,v) at orders
                                                                       ## ! <N,M>,    x(u,v)    is   a  vector in    dimension
                                                                       ## ! <3>.
                                                                       ## !
                                                                       ## ! <Ders> is  an array
                                                                       ## containing the values  of the
                                                                       ## ! input
                                                                       ## derivatives from 0  to
                                                                       ## Min(<N>,<UDeg>), 0 to
                                                                       ## !
                                                                       ## Min(<M>,<VDeg>).    For orders    higher      than
                                                                       ## !
                                                                       ## <UDeg,VDeg>  the  input
                                                                       ## derivatives are assumed to
                                                                       ## ! be 0.
                                                                       ## !
                                                                       ## ! The <Ders> is a 2d array and the  dimension of the
                                                                       ## ! lines is always
                                                                       ## (<VDeg>+1) * (<3>+1), even
                                                                       ## ! if   <N> is smaller  than  <Udeg> (the
                                                                       ## derivatives
                                                                       ## ! higher than <N> are not used).
                                                                       ## !
                                                                       ## ! Content of <Ders> :
                                                                       ## !
                                                                       ## ! x(i,j)[k] means :  the composant  k of x derivated
                                                                       ## ! (i) times in u and (j) times in v.
                                                                       ## !
                                                                       ## ! ... First line ...
                                                                       ## !
                                                                       ## !
                                                                       ## x[1],x[2],...,x[3],w
                                                                       ## !
                                                                       ## x(0,1)[1],...,x(0,1)[3],w(1,0)
                                                                       ## ! ...
                                                                       ## !
                                                                       ## x(0,VDeg)[1],...,x(0,VDeg)[3],w(0,VDeg)
                                                                       ## !
                                                                       ## ! ... Then second line ...
                                                                       ## !
                                                                       ## !
                                                                       ## x(1,0)[1],...,x(1,0)[3],w(1,0)
                                                                       ## !
                                                                       ## x(1,1)[1],...,x(1,1)[3],w(1,1)
                                                                       ## ! ...
                                                                       ## !
                                                                       ## x(1,VDeg)[1],...,x(1,VDeg)[3],w(1,VDeg)
                                                                       ## !
                                                                       ## ! ...
                                                                       ## !
                                                                       ## ! ... Last line ...
                                                                       ## !
                                                                       ## !
                                                                       ## x(UDeg,0)[1],...,x(UDeg,0)[3],w(UDeg,0)
                                                                       ## !
                                                                       ## x(UDeg,1)[1],...,x(UDeg,1)[3],w(UDeg,1)
                                                                       ## ! ...
                                                                       ## !
                                                                       ## x(Udeg,VDeg)[1],...,x(UDeg,VDeg)[3],w(Udeg,VDeg)
                                                                       ## !
                                                                       ## ! If <All>  is false, only  the
                                                                       ## derivative  at order
                                                                       ## ! <N,M> is computed.  <RDers> is an  array of length
                                                                       ## ! 3 which will contain the result :
                                                                       ## !
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <N> <M> times
                                                                       ## !
                                                                       ## ! If   <All>    is  true  multiples
                                                                       ## derivatives are
                                                                       ## ! computed. All the
                                                                       ## derivatives (i,j) with 0 <= i+j
                                                                       ## ! <= Max(N,M) are  computed.  <RDers> is an array of
                                                                       ## ! length 3 *  (<N>+1)  * (<M>+1) which  will
                                                                       ## ! contains :
                                                                       ## !
                                                                       ## ! x(1)/w , x(2)/w ,  ...
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <0,1> times
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <0,2> times
                                                                       ## ! ...
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <0,N> times
                                                                       ## !
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <1,0> times
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <1,1> times
                                                                       ## ! ...
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <1,N> times
                                                                       ## !
                                                                       ## ! x(1)/w , x(2)/w ,  ... derivated <N,0> times
                                                                       ## ! ....
                                                                       ## ! Warning: <RDers> must be
                                                                       ## dimensionned properly.


proc RationalDerivative*(UDeg: Standard_Integer; VDeg: Standard_Integer;
                        N: Standard_Integer; M: Standard_Integer;
                        Ders: var Standard_Real; RDers: var Standard_Real;
                        All: Standard_Boolean = Standard_True) {.
    importcpp: "BSplSLib::RationalDerivative(@)", header: "BSplSLib.hxx".}
proc D0*(U: Standard_Real; V: Standard_Real; UIndex: Standard_Integer;
        VIndex: Standard_Integer; Poles: TColgp_Array2OfPnt;
        Weights: ptr TColStd_Array2OfReal; UKnots: TColStd_Array1OfReal;
        VKnots: TColStd_Array1OfReal; UMults: ptr TColStd_Array1OfInteger;
        VMults: ptr TColStd_Array1OfInteger; UDegree: Standard_Integer;
        VDegree: Standard_Integer; URat: Standard_Boolean; VRat: Standard_Boolean;
        UPer: Standard_Boolean; VPer: Standard_Boolean; P: var gp_Pnt) {.
    importcpp: "BSplSLib::D0(@)", header: "BSplSLib.hxx".}
proc D1*(U: Standard_Real; V: Standard_Real; UIndex: Standard_Integer;
        VIndex: Standard_Integer; Poles: TColgp_Array2OfPnt;
        Weights: ptr TColStd_Array2OfReal; UKnots: TColStd_Array1OfReal;
        VKnots: TColStd_Array1OfReal; UMults: ptr TColStd_Array1OfInteger;
        VMults: ptr TColStd_Array1OfInteger; Degree: Standard_Integer;
        VDegree: Standard_Integer; URat: Standard_Boolean; VRat: Standard_Boolean;
        UPer: Standard_Boolean; VPer: Standard_Boolean; P: var gp_Pnt; Vu: var gp_Vec;
        Vv: var gp_Vec) {.importcpp: "BSplSLib::D1(@)", header: "BSplSLib.hxx".}
proc D2*(U: Standard_Real; V: Standard_Real; UIndex: Standard_Integer;
        VIndex: Standard_Integer; Poles: TColgp_Array2OfPnt;
        Weights: ptr TColStd_Array2OfReal; UKnots: TColStd_Array1OfReal;
        VKnots: TColStd_Array1OfReal; UMults: ptr TColStd_Array1OfInteger;
        VMults: ptr TColStd_Array1OfInteger; UDegree: Standard_Integer;
        VDegree: Standard_Integer; URat: Standard_Boolean; VRat: Standard_Boolean;
        UPer: Standard_Boolean; VPer: Standard_Boolean; P: var gp_Pnt; Vu: var gp_Vec;
        Vv: var gp_Vec; Vuu: var gp_Vec; Vvv: var gp_Vec; Vuv: var gp_Vec) {.
    importcpp: "BSplSLib::D2(@)", header: "BSplSLib.hxx".}
proc D3*(U: Standard_Real; V: Standard_Real; UIndex: Standard_Integer;
        VIndex: Standard_Integer; Poles: TColgp_Array2OfPnt;
        Weights: ptr TColStd_Array2OfReal; UKnots: TColStd_Array1OfReal;
        VKnots: TColStd_Array1OfReal; UMults: ptr TColStd_Array1OfInteger;
        VMults: ptr TColStd_Array1OfInteger; UDegree: Standard_Integer;
        VDegree: Standard_Integer; URat: Standard_Boolean; VRat: Standard_Boolean;
        UPer: Standard_Boolean; VPer: Standard_Boolean; P: var gp_Pnt; Vu: var gp_Vec;
        Vv: var gp_Vec; Vuu: var gp_Vec; Vvv: var gp_Vec; Vuv: var gp_Vec; Vuuu: var gp_Vec;
        Vvvv: var gp_Vec; Vuuv: var gp_Vec; Vuvv: var gp_Vec) {.
    importcpp: "BSplSLib::D3(@)", header: "BSplSLib.hxx".}
proc DN*(U: Standard_Real; V: Standard_Real; Nu: Standard_Integer;
        Nv: Standard_Integer; UIndex: Standard_Integer; VIndex: Standard_Integer;
        Poles: TColgp_Array2OfPnt; Weights: ptr TColStd_Array2OfReal;
        UKnots: TColStd_Array1OfReal; VKnots: TColStd_Array1OfReal;
        UMults: ptr TColStd_Array1OfInteger; VMults: ptr TColStd_Array1OfInteger;
        UDegree: Standard_Integer; VDegree: Standard_Integer;
        URat: Standard_Boolean; VRat: Standard_Boolean; UPer: Standard_Boolean;
        VPer: Standard_Boolean; Vn: var gp_Vec) {.importcpp: "BSplSLib::DN(@)",
    header: "BSplSLib.hxx".}
proc Iso*(Param: Standard_Real; IsU: Standard_Boolean; Poles: TColgp_Array2OfPnt;
         Weights: ptr TColStd_Array2OfReal; Knots: TColStd_Array1OfReal;
         Mults: ptr TColStd_Array1OfInteger; Degree: Standard_Integer;
         Periodic: Standard_Boolean; CPoles: var TColgp_Array1OfPnt;
         CWeights: ptr TColStd_Array1OfReal) {.importcpp: "BSplSLib::Iso(@)",
    header: "BSplSLib.hxx".}
proc Reverse*(Poles: var TColgp_Array2OfPnt; Last: Standard_Integer;
             UDirection: Standard_Boolean) {.importcpp: "BSplSLib::Reverse(@)",
    header: "BSplSLib.hxx".}
proc HomogeneousD0*(U: Standard_Real; V: Standard_Real; UIndex: Standard_Integer;
                   VIndex: Standard_Integer; Poles: TColgp_Array2OfPnt;
                   Weights: ptr TColStd_Array2OfReal; UKnots: TColStd_Array1OfReal;
                   VKnots: TColStd_Array1OfReal;
                   UMults: ptr TColStd_Array1OfInteger;
                   VMults: ptr TColStd_Array1OfInteger; UDegree: Standard_Integer;
                   VDegree: Standard_Integer; URat: Standard_Boolean;
                   VRat: Standard_Boolean; UPer: Standard_Boolean;
                   VPer: Standard_Boolean; W: var Standard_Real; P: var gp_Pnt) {.
    importcpp: "BSplSLib::HomogeneousD0(@)", header: "BSplSLib.hxx".}
proc HomogeneousD1*(U: Standard_Real; V: Standard_Real; UIndex: Standard_Integer;
                   VIndex: Standard_Integer; Poles: TColgp_Array2OfPnt;
                   Weights: ptr TColStd_Array2OfReal; UKnots: TColStd_Array1OfReal;
                   VKnots: TColStd_Array1OfReal;
                   UMults: ptr TColStd_Array1OfInteger;
                   VMults: ptr TColStd_Array1OfInteger; UDegree: Standard_Integer;
                   VDegree: Standard_Integer; URat: Standard_Boolean;
                   VRat: Standard_Boolean; UPer: Standard_Boolean;
                   VPer: Standard_Boolean; N: var gp_Pnt; Nu: var gp_Vec;
                   Nv: var gp_Vec; D: var Standard_Real; Du: var Standard_Real;
                   Dv: var Standard_Real) {.
    importcpp: "BSplSLib::HomogeneousD1(@)", header: "BSplSLib.hxx".}
proc Reverse*(Weights: var TColStd_Array2OfReal; Last: Standard_Integer;
             UDirection: Standard_Boolean) {.importcpp: "BSplSLib::Reverse(@)",
    header: "BSplSLib.hxx".}
proc IsRational*(Weights: TColStd_Array2OfReal; I1: Standard_Integer;
                I2: Standard_Integer; J1: Standard_Integer; J2: Standard_Integer;
                Epsilon: Standard_Real = 0.0): Standard_Boolean {.
    importcpp: "BSplSLib::IsRational(@)", header: "BSplSLib.hxx".}
proc SetPoles*(Poles: TColgp_Array2OfPnt; FP: var TColStd_Array1OfReal;
              UDirection: Standard_Boolean) {.importcpp: "BSplSLib::SetPoles(@)",
    header: "BSplSLib.hxx".}
proc SetPoles*(Poles: TColgp_Array2OfPnt; Weights: TColStd_Array2OfReal;
              FP: var TColStd_Array1OfReal; UDirection: Standard_Boolean) {.
    importcpp: "BSplSLib::SetPoles(@)", header: "BSplSLib.hxx".}
proc GetPoles*(FP: TColStd_Array1OfReal; Poles: var TColgp_Array2OfPnt;
              UDirection: Standard_Boolean) {.importcpp: "BSplSLib::GetPoles(@)",
    header: "BSplSLib.hxx".}
proc GetPoles*(FP: TColStd_Array1OfReal; Poles: var TColgp_Array2OfPnt;
              Weights: var TColStd_Array2OfReal; UDirection: Standard_Boolean) {.
    importcpp: "BSplSLib::GetPoles(@)", header: "BSplSLib.hxx".}
proc MovePoint*(U: Standard_Real; V: Standard_Real; Displ: gp_Vec;
               UIndex1: Standard_Integer; UIndex2: Standard_Integer;
               VIndex1: Standard_Integer; VIndex2: Standard_Integer;
               UDegree: Standard_Integer; VDegree: Standard_Integer;
               Rational: Standard_Boolean; Poles: TColgp_Array2OfPnt;
               Weights: TColStd_Array2OfReal; UFlatKnots: TColStd_Array1OfReal;
               VFlatKnots: TColStd_Array1OfReal;
               UFirstIndex: var Standard_Integer; ULastIndex: var Standard_Integer;
               VFirstIndex: var Standard_Integer; VLastIndex: var Standard_Integer;
               NewPoles: var TColgp_Array2OfPnt) {.
    importcpp: "BSplSLib::MovePoint(@)", header: "BSplSLib.hxx".}
proc InsertKnots*(UDirection: Standard_Boolean; Degree: Standard_Integer;
                 Periodic: Standard_Boolean; Poles: TColgp_Array2OfPnt;
                 Weights: ptr TColStd_Array2OfReal; Knots: TColStd_Array1OfReal;
                 Mults: TColStd_Array1OfInteger; AddKnots: TColStd_Array1OfReal;
                 AddMults: ptr TColStd_Array1OfInteger;
                 NewPoles: var TColgp_Array2OfPnt;
                 NewWeights: ptr TColStd_Array2OfReal;
                 NewKnots: var TColStd_Array1OfReal;
                 NewMults: var TColStd_Array1OfInteger; Epsilon: Standard_Real;
                 Add: Standard_Boolean = Standard_True) {.
    importcpp: "BSplSLib::InsertKnots(@)", header: "BSplSLib.hxx".}
proc RemoveKnot*(UDirection: Standard_Boolean; Index: Standard_Integer;
                Mult: Standard_Integer; Degree: Standard_Integer;
                Periodic: Standard_Boolean; Poles: TColgp_Array2OfPnt;
                Weights: ptr TColStd_Array2OfReal; Knots: TColStd_Array1OfReal;
                Mults: TColStd_Array1OfInteger; NewPoles: var TColgp_Array2OfPnt;
                NewWeights: ptr TColStd_Array2OfReal;
                NewKnots: var TColStd_Array1OfReal;
                NewMults: var TColStd_Array1OfInteger; Tolerance: Standard_Real): Standard_Boolean {.
    importcpp: "BSplSLib::RemoveKnot(@)", header: "BSplSLib.hxx".}
proc IncreaseDegree*(UDirection: Standard_Boolean; Degree: Standard_Integer;
                    NewDegree: Standard_Integer; Periodic: Standard_Boolean;
                    Poles: TColgp_Array2OfPnt; Weights: ptr TColStd_Array2OfReal;
                    Knots: TColStd_Array1OfReal; Mults: TColStd_Array1OfInteger;
                    NewPoles: var TColgp_Array2OfPnt;
                    NewWeights: ptr TColStd_Array2OfReal;
                    NewKnots: var TColStd_Array1OfReal;
                    NewMults: var TColStd_Array1OfInteger) {.
    importcpp: "BSplSLib::IncreaseDegree(@)", header: "BSplSLib.hxx".}
proc Unperiodize*(UDirection: Standard_Boolean; Degree: Standard_Integer;
                 Mults: TColStd_Array1OfInteger; Knots: TColStd_Array1OfReal;
                 Poles: TColgp_Array2OfPnt; Weights: ptr TColStd_Array2OfReal;
                 NewMults: var TColStd_Array1OfInteger;
                 NewKnots: var TColStd_Array1OfReal;
                 NewPoles: var TColgp_Array2OfPnt;
                 NewWeights: ptr TColStd_Array2OfReal) {.
    importcpp: "BSplSLib::Unperiodize(@)", header: "BSplSLib.hxx".}
proc NoWeights*(): ptr TColStd_Array2OfReal {.importcpp: "BSplSLib::NoWeights(@)",
    header: "BSplSLib.hxx".}
proc BuildCache*(U: Standard_Real; V: Standard_Real; USpanDomain: Standard_Real;
                VSpanDomain: Standard_Real; UPeriodicFlag: Standard_Boolean;
                VPeriodicFlag: Standard_Boolean; UDegree: Standard_Integer;
                VDegree: Standard_Integer; UIndex: Standard_Integer;
                VIndex: Standard_Integer; UFlatKnots: TColStd_Array1OfReal;
                VFlatKnots: TColStd_Array1OfReal; Poles: TColgp_Array2OfPnt;
                Weights: ptr TColStd_Array2OfReal;
                CachePoles: var TColgp_Array2OfPnt;
                CacheWeights: ptr TColStd_Array2OfReal) {.
    importcpp: "BSplSLib::BuildCache(@)", header: "BSplSLib.hxx".}
proc BuildCache*(theU: Standard_Real; theV: Standard_Real;
                theUSpanDomain: Standard_Real; theVSpanDomain: Standard_Real;
                theUPeriodic: Standard_Boolean; theVPeriodic: Standard_Boolean;
                theUDegree: Standard_Integer; theVDegree: Standard_Integer;
                theUIndex: Standard_Integer; theVIndex: Standard_Integer;
                theUFlatKnots: TColStd_Array1OfReal;
                theVFlatKnots: TColStd_Array1OfReal; thePoles: TColgp_Array2OfPnt;
                theWeights: ptr TColStd_Array2OfReal;
                theCacheArray: var TColStd_Array2OfReal) {.
    importcpp: "BSplSLib::BuildCache(@)", header: "BSplSLib.hxx".}
proc CacheD0*(U: Standard_Real; V: Standard_Real; UDegree: Standard_Integer;
             VDegree: Standard_Integer; UCacheParameter: Standard_Real;
             VCacheParameter: Standard_Real; USpanLenght: Standard_Real;
             VSpanLength: Standard_Real; Poles: TColgp_Array2OfPnt;
             Weights: ptr TColStd_Array2OfReal; Point: var gp_Pnt) {.
    importcpp: "BSplSLib::CacheD0(@)", header: "BSplSLib.hxx".}
proc CoefsD0*(U: Standard_Real; V: Standard_Real; Poles: TColgp_Array2OfPnt;
             Weights: ptr TColStd_Array2OfReal; Point: var gp_Pnt) {.
    importcpp: "BSplSLib::CoefsD0(@)", header: "BSplSLib.hxx".}
proc CacheD1*(U: Standard_Real; V: Standard_Real; UDegree: Standard_Integer;
             VDegree: Standard_Integer; UCacheParameter: Standard_Real;
             VCacheParameter: Standard_Real; USpanLenght: Standard_Real;
             VSpanLength: Standard_Real; Poles: TColgp_Array2OfPnt;
             Weights: ptr TColStd_Array2OfReal; Point: var gp_Pnt; VecU: var gp_Vec;
             VecV: var gp_Vec) {.importcpp: "BSplSLib::CacheD1(@)",
                              header: "BSplSLib.hxx".}
proc CoefsD1*(U: Standard_Real; V: Standard_Real; Poles: TColgp_Array2OfPnt;
             Weights: ptr TColStd_Array2OfReal; Point: var gp_Pnt; VecU: var gp_Vec;
             VecV: var gp_Vec) {.importcpp: "BSplSLib::CoefsD1(@)",
                              header: "BSplSLib.hxx".}
proc CacheD2*(U: Standard_Real; V: Standard_Real; UDegree: Standard_Integer;
             VDegree: Standard_Integer; UCacheParameter: Standard_Real;
             VCacheParameter: Standard_Real; USpanLenght: Standard_Real;
             VSpanLength: Standard_Real; Poles: TColgp_Array2OfPnt;
             Weights: ptr TColStd_Array2OfReal; Point: var gp_Pnt; VecU: var gp_Vec;
             VecV: var gp_Vec; VecUU: var gp_Vec; VecUV: var gp_Vec; VecVV: var gp_Vec) {.
    importcpp: "BSplSLib::CacheD2(@)", header: "BSplSLib.hxx".}
proc CoefsD2*(U: Standard_Real; V: Standard_Real; Poles: TColgp_Array2OfPnt;
             Weights: ptr TColStd_Array2OfReal; Point: var gp_Pnt; VecU: var gp_Vec;
             VecV: var gp_Vec; VecUU: var gp_Vec; VecUV: var gp_Vec; VecVV: var gp_Vec) {.
    importcpp: "BSplSLib::CoefsD2(@)", header: "BSplSLib.hxx".}
proc PolesCoefficients*(Poles: TColgp_Array2OfPnt;
                       CachePoles: var TColgp_Array2OfPnt) {.
    importcpp: "BSplSLib::PolesCoefficients(@)", header: "BSplSLib.hxx".}
proc PolesCoefficients*(Poles: TColgp_Array2OfPnt;
                       Weights: ptr TColStd_Array2OfReal;
                       CachePoles: var TColgp_Array2OfPnt;
                       CacheWeights: ptr TColStd_Array2OfReal) {.
    importcpp: "BSplSLib::PolesCoefficients(@)", header: "BSplSLib.hxx".}
proc Resolution*(Poles: TColgp_Array2OfPnt; Weights: ptr TColStd_Array2OfReal;
                UKnots: TColStd_Array1OfReal; VKnots: TColStd_Array1OfReal;
                UMults: TColStd_Array1OfInteger; VMults: TColStd_Array1OfInteger;
                UDegree: Standard_Integer; VDegree: Standard_Integer;
                URat: Standard_Boolean; VRat: Standard_Boolean;
                UPer: Standard_Boolean; VPer: Standard_Boolean;
                Tolerance3D: Standard_Real; UTolerance: var Standard_Real;
                VTolerance: var Standard_Real) {.
    importcpp: "BSplSLib::Resolution(@)", header: "BSplSLib.hxx".}
proc Interpolate*(UDegree: Standard_Integer; VDegree: Standard_Integer;
                 UFlatKnots: TColStd_Array1OfReal;
                 VFlatKnots: TColStd_Array1OfReal;
                 UParameters: TColStd_Array1OfReal;
                 VParameters: TColStd_Array1OfReal; Poles: var TColgp_Array2OfPnt;
                 Weights: var TColStd_Array2OfReal;
                 InversionProblem: var Standard_Integer) {.
    importcpp: "BSplSLib::Interpolate(@)", header: "BSplSLib.hxx".}
proc Interpolate*(UDegree: Standard_Integer; VDegree: Standard_Integer;
                 UFlatKnots: TColStd_Array1OfReal;
                 VFlatKnots: TColStd_Array1OfReal;
                 UParameters: TColStd_Array1OfReal;
                 VParameters: TColStd_Array1OfReal; Poles: var TColgp_Array2OfPnt;
                 InversionProblem: var Standard_Integer) {.
    importcpp: "BSplSLib::Interpolate(@)", header: "BSplSLib.hxx".}
proc FunctionMultiply*(Function: BSplSLib_EvaluatorFunction;
                      UBSplineDegree: Standard_Integer;
                      VBSplineDegree: Standard_Integer;
                      UBSplineKnots: TColStd_Array1OfReal;
                      VBSplineKnots: TColStd_Array1OfReal;
                      UMults: ptr TColStd_Array1OfInteger;
                      VMults: ptr TColStd_Array1OfInteger;
                      Poles: TColgp_Array2OfPnt;
                      Weights: ptr TColStd_Array2OfReal;
                      UFlatKnots: TColStd_Array1OfReal;
                      VFlatKnots: TColStd_Array1OfReal;
                      UNewDegree: Standard_Integer; VNewDegree: Standard_Integer;
                      NewNumerator: var TColgp_Array2OfPnt;
                      NewDenominator: var TColStd_Array2OfReal;
                      theStatus: var Standard_Integer) {.
    importcpp: "BSplSLib::FunctionMultiply(@)", header: "BSplSLib.hxx".}