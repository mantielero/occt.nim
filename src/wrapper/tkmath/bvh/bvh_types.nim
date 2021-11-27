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


##    template<class T> struct VectorType<T, 1>
##    {
##      typedef T Type;
##    };
##
##    template<class T> struct VectorType<T, 2>
##    {
##      typedef NCollection_Vec2<T> Type;
##    };
##
##    template<class T> struct VectorType<T, 3>
##    {
##      typedef NCollection_Vec3<T> Type;
##    };

proc toBndBox*[T](theMin: T; theMax: T): BndBox {.cdecl.} =
  discard

proc toBndBox*[T](theMin: NCollectionVec2[T]; theMax: NCollectionVec2[T]): BndBox {.
    cdecl.} =
  discard

proc toBndBox*[T](theMin: NCollectionVec3[T]; theMax: NCollectionVec3[T]): BndBox {.
    cdecl.} =
  discard

proc toBndBox*[T](theMin: NCollectionVec4[T]; theMax: NCollectionVec4[T]): BndBox {.
    cdecl.} =
  discard

##    template<class T> struct VectorType<T, 4>
##    {
##      typedef NCollection_Vec4<T> Type;
##    };
## ! Tool class for selecting appropriate matrix type (Eigen or NCollection).
## ! \tparam T Numeric data type
## ! \tparam N Matrix dimension

type
  MatrixType*[T; N: static[cint]] {.importcpp: "BVH::MatrixType<\'0,\'1>",
                                 header: "BVH_Types.hxx", bycopy.} = object ##  Not implemented


##    template<class T> struct MatrixType<T, 4>
##    {
##      typedef NCollection_Mat4<T> Type;
##    };
## ! Tool class for selecting type of array of vectors (STD or NCollection vector).
## ! \tparam T Numeric data type
## ! \tparam N Component number
##    template<class T, int N = 1> struct ArrayType
##    {
##    #ifndef _BVH_USE_STD_VECTOR_
##      typedef NCollection_Vector<typename VectorType<T, N>::Type> Type;
##    #else
##      typedef std::vector<typename VectorType<T, N>::Type> Type;
##    #endif
##    };

## ! 2D vector of integers.

type
  BVH_Vec2i* = object

## ! 3D vector of integers.

type
  BVH_Vec3i* = object

## ! 4D vector of integers.

type
  BVH_Vec4i* = object

## ! Array of 2D vectors of integers.

type
  BVH_Array2i* = object

## ! Array of 3D vectors of integers.

type
  BVH_Array3i* = object

## ! Array of 4D vectors of integers.

type
  BVH_Array4i* = object

## ! 2D vector of single precision reals.

type
  BVH_Vec2f* = object

## ! 3D vector of single precision reals.

type
  BVH_Vec3f* = object

## ! 4D vector of single precision reals.

type
  BVH_Vec4f* = object

## ! Array of 2D vectors of single precision reals.

type
  BVH_Array2f* = object

## ! Array of 3D vectors of single precision reals.

type
  BVH_Array3f* = object

## ! Array of 4D vectors of single precision reals.

type
  BVH_Array4f* = object

## ! 2D vector of double precision reals.

type
  BVH_Vec2d* = object

## ! 3D vector of double precision reals.

type
  BVH_Vec3d* = object

## ! 4D vector of double precision reals.

type
  BVH_Vec4d* = object

## ! Array of 2D vectors of double precision reals.

type
  BVH_Array2d* = object

## ! Array of 3D vectors of double precision reals.

type
  BVH_Array3d* = object

## ! Array of 4D vectors of double precision reals.

type
  BVH_Array4d* = object

## ! 4x4 matrix of single precision reals.

type
  BVH_Mat4f* = object

## ! 4x4 matrix of double precision reals.

type
  BVH_Mat4d* = object

## ! Tool class for accessing specific vector component (by index).
## ! \tparam T Numeric data type
## ! \tparam N Component number

type
  VecComp*[T; N: static[cint]] {.importcpp: "BVH::VecComp<\'0,\'1>",
                              header: "BVH_Types.hxx", bycopy.} = object ##  Not implemented


