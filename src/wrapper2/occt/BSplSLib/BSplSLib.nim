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


proc rationalDerivative*(uDeg: StandardInteger; vDeg: StandardInteger;
                        n: StandardInteger; m: StandardInteger;
                        ders: var StandardReal; rDers: var StandardReal;
                        all: StandardBoolean = standardTrue) {.
    importcpp: "BSplSLib::RationalDerivative(@)", header: "BSplSLib.hxx".}
proc d0*(u: StandardReal; v: StandardReal; uIndex: StandardInteger;
        vIndex: StandardInteger; poles: TColgpArray2OfPnt;
        weights: ptr TColStdArray2OfReal; uKnots: TColStdArray1OfReal;
        vKnots: TColStdArray1OfReal; uMults: ptr TColStdArray1OfInteger;
        vMults: ptr TColStdArray1OfInteger; uDegree: StandardInteger;
        vDegree: StandardInteger; uRat: StandardBoolean; vRat: StandardBoolean;
        uPer: StandardBoolean; vPer: StandardBoolean; p: var GpPnt) {.
    importcpp: "BSplSLib::D0(@)", header: "BSplSLib.hxx".}
proc d1*(u: StandardReal; v: StandardReal; uIndex: StandardInteger;
        vIndex: StandardInteger; poles: TColgpArray2OfPnt;
        weights: ptr TColStdArray2OfReal; uKnots: TColStdArray1OfReal;
        vKnots: TColStdArray1OfReal; uMults: ptr TColStdArray1OfInteger;
        vMults: ptr TColStdArray1OfInteger; degree: StandardInteger;
        vDegree: StandardInteger; uRat: StandardBoolean; vRat: StandardBoolean;
        uPer: StandardBoolean; vPer: StandardBoolean; p: var GpPnt; vu: var GpVec;
        vv: var GpVec) {.importcpp: "BSplSLib::D1(@)", header: "BSplSLib.hxx".}
proc d2*(u: StandardReal; v: StandardReal; uIndex: StandardInteger;
        vIndex: StandardInteger; poles: TColgpArray2OfPnt;
        weights: ptr TColStdArray2OfReal; uKnots: TColStdArray1OfReal;
        vKnots: TColStdArray1OfReal; uMults: ptr TColStdArray1OfInteger;
        vMults: ptr TColStdArray1OfInteger; uDegree: StandardInteger;
        vDegree: StandardInteger; uRat: StandardBoolean; vRat: StandardBoolean;
        uPer: StandardBoolean; vPer: StandardBoolean; p: var GpPnt; vu: var GpVec;
        vv: var GpVec; vuu: var GpVec; vvv: var GpVec; vuv: var GpVec) {.
    importcpp: "BSplSLib::D2(@)", header: "BSplSLib.hxx".}
proc d3*(u: StandardReal; v: StandardReal; uIndex: StandardInteger;
        vIndex: StandardInteger; poles: TColgpArray2OfPnt;
        weights: ptr TColStdArray2OfReal; uKnots: TColStdArray1OfReal;
        vKnots: TColStdArray1OfReal; uMults: ptr TColStdArray1OfInteger;
        vMults: ptr TColStdArray1OfInteger; uDegree: StandardInteger;
        vDegree: StandardInteger; uRat: StandardBoolean; vRat: StandardBoolean;
        uPer: StandardBoolean; vPer: StandardBoolean; p: var GpPnt; vu: var GpVec;
        vv: var GpVec; vuu: var GpVec; vvv: var GpVec; vuv: var GpVec; vuuu: var GpVec;
        vvvv: var GpVec; vuuv: var GpVec; vuvv: var GpVec) {.
    importcpp: "BSplSLib::D3(@)", header: "BSplSLib.hxx".}
