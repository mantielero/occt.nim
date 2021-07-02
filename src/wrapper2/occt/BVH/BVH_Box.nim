##  Created on: 2013-12-20
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## !!!Ignored construct:  # _BVH_Box_Header [NewLine] # _BVH_Box_Header [NewLine] # < BVH_Constants . hxx > [NewLine] # < BVH_Types . hxx > [NewLine] # < Standard_Macro . hxx > [NewLine] # < Standard_Dump . hxx > [NewLine] # < Standard_ShortReal . hxx > [NewLine] # < limits > [NewLine] ! Base class for BVH_Box (CRTP idiom is used).
## ! @tparam T             Numeric data type
## ! @tparam N             Vector dimension
## ! @tparam TheDerivedBox Template of derived class that defined axis aligned bounding box. template < class T , int N , template < class T , int N > class TheDerivedBox > [end of template] class BVH_BaseBox { } ;
## Error: token expected: > [end of template] but got: [identifier]!!!

##  forward declaration

discard "forward decl of BVH_Box"
## !!!Ignored construct:  template < class T > [end of template] class BVH_BaseBox < T , 3 , BVH_Box > { public : ! Transforms this box with given transformation. void Transform ( const NCollection_Mat4 < T > & theTransform ) { if ( theTransform . IsIdentity ( ) ) { return ; } BVH_Box < T , 3 > * aThis = static_cast < BVH_Box < T , 3 > * > ( this ) ; if ( ! aThis -> IsValid ( ) ) { return ; } BVH_Box < T , 3 > aBox = Transformed ( theTransform ) ; aThis -> CornerMin ( ) = aBox . CornerMin ( ) ; aThis -> CornerMax ( ) = aBox . CornerMax ( ) ; } ! Returns a box which is the result of applying the
## ! given transformation to this box. BVH_Box < T , 3 > Transformed ( const NCollection_Mat4 < T > & theTransform ) const { BVH_Box < T , 3 > aResultBox ; if ( theTransform . IsIdentity ( ) ) { return aResultBox ; } const BVH_Box < T , 3 > * aThis = static_cast < const BVH_Box < T , 3 > * > ( this ) ; if ( ! aThis -> IsValid ( ) ) { return aResultBox ; } for ( size_t aX = 0 ; aX <= 1 ; ++ aX ) { for ( size_t aY = 0 ; aY <= 1 ; ++ aY ) { for ( size_t aZ = 0 ; aZ <= 1 ; ++ aZ ) { typename BVH :: VectorType < T , 4 > :: Type aPnt = theTransform * typename BVH :: VectorType < T , 4 > :: Type ( aX ? aThis -> CornerMax ( ) . x ( ) : aThis -> CornerMin ( ) . x ( ) , aY ? aThis -> CornerMax ( ) . y ( ) : aThis -> CornerMin ( ) . y ( ) , aZ ? aThis -> CornerMax ( ) . z ( ) : aThis -> CornerMin ( ) . z ( ) , static_cast < T > ( 1.0 ) ) ; aResultBox . Add ( aPnt . xyz ( ) ) ; } } } return aResultBox ; } } ;
## Error: token expected: ; but got: <!!!

## ! Defines axis aligned bounding box (AABB) based on BVH vectors.
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension

type
  BVH_BaseBoxBVH_Box*[T; N: static[cint]] {.
      importcpp: "BVH_BaseBox<\'0>::BVH_Box<\'1,\'2>", header: "BVH_Box.hxx", bycopy.} = object of BVH_BaseBox[
      T, N, BVH_BaseBoxBVH_Box] ## ! Creates uninitialized bounding box.
                             ## ! Clears bounding box.
                             ## ! Checks if the Box is out of the other box.
    ## !< Minimum point of bounding box
    ## !< Maximum point of bounding box
    ## !< Is bounding box initialized?

  BVH_BaseBoxBVH_BoxBVH_VecNt*[T; N] = Type[T, N]

proc constructBVH_BaseBoxBVH_Box*[T; N: static[cint]](): BVH_BaseBoxBVH_Box[T, N] {.
    constructor, importcpp: "BVH_BaseBox<\'*0>::BVH_Box<\'*1,\'*2>(@)",
    header: "BVH_Box.hxx".}
proc constructBVH_BaseBoxBVH_Box*[T; N: static[cint]](
    thePoint: BVH_BaseBoxBVH_BoxBVH_VecNt): BVH_BaseBoxBVH_Box[T, N] {.constructor,
    importcpp: "BVH_BaseBox<\'*0>::BVH_Box<\'*1,\'*2>(@)", header: "BVH_Box.hxx".}
