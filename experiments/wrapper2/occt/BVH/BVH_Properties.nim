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

## !!!Ignored construct:  # _BVH_Properties_Header [NewLine] # _BVH_Properties_Header [NewLine] # < BVH_Box . hxx > [NewLine] # < Standard_Macro . hxx > [NewLine] ! Abstract properties of geometric object. class BVH_Properties : public Standard_Transient { public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return BVH_Properties ; } static const opencascade :: handle < Standard_Type > [end of template] & get_type_descriptor ( ) ; virtual const opencascade :: handle < Standard_Type > [end of template] & DynamicType ( ) const ; public : ! Releases resources of object properties. virtual ~ BVH_Properties ( ) = 0 ; } ;
## Error: token expected: ; but got: <!!!

## ! Stores transform properties of geometric object.

type
  MatrixOpUnitVectorUnitVectorUnitVectorBVH_Transform*[T; N: static[cint]] {.importcpp: "MatrixOp<\'0>::UnitVector<\'1>::UnitVector<\'2>::UnitVector<\'3>::BVH_Transform<\'4,\'5>",
      header: "BVH_Properties.hxx", bycopy.} = object of BVH_Properties ## ! Type of transformation matrix.
                                                                 ## ! Creates new identity transformation.
    ## !< Transformation matrix
    ## !< Inversed transformation matrix

  MatrixOpUnitVectorUnitVectorUnitVectorBVH_TransformBVH_MatNt*[T; N] = Type[T, N]

proc constructMatrixOpUnitVectorUnitVectorUnitVectorBVH_Transform*[T;
    N: static[cint]](): MatrixOpUnitVectorUnitVectorUnitVectorBVH_Transform[T, N] {.
    constructor, importcpp: "MatrixOp<\'*0>::UnitVector<\'*1>::UnitVector<\'*2>::UnitVector<\'*3>::BVH_Transform<\'*4,\'*5>(@)",
    header: "BVH_Properties.hxx".}
proc constructMatrixOpUnitVectorUnitVectorUnitVectorBVH_Transform*[T;
    N: static[cint]](theTransform: MatrixOpUnitVectorUnitVectorUnitVectorBVH_TransformBVH_MatNt): MatrixOpUnitVectorUnitVectorUnitVectorBVH_Transform[
    T, N] {.constructor, importcpp: "MatrixOp<\'*0>::UnitVector<\'*1>::UnitVector<\'*2>::UnitVector<\'*3>::BVH_Transform<\'*4,\'*5>(@)",
          header: "BVH_Properties.hxx".}
proc destroyMatrixOpUnitVectorUnitVectorUnitVectorBVH_Transform*[T;
    N: static[cint]](this: var MatrixOpUnitVectorUnitVectorUnitVectorBVH_Transform[
    T, N]) {.importcpp: "#.~BVH_Transform()", header: "BVH_Properties.hxx".}
proc transform*[T; N: static[cint]](this: MatrixOpUnitVectorUnitVectorUnitVectorBVH_Transform[
    T, N]): MatrixOpUnitVectorUnitVectorUnitVectorBVH_TransformBVH_MatNt {.
    noSideEffect, importcpp: "Transform", header: "BVH_Properties.hxx".}
proc setTransform*[T; N: static[cint]](this: var MatrixOpUnitVectorUnitVectorUnitVectorBVH_Transform[
    T, N]; theTransform: MatrixOpUnitVectorUnitVectorUnitVectorBVH_TransformBVH_MatNt) {.
    importcpp: "SetTransform", header: "BVH_Properties.hxx".}
proc inversed*[T; N: static[cint]](this: MatrixOpUnitVectorUnitVectorUnitVectorBVH_Transform[
    T, N]): MatrixOpUnitVectorUnitVectorUnitVectorBVH_TransformBVH_MatNt {.
    noSideEffect, importcpp: "Inversed", header: "BVH_Properties.hxx".}
proc apply*[T; N: static[cint]](this: MatrixOpUnitVectorUnitVectorUnitVectorBVH_Transform[
    T, N]; theBox: BVH_Box[T, N]): BVH_Box[T, N] {.noSideEffect, importcpp: "Apply",
    header: "BVH_Properties.hxx".}
type
  MatrixOpUnitVectorUnitVectorUnitVectorMatrixOp*[T; N: static[cint]] {.importcpp: "BVH::MatrixOp<\'0>::UnitVector<\'1>::UnitVector<\'2>::UnitVector<\'3>::MatrixOp<\'4,\'5>",
      header: "BVH_Properties.hxx", bycopy.} = object ##  Not implemented