##    template<class T> struct VecComp<T, 2>
##    {
##      typedef typename BVH::VectorType<T, 2>::Type BVH_Vec2t;
##
##      static T Get (const BVH_Vec2t& theVec, const Standard_Integer theAxis)
##      {
##        return theAxis == 0 ? theVec.x() : theVec.y();
##      }
##    };
##
##    template<class T> struct VecComp<T, 3>
##    {
##      typedef typename BVH::VectorType<T, 3>::Type BVH_Vec3t;
##
##      static T Get (const BVH_Vec3t& theVec, const Standard_Integer theAxis)
##      {
##        return theAxis == 0 ? theVec.x() : ( theAxis == 1 ? theVec.y() : theVec.z() );
##      }
##    };
##
##    template<class T> struct VecComp<T, 4>
##    {
##      typedef typename BVH::VectorType<T, 4>::Type BVH_Vec4t;
##
##      static T Get (const BVH_Vec4t& theVec, const Standard_Integer theAxis)
##      {
##        return theAxis == 0 ? theVec.x() :
##          (theAxis == 1 ? theVec.y() : ( theAxis == 2 ? theVec.z() : theVec.w() ));
##      }
##    };
## ! Tool class providing typical operations on the array. It allows
## ! for interoperability between STD vector and NCollection vector.
## ! \tparam T Numeric data type
## ! \tparam N Component number
##    template<class T, int N = 1> struct Array
##    {
##      typedef typename BVH::ArrayType<T, N>::Type BVH_ArrayNt;
##
##      //! Returns a const reference to the element with the given index.
##      static inline const typename BVH::VectorType<T, N>::Type& Value (
##          const BVH_ArrayNt& theArray, const Standard_Integer theIndex)
##      {
##  #ifdef _BVH_USE_STD_VECTOR_
##        return theArray[theIndex];
##  #else
##        return theArray.Value (theIndex);
##  #endif
##      }
##
##      //! Returns a reference to the element with the given index.
##      static inline typename BVH::VectorType<T, N>::Type& ChangeValue (
##        BVH_ArrayNt& theArray, const Standard_Integer theIndex)
##      {
##  #ifdef _BVH_USE_STD_VECTOR_
##        return theArray[theIndex];
##  #else
##        return theArray.ChangeValue (theIndex);
##  #endif
##      }
##
##      //! Adds the new element at the end of the array.
##      static inline void Append (BVH_ArrayNt& theArray,
##        const typename BVH::VectorType<T, N>::Type& theElement)
##      {
##  #ifdef _BVH_USE_STD_VECTOR_
##        theArray.push_back (theElement);
##  #else
##        theArray.Append (theElement);
##  #endif
##      }
##
##      //! Returns the number of elements in the given array.
##      static inline Standard_Integer Size (const BVH_ArrayNt& theArray)
##      {
##  #ifdef _BVH_USE_STD_VECTOR_
##        return static_cast<Standard_Integer> (theArray.size());
##  #else
##        return static_cast<Standard_Integer> (theArray.Size());
##  #endif
##      }
##
##      //! Removes all elements from the given array.
##      static inline void Clear (BVH_ArrayNt& theArray)
##      {
##  #ifdef _BVH_USE_STD_VECTOR_
##        theArray.clear();
##  #else
##        theArray.Clear();
##  #endif
##      }
##
##      //! Requests that the array capacity be at least enough to
##      //! contain given number of elements. This function has no
##      //! effect in case of NCollection based array.
##      static inline void Reserve (BVH_ArrayNt& theArray, const Standard_Integer theCount)
##      {
##  #ifdef _BVH_USE_STD_VECTOR_
##        if (Size (theArray) == theCount)
##        {
##  #ifdef _STD_VECTOR_SHRINK
##
##  #if(defined(_MSC_VER) && (_MSC_VER < 1600))
##          BVH_ArrayNt aTmpArray(theArray);
##          theArray.swap(aTmpArray);
##  #else
##          theArray.shrink_to_fit();
##  #endif
##
##  #endif
##        }
##        else
##        {
##          theArray.reserve (theCount);
##        }
##  #else
##        // do nothing
##  #endif
##      }
##    };

proc intFloor*[T](theValue: T): cint {.cdecl.} =
  discard
