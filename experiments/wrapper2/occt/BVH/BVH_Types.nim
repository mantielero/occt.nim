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

##  Use this macro to switch between STL and OCCT vector types

##  GCC supports shrink function only in C++11 mode

when defined(bvh_Use_Std_Vector) and defined(msc_Ver) and
    not defined(intel_Compiler):
  discard
## ! Tool class for selecting appropriate vector type (Eigen or NCollection).
## ! \tparam T Numeric data type
## ! \tparam N Component number

type
  VectorType*[T; N: static[cint]] {.importcpp: "BVH::VectorType<\'0,\'1>",
                                 header: "BVH_Types.hxx", bycopy.} = object ##  Not implemented


## !!!Ignored construct:  template < class T > [end of template] struct VectorType < T , 1 > { typedef T Type ; } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < class T > [end of template] struct VectorType < T , 2 > { typedef NCollection_Vec2 < T > Type ; } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < class T > [end of template] struct VectorType < T , 3 > { typedef NCollection_Vec3 < T > Type ; } ;
## Error: identifier expected, but got: <!!!

proc toBndBox*[T](theMin: T; theMax: T): BndBox =
  discard

proc toBndBox*[T](theMin: NCollectionVec2[T]; theMax: NCollectionVec2[T]): BndBox =
  discard

proc toBndBox*[T](theMin: NCollectionVec3[T]; theMax: NCollectionVec3[T]): BndBox =
  discard

proc toBndBox*[T](theMin: NCollectionVec4[T]; theMax: NCollectionVec4[T]): BndBox =
  discard

## !!!Ignored construct:  template < class T > [end of template] struct VectorType < T , 4 > { typedef NCollection_Vec4 < T > Type ; } ;
## Error: identifier expected, but got: <!!!

## ! Tool class for selecting appropriate matrix type (Eigen or NCollection).
## ! \tparam T Numeric data type
## ! \tparam N Matrix dimension

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixType*[T; N: static[cint]] {.importcpp: "BVH::VectorType<\'0>::VectorType<\'1>::VectorType<\'2>::VectorType<\'3>::MatrixType<\'4,\'5>",
      header: "BVH_Types.hxx", bycopy.} = object ##  Not implemented


## !!!Ignored construct:  template < class T > [end of template] struct MatrixType < T , 4 > { typedef NCollection_Mat4 < T > Type ; } ;
## Error: identifier expected, but got: <!!!

## ! Tool class for selecting type of array of vectors (STD or NCollection vector).
## ! \tparam T Numeric data type
## ! \tparam N Component number

## !!!Ignored construct:  template < class T , int N = 1 > [end of template] struct ArrayType { # [NewLine] typedef NCollection_Vector < typename VectorType < T , N > :: Type > Type ; # [NewLine] typedef std :: vector < typename VectorType < T , N > :: Type > Type ; # [NewLine] } ;
## Error: token expected: > [end of template] but got: =!!!

## ! 2D vector of integers.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Vec2i* = Type[int, 2]

## ! 3D vector of integers.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Vec3i* = Type[int, 3]

## ! 4D vector of integers.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Vec4i* = Type[int, 4]

## ! Array of 2D vectors of integers.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Array2i* = Type[int, 2]

## ! Array of 3D vectors of integers.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Array3i* = Type[int, 3]

## ! Array of 4D vectors of integers.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Array4i* = Type[int, 4]

## ! 2D vector of single precision reals.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Vec2f* = Type[
      StandardShortReal, 2]

## ! 3D vector of single precision reals.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Vec3f* = Type[
      StandardShortReal, 3]

## ! 4D vector of single precision reals.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Vec4f* = Type[
      StandardShortReal, 4]

## ! Array of 2D vectors of single precision reals.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Array2f* = Type[
      StandardShortReal, 2]

## ! Array of 3D vectors of single precision reals.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Array3f* = Type[
      StandardShortReal, 3]

## ! Array of 4D vectors of single precision reals.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Array4f* = Type[
      StandardShortReal, 4]

## ! 2D vector of double precision reals.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Vec2d* = Type[float, 2]

## ! 3D vector of double precision reals.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Vec3d* = Type[float, 3]

## ! 4D vector of double precision reals.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Vec4d* = Type[float, 4]

## ! Array of 2D vectors of double precision reals.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Array2d* = Type[float, 2]

## ! Array of 3D vectors of double precision reals.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Array3d* = Type[float, 3]

## ! Array of 4D vectors of double precision reals.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Array4d* = Type[float, 4]

## ! 4x4 matrix of single precision reals.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Mat4f* = VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeType[
      StandardShortReal, 4]