proc dn*(u: StandardReal; v: StandardReal; nu: StandardInteger; nv: StandardInteger;
        uIndex: StandardInteger; vIndex: StandardInteger; poles: TColgpArray2OfPnt;
        weights: ptr TColStdArray2OfReal; uKnots: TColStdArray1OfReal;
        vKnots: TColStdArray1OfReal; uMults: ptr TColStdArray1OfInteger;
        vMults: ptr TColStdArray1OfInteger; uDegree: StandardInteger;
        vDegree: StandardInteger; uRat: StandardBoolean; vRat: StandardBoolean;
        uPer: StandardBoolean; vPer: StandardBoolean; vn: var GpVec) {.
    importcpp: "BSplSLib::DN(@)", header: "BSplSLib.hxx".}
proc iso*(param: StandardReal; isU: StandardBoolean; poles: TColgpArray2OfPnt;
         weights: ptr TColStdArray2OfReal; knots: TColStdArray1OfReal;
         mults: ptr TColStdArray1OfInteger; degree: StandardInteger;
         periodic: StandardBoolean; cPoles: var TColgpArray1OfPnt;
         cWeights: ptr TColStdArray1OfReal) {.importcpp: "BSplSLib::Iso(@)",
    header: "BSplSLib.hxx".}
proc reverse*(poles: var TColgpArray2OfPnt; last: StandardInteger;
             uDirection: StandardBoolean) {.importcpp: "BSplSLib::Reverse(@)",
    header: "BSplSLib.hxx".}
proc homogeneousD0*(u: StandardReal; v: StandardReal; uIndex: StandardInteger;
                   vIndex: StandardInteger; poles: TColgpArray2OfPnt;
                   weights: ptr TColStdArray2OfReal; uKnots: TColStdArray1OfReal;
                   vKnots: TColStdArray1OfReal;
                   uMults: ptr TColStdArray1OfInteger;
                   vMults: ptr TColStdArray1OfInteger; uDegree: StandardInteger;
                   vDegree: StandardInteger; uRat: StandardBoolean;
                   vRat: StandardBoolean; uPer: StandardBoolean;
                   vPer: StandardBoolean; w: var StandardReal; p: var GpPnt) {.
    importcpp: "BSplSLib::HomogeneousD0(@)", header: "BSplSLib.hxx".}
proc homogeneousD1*(u: StandardReal; v: StandardReal; uIndex: StandardInteger;
                   vIndex: StandardInteger; poles: TColgpArray2OfPnt;
                   weights: ptr TColStdArray2OfReal; uKnots: TColStdArray1OfReal;
                   vKnots: TColStdArray1OfReal;
                   uMults: ptr TColStdArray1OfInteger;
                   vMults: ptr TColStdArray1OfInteger; uDegree: StandardInteger;
                   vDegree: StandardInteger; uRat: StandardBoolean;
                   vRat: StandardBoolean; uPer: StandardBoolean;
                   vPer: StandardBoolean; n: var GpPnt; nu: var GpVec; nv: var GpVec;
                   d: var StandardReal; du: var StandardReal; dv: var StandardReal) {.
    importcpp: "BSplSLib::HomogeneousD1(@)", header: "BSplSLib.hxx".}
proc reverse*(weights: var TColStdArray2OfReal; last: StandardInteger;
             uDirection: StandardBoolean) {.importcpp: "BSplSLib::Reverse(@)",
    header: "BSplSLib.hxx".}
proc isRational*(weights: TColStdArray2OfReal; i1: StandardInteger;
                i2: StandardInteger; j1: StandardInteger; j2: StandardInteger;
                epsilon: StandardReal = 0.0): StandardBoolean {.
    importcpp: "BSplSLib::IsRational(@)", header: "BSplSLib.hxx".}
proc setPoles*(poles: TColgpArray2OfPnt; fp: var TColStdArray1OfReal;
              uDirection: StandardBoolean) {.importcpp: "BSplSLib::SetPoles(@)",
    header: "BSplSLib.hxx".}
proc setPoles*(poles: TColgpArray2OfPnt; weights: TColStdArray2OfReal;
              fp: var TColStdArray1OfReal; uDirection: StandardBoolean) {.
    importcpp: "BSplSLib::SetPoles(@)", header: "BSplSLib.hxx".}