proc constructBVH_BaseBoxBVH_Box*[T; N: static[cint]](
    theMinPoint: BVH_BaseBoxBVH_BoxBVH_VecNt;
    theMaxPoint: BVH_BaseBoxBVH_BoxBVH_VecNt): BVH_BaseBoxBVH_Box[T, N] {.
    constructor, importcpp: "BVH_BaseBox<\'*0>::BVH_Box<\'*1,\'*2>(@)",
    header: "BVH_Box.hxx".}
proc clear*[T; N: static[cint]](this: var BVH_BaseBoxBVH_Box[T, N]) {.
    importcpp: "Clear", header: "BVH_Box.hxx".}
proc isValid*[T; N: static[cint]](this: BVH_BaseBoxBVH_Box[T, N]): StandardBoolean {.
    noSideEffect, importcpp: "IsValid", header: "BVH_Box.hxx".}
proc add*[T; N: static[cint]](this: var BVH_BaseBoxBVH_Box[T, N];
                           thePoint: BVH_BaseBoxBVH_BoxBVH_VecNt) {.
    importcpp: "Add", header: "BVH_Box.hxx".}
proc combine*[T; N: static[cint]](this: var BVH_BaseBoxBVH_Box[T, N];
                               theBox: BVH_BaseBoxBVH_Box) {.importcpp: "Combine",
    header: "BVH_Box.hxx".}
proc cornerMin*[T; N: static[cint]](this: BVH_BaseBoxBVH_Box[T, N]): BVH_BaseBoxBVH_BoxBVH_VecNt {.
    noSideEffect, importcpp: "CornerMin", header: "BVH_Box.hxx".}
proc cornerMax*[T; N: static[cint]](this: BVH_BaseBoxBVH_Box[T, N]): BVH_BaseBoxBVH_BoxBVH_VecNt {.
    noSideEffect, importcpp: "CornerMax", header: "BVH_Box.hxx".}
proc cornerMin*[T; N: static[cint]](this: var BVH_BaseBoxBVH_Box[T, N]): var BVH_BaseBoxBVH_BoxBVH_VecNt {.
    importcpp: "CornerMin", header: "BVH_Box.hxx".}
proc cornerMax*[T; N: static[cint]](this: var BVH_BaseBoxBVH_Box[T, N]): var BVH_BaseBoxBVH_BoxBVH_VecNt {.
    importcpp: "CornerMax", header: "BVH_Box.hxx".}
proc area*[T; N: static[cint]](this: BVH_BaseBoxBVH_Box[T, N]): T {.noSideEffect,
    importcpp: "Area", header: "BVH_Box.hxx".}
proc size*[T; N: static[cint]](this: BVH_BaseBoxBVH_Box[T, N]): BVH_BaseBoxBVH_BoxBVH_VecNt {.
    noSideEffect, importcpp: "Size", header: "BVH_Box.hxx".}
proc center*[T; N: static[cint]](this: BVH_BaseBoxBVH_Box[T, N]): BVH_BaseBoxBVH_BoxBVH_VecNt {.
    noSideEffect, importcpp: "Center", header: "BVH_Box.hxx".}
proc center*[T; N: static[cint]](this: BVH_BaseBoxBVH_Box[T, N];
                              theAxis: StandardInteger): T {.noSideEffect,
    importcpp: "Center", header: "BVH_Box.hxx".}
proc dumpJson*[T; N: static[cint]](this: BVH_BaseBoxBVH_Box[T, N];
                                theOStream: var StandardOStream;
                                theDepth: StandardInteger = -1) {.noSideEffect,
    importcpp: "DumpJson", header: "BVH_Box.hxx".}
proc initFromJson*[T; N: static[cint]](this: var BVH_BaseBoxBVH_Box[T, N];
                                    theSStream: StandardSStream;
                                    theStreamPos: var StandardInteger): StandardBoolean {.
    importcpp: "InitFromJson", header: "BVH_Box.hxx".}
proc isOut*[T; N: static[cint]](this: BVH_BaseBoxBVH_Box[T, N];
                             theOther: BVH_BaseBoxBVH_Box[T, N]): StandardBoolean {.
    noSideEffect, importcpp: "IsOut", header: "BVH_Box.hxx".}
proc isOut*[T; N: static[cint]](this: BVH_BaseBoxBVH_Box[T, N];
                             theMinPoint: BVH_BaseBoxBVH_BoxBVH_VecNt;
                             theMaxPoint: BVH_BaseBoxBVH_BoxBVH_VecNt): StandardBoolean {.
    noSideEffect, importcpp: "IsOut", header: "BVH_Box.hxx".}
proc contains*[T; N: static[cint]](this: BVH_BaseBoxBVH_Box[T, N];
                                theOther: BVH_BaseBoxBVH_Box[T, N];
                                hasOverlap: var StandardBoolean): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: "BVH_Box.hxx".}
