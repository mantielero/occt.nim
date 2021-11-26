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

## ! Base class for BVH_Box (CRTP idiom is used).
## ! @tparam T             Numeric data type
## ! @tparam N             Vector dimension
## ! @tparam TheDerivedBox Template of derived class that defined axis aligned bounding box.

type
  TheDerivedBox*[T; N: static[cint]] {.importcpp: "TheDerivedBox<\'0,\'1>",
                                    header: "BVH_Box.hxx", bycopy.} = object

  BVH_BaseBox*[T; N: static[cint]; TheDerivedBox] {.
      importcpp: "BVH_BaseBox<\'0,\'1,\'2>", header: "BVH_Box.hxx", bycopy.} = object of RootObj


##  forward declaration

discard "forward decl of BVH_Box"
type
  BVH_Box*[T; N: static[cint]] {.importcpp: "BVH_Box<\'0,\'1>",
                              header: "BVH_Box.hxx", bycopy.} = object of BVH_BaseBox[
      T, N, BVH_Box]            ## ! Creates uninitialized bounding box.
                  ## ! Clears bounding box.
                  ## ! Checks if the Box is out of the other box.
    ## !< Minimum point of bounding box
    ## !< Maximum point of bounding box
    ## !< Is bounding box initialized?

  BVH_BoxBVH_VecNt*[T; N] = Type[T, N]

proc newBVH_Box*[T; N: static[cint]](): BVH_Box[T, N] {.cdecl, constructor,
    importcpp: "BVH_Box<\'*0,\'*1>(@)", dynlib: tkmath.}
proc newBVH_Box*[T; N: static[cint]](thePoint: BVH_BoxBVH_VecNt): BVH_Box[T, N] {.
    cdecl, constructor, importcpp: "BVH_Box<\'*0,\'*1>(@)", dynlib: tkmath.}
proc newBVH_Box*[T; N: static[cint]](theMinPoint: BVH_BoxBVH_VecNt;
                                  theMaxPoint: BVH_BoxBVH_VecNt): BVH_Box[T, N] {.
    cdecl, constructor, importcpp: "BVH_Box<\'*0,\'*1>(@)", dynlib: tkmath.}
proc clear*[T; N: static[cint]](this: var BVH_Box[T, N]) {.cdecl, importcpp: "Clear",
    dynlib: tkmath.}
proc isValid*[T; N: static[cint]](this: BVH_Box[T, N]): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", dynlib: tkmath.}
proc add*[T; N: static[cint]](this: var BVH_Box[T, N]; thePoint: BVH_BoxBVH_VecNt) {.
    cdecl, importcpp: "Add", dynlib: tkmath.}
proc combine*[T; N: static[cint]](this: var BVH_Box[T, N]; theBox: BVH_Box) {.cdecl,
    importcpp: "Combine", dynlib: tkmath.}
proc cornerMin*[T; N: static[cint]](this: BVH_Box[T, N]): BVH_BoxBVH_VecNt {.
    noSideEffect, cdecl, importcpp: "CornerMin", dynlib: tkmath.}
proc cornerMax*[T; N: static[cint]](this: BVH_Box[T, N]): BVH_BoxBVH_VecNt {.
    noSideEffect, cdecl, importcpp: "CornerMax", dynlib: tkmath.}
proc cornerMin*[T; N: static[cint]](this: var BVH_Box[T, N]): var BVH_BoxBVH_VecNt {.
    cdecl, importcpp: "CornerMin", dynlib: tkmath.}
proc cornerMax*[T; N: static[cint]](this: var BVH_Box[T, N]): var BVH_BoxBVH_VecNt {.
    cdecl, importcpp: "CornerMax", dynlib: tkmath.}
proc area*[T; N: static[cint]](this: BVH_Box[T, N]): T {.noSideEffect, cdecl,
    importcpp: "Area", dynlib: tkmath.}
proc size*[T; N: static[cint]](this: BVH_Box[T, N]): BVH_BoxBVH_VecNt {.noSideEffect,
    cdecl, importcpp: "Size", dynlib: tkmath.}
proc center*[T; N: static[cint]](this: BVH_Box[T, N]): BVH_BoxBVH_VecNt {.noSideEffect,
    cdecl, importcpp: "Center", dynlib: tkmath.}
proc center*[T; N: static[cint]](this: BVH_Box[T, N]; theAxis: cint): T {.noSideEffect,
    cdecl, importcpp: "Center", dynlib: tkmath.}