## ! 4x4 matrix of double precision reals.

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeBVH_Mat4d* = VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeType[
      float, 4]

## ! Tool class for accessing specific vector component (by index).
## ! \tparam T Numeric data type
## ! \tparam N Component number

type
  VectorTypeVectorTypeVectorTypeVectorTypeMatrixTypeVecComp*[T; N: static[cint]] {.importcpp: "BVH::VectorType<\'0>::VectorType<\'1>::VectorType<\'2>::VectorType<\'3>::MatrixType<\'4>::VecComp<\'5,\'6>",
      header: "BVH_Types.hxx", bycopy.} = object ##  Not implemented


## !!!Ignored construct:  template < class T > [end of template] struct VecComp < T , 2 > { typedef typename BVH :: VectorType < T , 2 > :: Type BVH_Vec2t ; static T Get ( const BVH_Vec2t & theVec , const Standard_Integer theAxis ) { return theAxis == 0 ? theVec . x ( ) : theVec . y ( ) ; } } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < class T > [end of template] struct VecComp < T , 3 > { typedef typename BVH :: VectorType < T , 3 > :: Type BVH_Vec3t ; static T Get ( const BVH_Vec3t & theVec , const Standard_Integer theAxis ) { return theAxis == 0 ? theVec . x ( ) : ( theAxis == 1 ? theVec . y ( ) : theVec . z ( ) ) ; } } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < class T > [end of template] struct VecComp < T , 4 > { typedef typename BVH :: VectorType < T , 4 > :: Type BVH_Vec4t ; static T Get ( const BVH_Vec4t & theVec , const Standard_Integer theAxis ) { return theAxis == 0 ? theVec . x ( ) : ( theAxis == 1 ? theVec . y ( ) : ( theAxis == 2 ? theVec . z ( ) : theVec . w ( ) ) ) ; } } ;
## Error: identifier expected, but got: <!!!

## ! Tool class providing typical operations on the array. It allows
## ! for interoperability between STD vector and NCollection vector.
## ! \tparam T Numeric data type
## ! \tparam N Component number

## !!!Ignored construct:  template < class T , int N = 1 > [end of template] struct Array { typedef typename BVH :: ArrayType < T , N > :: Type BVH_ArrayNt ; ! Returns a const reference to the element with the given index. static inline const typename BVH :: VectorType < T , N > :: Type & Value ( const BVH_ArrayNt & theArray , const Standard_Integer theIndex ) { # [NewLine] return theArray [ theIndex ] ; # [NewLine] return theArray . Value ( theIndex ) ; # [NewLine] } ! Returns a reference to the element with the given index. static inline typename BVH :: VectorType < T , N > :: Type & ChangeValue ( BVH_ArrayNt & theArray , const Standard_Integer theIndex ) { # [NewLine] return theArray [ theIndex ] ; # [NewLine] return theArray . ChangeValue ( theIndex ) ; # [NewLine] } ! Adds the new element at the end of the array. static inline void Append ( BVH_ArrayNt & theArray , const typename BVH :: VectorType < T , N > :: Type & theElement ) { # [NewLine] theArray . push_back ( theElement ) ; # [NewLine] theArray . Append ( theElement ) ; # [NewLine] } ! Returns the number of elements in the given array. static inline Standard_Integer Size ( const BVH_ArrayNt & theArray ) { # [NewLine] return static_cast < Standard_Integer > ( theArray . size ( ) ) ; # [NewLine] return static_cast < Standard_Integer > ( theArray . Size ( ) ) ; # [NewLine] } ! Removes all elements from the given array. static inline void Clear ( BVH_ArrayNt & theArray ) { # [NewLine] theArray . clear ( ) ; # [NewLine] theArray . Clear ( ) ; # [NewLine] } ! Requests that the array capacity be at least enough to
## ! contain given number of elements. This function has no
## ! effect in case of NCollection based array. static inline void Reserve ( BVH_ArrayNt & theArray , const Standard_Integer theCount ) { # [NewLine] if ( Size ( theArray ) == theCount ) { # [NewLine] # ( defined ( _MSC_VER ) && ( _MSC_VER < 1600 ) ) [NewLine] BVH_ArrayNt aTmpArray ( theArray ) ; theArray . swap ( aTmpArray ) ; # [NewLine] theArray . shrink_to_fit ( ) ; # [NewLine] # [NewLine] } else { theArray . reserve ( theCount ) ; } # [NewLine]  do nothing # [NewLine] } } ;
## Error: token expected: > [end of template] but got: =!!!

proc intFloor*[T](theValue: T): int =
  discard