proc getPoles*(fp: TColStdArray1OfReal; poles: var TColgpArray2OfPnt;
              uDirection: StandardBoolean) {.importcpp: "BSplSLib::GetPoles(@)",
    header: "BSplSLib.hxx".}
proc getPoles*(fp: TColStdArray1OfReal; poles: var TColgpArray2OfPnt;
              weights: var TColStdArray2OfReal; uDirection: StandardBoolean) {.
    importcpp: "BSplSLib::GetPoles(@)", header: "BSplSLib.hxx".}
proc movePoint*(u: StandardReal; v: StandardReal; displ: GpVec;
               uIndex1: StandardInteger; uIndex2: StandardInteger;
               vIndex1: StandardInteger; vIndex2: StandardInteger;
               uDegree: StandardInteger; vDegree: StandardInteger;
               rational: StandardBoolean; poles: TColgpArray2OfPnt;
               weights: TColStdArray2OfReal; uFlatKnots: TColStdArray1OfReal;
               vFlatKnots: TColStdArray1OfReal; uFirstIndex: var StandardInteger;
               uLastIndex: var StandardInteger; vFirstIndex: var StandardInteger;
               vLastIndex: var StandardInteger; newPoles: var TColgpArray2OfPnt) {.
    importcpp: "BSplSLib::MovePoint(@)", header: "BSplSLib.hxx".}
proc insertKnots*(uDirection: StandardBoolean; degree: StandardInteger;
                 periodic: StandardBoolean; poles: TColgpArray2OfPnt;
                 weights: ptr TColStdArray2OfReal; knots: TColStdArray1OfReal;
                 mults: TColStdArray1OfInteger; addKnots: TColStdArray1OfReal;
                 addMults: ptr TColStdArray1OfInteger;
                 newPoles: var TColgpArray2OfPnt;
                 newWeights: ptr TColStdArray2OfReal;
                 newKnots: var TColStdArray1OfReal;
                 newMults: var TColStdArray1OfInteger; epsilon: StandardReal;
                 add: StandardBoolean = standardTrue) {.
    importcpp: "BSplSLib::InsertKnots(@)", header: "BSplSLib.hxx".}
proc removeKnot*(uDirection: StandardBoolean; index: StandardInteger;
                mult: StandardInteger; degree: StandardInteger;
                periodic: StandardBoolean; poles: TColgpArray2OfPnt;
                weights: ptr TColStdArray2OfReal; knots: TColStdArray1OfReal;
                mults: TColStdArray1OfInteger; newPoles: var TColgpArray2OfPnt;
                newWeights: ptr TColStdArray2OfReal;
                newKnots: var TColStdArray1OfReal;
                newMults: var TColStdArray1OfInteger; tolerance: StandardReal): StandardBoolean {.
    importcpp: "BSplSLib::RemoveKnot(@)", header: "BSplSLib.hxx".}
proc increaseDegree*(uDirection: StandardBoolean; degree: StandardInteger;
                    newDegree: StandardInteger; periodic: StandardBoolean;
                    poles: TColgpArray2OfPnt; weights: ptr TColStdArray2OfReal;
                    knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
                    newPoles: var TColgpArray2OfPnt;
                    newWeights: ptr TColStdArray2OfReal;
                    newKnots: var TColStdArray1OfReal;
                    newMults: var TColStdArray1OfInteger) {.
    importcpp: "BSplSLib::IncreaseDegree(@)", header: "BSplSLib.hxx".}
proc unperiodize*(uDirection: StandardBoolean; degree: StandardInteger;
                 mults: TColStdArray1OfInteger; knots: TColStdArray1OfReal;
                 poles: TColgpArray2OfPnt; weights: ptr TColStdArray2OfReal;
                 newMults: var TColStdArray1OfInteger;
                 newKnots: var TColStdArray1OfReal;
                 newPoles: var TColgpArray2OfPnt;
                 newWeights: ptr TColStdArray2OfReal) {.
    importcpp: "BSplSLib::Unperiodize(@)", header: "BSplSLib.hxx".}