proc dumpJson*[T; N: static[cint]](this: BVH_Box[T, N];
                                theOStream: var StandardOStream;
                                theDepth: cint = -1) {.noSideEffect, cdecl,
    importcpp: "DumpJson", dynlib: tkmath.}
proc initFromJson*[T; N: static[cint]](this: var BVH_Box[T, N];
                                    theSStream: StandardSStream;
                                    theStreamPos: var cint): bool {.cdecl,
    importcpp: "InitFromJson", dynlib: tkmath.}
proc isOut*[T; N: static[cint]](this: BVH_Box[T, N]; theOther: BVH_Box[T, N]): bool {.
    noSideEffect, cdecl, importcpp: "IsOut", dynlib: tkmath.}
proc isOut*[T; N: static[cint]](this: BVH_Box[T, N]; theMinPoint: BVH_BoxBVH_VecNt;
                             theMaxPoint: BVH_BoxBVH_VecNt): bool {.noSideEffect,
    cdecl, importcpp: "IsOut", dynlib: tkmath.}
proc contains*[T; N: static[cint]](this: BVH_Box[T, N]; theOther: BVH_Box[T, N];
                                hasOverlap: var bool): bool {.noSideEffect, cdecl,
    importcpp: "Contains", dynlib: tkmath.}
proc contains*[T; N: static[cint]](this: BVH_Box[T, N]; theMinPoint: BVH_BoxBVH_VecNt;
                                theMaxPoint: BVH_BoxBVH_VecNt;
                                hasOverlap: var bool): bool {.noSideEffect, cdecl,
    importcpp: "Contains", dynlib: tkmath.}
proc isOut*[T; N: static[cint]](this: BVH_Box[T, N]; thePoint: BVH_BoxBVH_VecNt): bool {.
    noSideEffect, cdecl, importcpp: "IsOut", dynlib: tkmath.}
##  namespace BVH
##  {
##    //! Tool class for calculating box center along the given axis.
##    //! \tparam T Numeric data type
##    //! \tparam N Vector dimension
##    template<class T, int N>
##    struct CenterAxis
##    {
##      // Not implemented
##    };
##
##    template<class T>
##    struct CenterAxis<T, 2>
##    {
##      static T Center (const BVH_Box<T, 2>& theBox, const Standard_Integer theAxis)
##      {
##        if (theAxis == 0)
##        {
##          return (theBox.CornerMin().x() + theBox.CornerMax().x()) * static_cast<T> (0.5);
##        }
##        else if (theAxis == 1)
##        {
##          return (theBox.CornerMin().y() + theBox.CornerMax().y()) * static_cast<T> (0.5);
##        }
##        return static_cast<T> (0.0);
##      }
##    };
##
##    template<class T>
##    struct CenterAxis<T, 3>
##    {
##      static T Center (const BVH_Box<T, 3>& theBox, const Standard_Integer theAxis)
##      {
##        if (theAxis == 0)
##        {
##          return (theBox.CornerMin().x() + theBox.CornerMax().x()) * static_cast<T> (0.5);
##        }
##        else if (theAxis == 1)
##        {
##          return (theBox.CornerMin().y() + theBox.CornerMax().y()) * static_cast<T> (0.5);
##        }
##        else if (theAxis == 2)
##        {
##          return (theBox.CornerMin().z() + theBox.CornerMax().z()) * static_cast<T> (0.5);
##        }
##        return static_cast<T> (0.0);
##      }
##    };
##
##    template<class T>
##    struct CenterAxis<T, 4>
##    {
##      static T Center (const BVH_Box<T, 4>& theBox, const Standard_Integer theAxis)
##      {
##        if (theAxis == 0)
##        {
##          return (theBox.CornerMin().x() + theBox.CornerMax().x()) * static_cast<T> (0.5);
##        }
##        else if (theAxis == 1)
##        {
##          return (theBox.CornerMin().y() + theBox.CornerMax().y()) * static_cast<T> (0.5);
##        }
##        else if (theAxis == 2)
##        {
##          return (theBox.CornerMin().z() + theBox.CornerMax().z()) * static_cast<T> (0.5);
##        }
##        return static_cast<T> (0.0);
##      }
##    };
##
##    //! Tool class for calculating surface area of the box.
##    //! \tparam T Numeric data type
##    //! \tparam N Vector dimension
##    template<class T, int N>
##    struct SurfaceCalculator
##    {
##      // Not implemented
##    };
##
##    template<class T>
##    struct SurfaceCalculator<T, 2>
##    {
##      static T Area (const typename BVH_Box<T, 2>::BVH_VecNt& theSize)
##      {
##        const T anArea = theSize.x() * theSize.y();
##
##        if (anArea < std::numeric_limits<T>::epsilon())
##        {
##          return theSize.x() + theSize.y();
##        }
##
##        return anArea;
##      }
##    };
##
##    template<class T>
##    struct SurfaceCalculator<T, 3>
##    {
##      static T Area (const typename BVH_Box<T, 3>::BVH_VecNt& theSize)
##      {
##        const T anArea = ( theSize.x() * theSize.y() +
##                           theSize.x() * theSize.z() +
##                           theSize.z() * theSize.y() ) * static_cast<T> (2.0);
##
##        if (anArea < std::numeric_limits<T>::epsilon())
##        {
##          return theSize.x() +
##                 theSize.y() +
##                 theSize.z();
##        }
##
##        return anArea;
##      }
##    };
##
##    template<class T>
##    struct SurfaceCalculator<T, 4>
##    {
##      static T Area (const typename BVH_Box<T, 4>::BVH_VecNt& theSize)
##      {
##        const T anArea = ( theSize.x() * theSize.y() +
##                           theSize.x() * theSize.z() +
##                           theSize.z() * theSize.y() ) * static_cast<T> (2.0);
##
##        if (anArea < std::numeric_limits<T>::epsilon())
##        {
##          return theSize.x() +
##                 theSize.y() +
##                 theSize.z();
##        }
##
##        return anArea;
##      }
##    };
## ! Tool class for calculate component-wise vector minimum
## ! and maximum (optimized version).
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension

type
  BoxMinMax*[T; N: static[cint]] {.importcpp: "BoxMinMax<\'0,\'1>",
                                header: "BVH_Box.hxx", bycopy.} = object

  BoxMinMaxBVH_VecNt*[T; N] = Type[T, N]

proc cwiseMin*[T; N: static[cint]](theVec1: var BoxMinMaxBVH_VecNt;
                                theVec2: BoxMinMaxBVH_VecNt) {.cdecl,
    importcpp: "BoxMinMax::CwiseMin(@)", dynlib: tkmath.}
proc cwiseMax*[T; N: static[cint]](theVec1: var BoxMinMaxBVH_VecNt;
                                theVec2: BoxMinMaxBVH_VecNt) {.cdecl,
    importcpp: "BoxMinMax::CwiseMax(@)", dynlib: tkmath.}
##    template<class T>
##    struct BoxMinMax<T, 2>
##    {
##      typedef typename BVH::VectorType<T, 2>::Type BVH_VecNt;
##
##      static void CwiseMin (BVH_VecNt& theVec1, const BVH_VecNt& theVec2)
##      {
##        theVec1.x() = Min (theVec1.x(), theVec2.x());
##        theVec1.y() = Min (theVec1.y(), theVec2.y());
##      }
##
##      static void CwiseMax (BVH_VecNt& theVec1, const BVH_VecNt& theVec2)
##      {
##        theVec1.x() = Max (theVec1.x(), theVec2.x());
##        theVec1.y() = Max (theVec1.y(), theVec2.y());
##      }
##    };
##  }
##  =======================================================================
##  function : Combine
##  purpose  :
##  =======================================================================
##  template<class T, int N>
##  void BVH_Box<T, N>::Combine (const BVH_Box& theBox)
##  {
##    if (theBox.myIsInited)
##    {
##      if (!myIsInited)
##      {
##        myMinPoint = theBox.myMinPoint;
##        myMaxPoint = theBox.myMaxPoint;
##        myIsInited = Standard_True;
##      }
##      else
##      {
##        BVH::BoxMinMax<T, N>::CwiseMin (myMinPoint, theBox.myMinPoint);
##        BVH::BoxMinMax<T, N>::CwiseMax (myMaxPoint, theBox.myMaxPoint);
##      }
##    }
##  }
##
##  // =======================================================================
##  // function : Area
##  // purpose  :
##  // =======================================================================
##  template<class T, int N>
##  T BVH_Box<T, N>::Area() const
##  {
##    return !myIsInited ? static_cast<T> (0.0) : BVH::SurfaceCalculator<T, N>::Area (myMaxPoint - myMinPoint);
##  }
##
##  // =======================================================================
##  // function : Center
##  // purpose  :
##  // =======================================================================
##  template<class T, int N>
##  T BVH_Box<T, N>::Center (const Standard_Integer theAxis) const
##  {
##    return BVH::CenterAxis<T, N>::Center (*this, theAxis);
##  }