## !!!Ignored construct:  template < class T > [end of template] struct MatrixOp < T , 4 > { typedef typename BVH :: MatrixType < T , 4 > :: Type BVH_Mat4t ; static void Inverse ( const BVH_Mat4t & theIn , BVH_Mat4t & theOut ) { theIn . Inverted ( theOut ) ; } typedef typename BVH :: VectorType < T , 4 > :: Type BVH_Vec4t ; static BVH_Vec4t Multiply ( const BVH_Mat4t & theMat , const BVH_Vec4t & theVec ) { BVH_Vec4t aOut = theMat * theVec ; return aOut * static_cast < T > ( 1.0 / aOut . w ( ) ) ; } } ;
## Error: identifier expected, but got: <!!!

type
  MatrixOpUnitVectorUnitVectorUnitVectorMatrixOpUnitVector*[T; N: static[cint]] {.importcpp: "BVH::MatrixOp<\'0>::UnitVector<\'1>::UnitVector<\'2>::UnitVector<\'3>::MatrixOp<\'4>::UnitVector<\'5,\'6>",
      header: "BVH_Properties.hxx", bycopy.} = object ##  Not implemented


## !!!Ignored construct:  template < class T > [end of template] struct UnitVector < T , 2 > { typedef typename BVH :: VectorType < T , 2 > :: Type BVH_Vec2t ; static BVH_Vec2t DX ( ) { return BVH_Vec2t ( static_cast < T > ( 1.0 ) , static_cast < T > ( 0.0 ) ) ; } static BVH_Vec2t DY ( ) { return BVH_Vec2t ( static_cast < T > ( 0.0 ) , static_cast < T > ( 1.0 ) ) ; } static BVH_Vec2t DZ ( ) { return BVH_Vec2t ( static_cast < T > ( 0.0 ) , static_cast < T > ( 0.0 ) ) ; } } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < class T > [end of template] struct UnitVector < T , 3 > { typedef typename BVH :: VectorType < T , 3 > :: Type BVH_Vec3t ; static BVH_Vec3t DX ( ) { return BVH_Vec3t ( static_cast < T > ( 1.0 ) , static_cast < T > ( 0.0 ) , static_cast < T > ( 0.0 ) ) ; } static BVH_Vec3t DY ( ) { return BVH_Vec3t ( static_cast < T > ( 0.0 ) , static_cast < T > ( 1.0 ) , static_cast < T > ( 0.0 ) ) ; } static BVH_Vec3t DZ ( ) { return BVH_Vec3t ( static_cast < T > ( 0.0 ) , static_cast < T > ( 0.0 ) , static_cast < T > ( 1.0 ) ) ; } } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < class T > [end of template] struct UnitVector < T , 4 > { typedef typename BVH :: VectorType < T , 4 > :: Type BVH_Vec4t ; static BVH_Vec4t DX ( ) { return BVH_Vec4t ( static_cast < T > ( 1.0 ) , static_cast < T > ( 0.0 ) , static_cast < T > ( 0.0 ) , static_cast < T > ( 0.0 ) ) ; } static BVH_Vec4t DY ( ) { return BVH_Vec4t ( static_cast < T > ( 0.0 ) , static_cast < T > ( 1.0 ) , static_cast < T > ( 0.0 ) , static_cast < T > ( 0.0 ) ) ; } static BVH_Vec4t DZ ( ) { return BVH_Vec4t ( static_cast < T > ( 0.0 ) , static_cast < T > ( 0.0 ) , static_cast < T > ( 1.0 ) , static_cast < T > ( 0.0 ) ) ; } } ;
## Error: identifier expected, but got: <!!!

##  =======================================================================
##  function : SetTransform
##  purpose  :
##  =======================================================================

## !!!Ignored construct:  template < class T , int N > [end of template] void BVH_Transform < T , N > :: SetTransform ( const BVH_MatNt & theTransform ) { myTransform = theTransform ; BVH :: MatrixOp < T , N > :: Inverse ( myTransform , myTransformInversed ) ; }  =======================================================================
##  function : Apply
##  purpose  :
##  ======================================================================= template < class T , int N > BVH_Box < T , N > BVH_Transform < T , N > :: Apply ( const BVH_Box < T , N > & theBox ) const { typename BVH_Box < T , N > :: BVH_VecNt aSize = theBox . Size ( ) ; BVH_Box < T , N > aBox ; for ( Standard_Integer aX = 0 ; aX <= 1 ; ++ aX ) { for ( Standard_Integer aY = 0 ; aY <= 1 ; ++ aY ) { for ( Standard_Integer aZ = 0 ; aZ <= 1 ; ++ aZ ) { typename BVH_Box < T , N > :: BVH_VecNt aCorner = theBox . CornerMin ( ) + BVH :: UnitVector < T , N > :: DX ( ) * aSize * static_cast < T > ( aX ) + BVH :: UnitVector < T , N > :: DY ( ) * aSize * static_cast < T > ( aY ) + BVH :: UnitVector < T , N > :: DZ ( ) * aSize * static_cast < T > ( aZ ) ; aBox . Add ( BVH :: MatrixOp < T , N > :: Multiply ( myTransform , aCorner ) ) ; } } } return aBox ; } #  _BVH_Properties_Header
## Error: token expected: ; but got: <!!!