proc noWeights*(): ptr TColStdArray2OfReal {.importcpp: "BSplSLib::NoWeights(@)",
    header: "BSplSLib.hxx".}
proc buildCache*(u: StandardReal; v: StandardReal; uSpanDomain: StandardReal;
                vSpanDomain: StandardReal; uPeriodicFlag: StandardBoolean;
                vPeriodicFlag: StandardBoolean; uDegree: StandardInteger;
                vDegree: StandardInteger; uIndex: StandardInteger;
                vIndex: StandardInteger; uFlatKnots: TColStdArray1OfReal;
                vFlatKnots: TColStdArray1OfReal; poles: TColgpArray2OfPnt;
                weights: ptr TColStdArray2OfReal;
                cachePoles: var TColgpArray2OfPnt;
                cacheWeights: ptr TColStdArray2OfReal) {.
    importcpp: "BSplSLib::BuildCache(@)", header: "BSplSLib.hxx".}
proc buildCache*(theU: StandardReal; theV: StandardReal;
                theUSpanDomain: StandardReal; theVSpanDomain: StandardReal;
                theUPeriodic: StandardBoolean; theVPeriodic: StandardBoolean;
                theUDegree: StandardInteger; theVDegree: StandardInteger;
                theUIndex: StandardInteger; theVIndex: StandardInteger;
                theUFlatKnots: TColStdArray1OfReal;
                theVFlatKnots: TColStdArray1OfReal; thePoles: TColgpArray2OfPnt;
                theWeights: ptr TColStdArray2OfReal;
                theCacheArray: var TColStdArray2OfReal) {.
    importcpp: "BSplSLib::BuildCache(@)", header: "BSplSLib.hxx".}
proc cacheD0*(u: StandardReal; v: StandardReal; uDegree: StandardInteger;
             vDegree: StandardInteger; uCacheParameter: StandardReal;
             vCacheParameter: StandardReal; uSpanLenght: StandardReal;
             vSpanLength: StandardReal; poles: TColgpArray2OfPnt;
             weights: ptr TColStdArray2OfReal; point: var GpPnt) {.
    importcpp: "BSplSLib::CacheD0(@)", header: "BSplSLib.hxx".}
proc coefsD0*(u: StandardReal; v: StandardReal; poles: TColgpArray2OfPnt;
             weights: ptr TColStdArray2OfReal; point: var GpPnt) {.
    importcpp: "BSplSLib::CoefsD0(@)", header: "BSplSLib.hxx".}
proc cacheD1*(u: StandardReal; v: StandardReal; uDegree: StandardInteger;
             vDegree: StandardInteger; uCacheParameter: StandardReal;
             vCacheParameter: StandardReal; uSpanLenght: StandardReal;
             vSpanLength: StandardReal; poles: TColgpArray2OfPnt;
             weights: ptr TColStdArray2OfReal; point: var GpPnt; vecU: var GpVec;
             vecV: var GpVec) {.importcpp: "BSplSLib::CacheD1(@)",
                             header: "BSplSLib.hxx".}
proc coefsD1*(u: StandardReal; v: StandardReal; poles: TColgpArray2OfPnt;
             weights: ptr TColStdArray2OfReal; point: var GpPnt; vecU: var GpVec;
             vecV: var GpVec) {.importcpp: "BSplSLib::CoefsD1(@)",
                             header: "BSplSLib.hxx".}
proc cacheD2*(u: StandardReal; v: StandardReal; uDegree: StandardInteger;
             vDegree: StandardInteger; uCacheParameter: StandardReal;
             vCacheParameter: StandardReal; uSpanLenght: StandardReal;
             vSpanLength: StandardReal; poles: TColgpArray2OfPnt;
             weights: ptr TColStdArray2OfReal; point: var GpPnt; vecU: var GpVec;
             vecV: var GpVec; vecUU: var GpVec; vecUV: var GpVec; vecVV: var GpVec) {.
    importcpp: "BSplSLib::CacheD2(@)", header: "BSplSLib.hxx".}