proc contains*[T; N: static[cint]](this: BVH_BaseBoxBVH_Box[T, N];
                                theMinPoint: BVH_BaseBoxBVH_BoxBVH_VecNt;
                                theMaxPoint: BVH_BaseBoxBVH_BoxBVH_VecNt;
                                hasOverlap: var StandardBoolean): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: "BVH_Box.hxx".}
proc isOut*[T; N: static[cint]](this: BVH_BaseBoxBVH_Box[T, N];
                             thePoint: BVH_BaseBoxBVH_BoxBVH_VecNt): StandardBoolean {.
    noSideEffect, importcpp: "IsOut", header: "BVH_Box.hxx".}
## ! Tool class for calculating box center along the given axis.
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension

type
  BVH_BaseBoxCenterAxis*[T; N: static[cint]] {.
      importcpp: "BVH::BVH_BaseBox<\'0>::CenterAxis<\'1,\'2>",
      header: "BVH_Box.hxx", bycopy.} = object ##  Not implemented


## !!!Ignored construct:  template < class T > [end of template] struct CenterAxis < T , 2 > { static T Center ( const BVH_Box < T , 2 > & theBox , const Standard_Integer theAxis ) { if ( theAxis == 0 ) { return ( theBox . CornerMin ( ) . x ( ) + theBox . CornerMax ( ) . x ( ) ) * static_cast < T > ( 0.5 ) ; } else if ( theAxis == 1 ) { return ( theBox . CornerMin ( ) . y ( ) + theBox . CornerMax ( ) . y ( ) ) * static_cast < T > ( 0.5 ) ; } return static_cast < T > ( 0.0 ) ; } } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < class T > [end of template] struct CenterAxis < T , 3 > { static T Center ( const BVH_Box < T , 3 > & theBox , const Standard_Integer theAxis ) { if ( theAxis == 0 ) { return ( theBox . CornerMin ( ) . x ( ) + theBox . CornerMax ( ) . x ( ) ) * static_cast < T > ( 0.5 ) ; } else if ( theAxis == 1 ) { return ( theBox . CornerMin ( ) . y ( ) + theBox . CornerMax ( ) . y ( ) ) * static_cast < T > ( 0.5 ) ; } else if ( theAxis == 2 ) { return ( theBox . CornerMin ( ) . z ( ) + theBox . CornerMax ( ) . z ( ) ) * static_cast < T > ( 0.5 ) ; } return static_cast < T > ( 0.0 ) ; } } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < class T > [end of template] struct CenterAxis < T , 4 > { static T Center ( const BVH_Box < T , 4 > & theBox , const Standard_Integer theAxis ) { if ( theAxis == 0 ) { return ( theBox . CornerMin ( ) . x ( ) + theBox . CornerMax ( ) . x ( ) ) * static_cast < T > ( 0.5 ) ; } else if ( theAxis == 1 ) { return ( theBox . CornerMin ( ) . y ( ) + theBox . CornerMax ( ) . y ( ) ) * static_cast < T > ( 0.5 ) ; } else if ( theAxis == 2 ) { return ( theBox . CornerMin ( ) . z ( ) + theBox . CornerMax ( ) . z ( ) ) * static_cast < T > ( 0.5 ) ; } return static_cast < T > ( 0.0 ) ; } } ;
## Error: identifier expected, but got: <!!!

## ! Tool class for calculating surface area of the box.
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension

type
  BVH_BaseBoxCenterAxisCenterAxisCenterAxisSurfaceCalculator*[T; N: static[cint]] {.importcpp: "BVH::BVH_BaseBox<\'0>::CenterAxis<\'1>::CenterAxis<\'2>::CenterAxis<\'3>::SurfaceCalculator<\'4,\'5>",
      header: "BVH_Box.hxx", bycopy.} = object ##  Not implemented


## !!!Ignored construct:  template < class T > [end of template] struct SurfaceCalculator < T , 2 > { static T Area ( const typename BVH_Box < T , 2 > :: BVH_VecNt & theSize ) { const T anArea = theSize . x ( ) * theSize . y ( ) ; if ( anArea < std :: numeric_limits < T > :: epsilon ( ) ) { return theSize . x ( ) + theSize . y ( ) ; } return anArea ; } } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < class T > [end of template] struct SurfaceCalculator < T , 3 > { static T Area ( const typename BVH_Box < T , 3 > :: BVH_VecNt & theSize ) { const T anArea = ( theSize . x ( ) * theSize . y ( ) + theSize . x ( ) * theSize . z ( ) + theSize . z ( ) * theSize . y ( ) ) * static_cast < T > ( 2.0 ) ; if ( anArea < std :: numeric_limits < T > :: epsilon ( ) ) { return theSize . x ( ) + theSize . y ( ) + theSize . z ( ) ; } return anArea ; } } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < class T > [end of template] struct SurfaceCalculator < T , 4 > { static T Area ( const typename BVH_Box < T , 4 > :: BVH_VecNt & theSize ) { const T anArea = ( theSize . x ( ) * theSize . y ( ) + theSize . x ( ) * theSize . z ( ) + theSize . z ( ) * theSize . y ( ) ) * static_cast < T > ( 2.0 ) ; if ( anArea < std :: numeric_limits < T > :: epsilon ( ) ) { return theSize . x ( ) + theSize . y ( ) + theSize . z ( ) ; } return anArea ; } } ;
## Error: identifier expected, but got: <!!!

