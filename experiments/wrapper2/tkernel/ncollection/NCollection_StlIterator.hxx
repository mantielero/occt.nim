// Created on: 2014-04-15
// Created by: Denis BOGOLEPOV
// Copyright (c) 2014 OPEN CASCADE SAS
//
// This file is part of Open CASCADE Technology software library.
//
// This library is free software; you can redistribute it and/or modify it under
// the terms of the GNU Lesser General Public License version 2.1 as published
// by the Free Software Foundation, with special exception defined in the file
// OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
// distribution for complete text of the license and disclaimer of any warranty.
//
// Alternatively, this file may be used under the terms of Open CASCADE
// commercial license or contractual agreement.

#ifndef NCollection_StlIterator_HeaderFile
#define NCollection_StlIterator_HeaderFile

#include <Standard_Assert.hxx>
#include <iterator>

//! Helper class that allows to use NCollection iterators as STL iterators.
//! NCollection iterator can be extended to STL iterator of any category by
//! adding necessary methods: STL forward iterator requires IsEqual method,
//! STL bidirectional iterator requires Previous method, and STL random access
//! iterator requires Offset and Differ methods. See NCollection_Vector as
//! example of declaring custom STL iterators.
template<class Category, class BaseIterator, class ItemType, bool IsConstant>
class NCollection_StlIterator
{
public:

  //! Default constructor
  NCollection_StlIterator () {}

  //! Constructor from NCollection iterator
  NCollection_StlIterator (const BaseIterator& theIterator)
    : myIterator (theIterator)
  { }

  //! Cast from non-const variant to const one
  NCollection_StlIterator (const NCollection_StlIterator<Category, BaseIterator, ItemType, false>& theIterator)
    : myIterator (theIterator.Iterator())
  { }

  //! Assignment of non-const iterator to const one
  NCollection_StlIterator& operator= (const NCollection_StlIterator<Category, BaseIterator, ItemType, false>& theIterator)
  {
    myIterator = theIterator.myIterator;
    return *this;
  }

  //! Access to NCollection iterator instance
  const BaseIterator& Iterator () const
  {
    return myIterator;
  }

  //! Access to NCollection iterator instance
  BaseIterator& ChangeIterator()
  {
    return myIterator;
  };
  // Note: Here we use SFINAE (Substitution failure is not an error) to choose
  //! Test for equality
  BaseIterator myIterator;
};

#endif // NCollection_StlIterator_HeaderFile