proc coefsD2*(u: StandardReal; v: StandardReal; poles: TColgpArray2OfPnt;
             weights: ptr TColStdArray2OfReal; point: var GpPnt; vecU: var GpVec;
             vecV: var GpVec; vecUU: var GpVec; vecUV: var GpVec; vecVV: var GpVec) {.
    importcpp: "BSplSLib::CoefsD2(@)", header: "BSplSLib.hxx".}
proc polesCoefficients*(poles: TColgpArray2OfPnt; cachePoles: var TColgpArray2OfPnt) {.
    importcpp: "BSplSLib::PolesCoefficients(@)", header: "BSplSLib.hxx".}
proc polesCoefficients*(poles: TColgpArray2OfPnt; weights: ptr TColStdArray2OfReal;
                       cachePoles: var TColgpArray2OfPnt;
                       cacheWeights: ptr TColStdArray2OfReal) {.
    importcpp: "BSplSLib::PolesCoefficients(@)", header: "BSplSLib.hxx".}
proc resolution*(poles: TColgpArray2OfPnt; weights: ptr TColStdArray2OfReal;
                uKnots: TColStdArray1OfReal; vKnots: TColStdArray1OfReal;
                uMults: TColStdArray1OfInteger; vMults: TColStdArray1OfInteger;
                uDegree: StandardInteger; vDegree: StandardInteger;
                uRat: StandardBoolean; vRat: StandardBoolean; uPer: StandardBoolean;
                vPer: StandardBoolean; tolerance3D: StandardReal;
                uTolerance: var StandardReal; vTolerance: var StandardReal) {.
    importcpp: "BSplSLib::Resolution(@)", header: "BSplSLib.hxx".}
proc interpolate*(uDegree: StandardInteger; vDegree: StandardInteger;
                 uFlatKnots: TColStdArray1OfReal; vFlatKnots: TColStdArray1OfReal;
                 uParameters: TColStdArray1OfReal;
                 vParameters: TColStdArray1OfReal; poles: var TColgpArray2OfPnt;
                 weights: var TColStdArray2OfReal;
                 inversionProblem: var StandardInteger) {.
    importcpp: "BSplSLib::Interpolate(@)", header: "BSplSLib.hxx".}
proc interpolate*(uDegree: StandardInteger; vDegree: StandardInteger;
                 uFlatKnots: TColStdArray1OfReal; vFlatKnots: TColStdArray1OfReal;
                 uParameters: TColStdArray1OfReal;
                 vParameters: TColStdArray1OfReal; poles: var TColgpArray2OfPnt;
                 inversionProblem: var StandardInteger) {.
    importcpp: "BSplSLib::Interpolate(@)", header: "BSplSLib.hxx".}
proc functionMultiply*(function: BSplSLibEvaluatorFunction;
                      uBSplineDegree: StandardInteger;
                      vBSplineDegree: StandardInteger;
                      uBSplineKnots: TColStdArray1OfReal;
                      vBSplineKnots: TColStdArray1OfReal;
                      uMults: ptr TColStdArray1OfInteger;
                      vMults: ptr TColStdArray1OfInteger; poles: TColgpArray2OfPnt;
                      weights: ptr TColStdArray2OfReal;
                      uFlatKnots: TColStdArray1OfReal;
                      vFlatKnots: TColStdArray1OfReal;
                      uNewDegree: StandardInteger; vNewDegree: StandardInteger;
                      newNumerator: var TColgpArray2OfPnt;
                      newDenominator: var TColStdArray2OfReal;
                      theStatus: var StandardInteger) {.
    importcpp: "BSplSLib::FunctionMultiply(@)", header: "BSplSLib.hxx".}