## ! Tool class for calculate component-wise vector minimum
## ! and maximum (optimized version).
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension

type
  BVH_BaseBoxCenterAxisCenterAxisCenterAxisSurfaceCalculatorSurfaceCalculatorSurfaceCalculatorBoxMinMax*[
      T; N: static[cint]] {.importcpp: "BVH::BVH_BaseBox<\'0>::CenterAxis<\'1>::CenterAxis<\'2>::CenterAxis<\'3>::SurfaceCalculator<\'4>::SurfaceCalculator<\'5>::SurfaceCalculator<\'6>::BoxMinMax<\'7,\'8>",
                         header: "BVH_Box.hxx", bycopy.} = object

  BVH_BaseBoxCenterAxisCenterAxisCenterAxisSurfaceCalculatorSurfaceCalculatorSurfaceCalculatorBoxMinMaxBVH_VecNt*[
      T; N] = Type[T, N]

proc cwiseMin*[T; N: static[cint]](theVec1: var BVH_BaseBoxCenterAxisCenterAxisCenterAxisSurfaceCalculatorSurfaceCalculatorSurfaceCalculatorBoxMinMaxBVH_VecNt;
    theVec2: BVH_BaseBoxCenterAxisCenterAxisCenterAxisSurfaceCalculatorSurfaceCalculatorSurfaceCalculatorBoxMinMaxBVH_VecNt) {.
    importcpp: "BVH::BoxMinMax::CwiseMin(@)", header: "BVH_Box.hxx".}
proc cwiseMax*[T; N: static[cint]](theVec1: var BVH_BaseBoxCenterAxisCenterAxisCenterAxisSurfaceCalculatorSurfaceCalculatorSurfaceCalculatorBoxMinMaxBVH_VecNt;
    theVec2: BVH_BaseBoxCenterAxisCenterAxisCenterAxisSurfaceCalculatorSurfaceCalculatorSurfaceCalculatorBoxMinMaxBVH_VecNt) {.
    importcpp: "BVH::BoxMinMax::CwiseMax(@)", header: "BVH_Box.hxx".}
## !!!Ignored construct:  template < class T > [end of template] struct BoxMinMax < T , 2 > { typedef typename BVH :: VectorType < T , 2 > :: Type BVH_VecNt ; static void CwiseMin ( BVH_VecNt & theVec1 , const BVH_VecNt & theVec2 ) { theVec1 . x ( ) = Min ( theVec1 . x ( ) , theVec2 . x ( ) ) ; theVec1 . y ( ) = Min ( theVec1 . y ( ) , theVec2 . y ( ) ) ; } static void CwiseMax ( BVH_VecNt & theVec1 , const BVH_VecNt & theVec2 ) { theVec1 . x ( ) = Max ( theVec1 . x ( ) , theVec2 . x ( ) ) ; theVec1 . y ( ) = Max ( theVec1 . y ( ) , theVec2 . y ( ) ) ; } } ;
## Error: identifier expected, but got: <!!!

##  =======================================================================
##  function : Combine
##  purpose  :
##  =======================================================================

## !!!Ignored construct:  template < class T , int N > [end of template] void BVH_Box < T , N > :: Combine ( const BVH_Box & theBox ) { if ( theBox . myIsInited ) { if ( ! myIsInited ) { myMinPoint = theBox . myMinPoint ; myMaxPoint = theBox . myMaxPoint ; myIsInited = Standard_True ; } else { BVH :: BoxMinMax < T , N > :: CwiseMin ( myMinPoint , theBox . myMinPoint ) ; BVH :: BoxMinMax < T , N > :: CwiseMax ( myMaxPoint , theBox . myMaxPoint ) ; } } }  =======================================================================
##  function : Area
##  purpose  :
##  ======================================================================= template < class T , int N > T BVH_Box < T , N > :: Area ( ) const { return ! myIsInited ? static_cast < T > ( 0.0 ) : BVH :: SurfaceCalculator < T , N > :: Area ( myMaxPoint - myMinPoint ) ; }  =======================================================================
##  function : Center
##  purpose  :
##  ======================================================================= template < class T , int N > T BVH_Box < T , N > :: Center ( const Standard_Integer theAxis ) const { return BVH :: CenterAxis < T , N > :: Center ( * this , theAxis ) ; } #  _BVH_Box_Header
## Error: token expected: ; but got: <!!!


