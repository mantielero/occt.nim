##  Created on: 2014-04-15
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

## ! Helper class that allows to use NCollection iterators as STL iterators.
## ! NCollection iterator can be extended to STL iterator of any category by
## ! adding necessary methods: STL forward iterator requires IsEqual method,
## ! STL bidirectional iterator requires Previous method, and STL random access
## ! iterator requires Offset and Differ methods. See NCollection_Vector as
## ! example of declaring custom STL iterators.

type
  NCollection_StlIterator*[Category; BaseIterator; ItemType;
                           IsConstant: static[bool]] {.
      importcpp: "NCollection_StlIterator<\'0,\'1,\'2,\'3>",
      header: "NCollection_StlIterator.hxx", bycopy.} = object ## ! Default constructor
                                                          ## ! @name methods related to forward STL iterator
                                                          ##  Note: Here we use SFINAE (Substitution failure is not an error) to choose
                                                          ##  an appropriate method based on template arguments (at instantiation time).
                                                          ## template<bool Condition>
                                                          ## typename
                                                          ## opencascade::std::enable_if<!Condition, ItemType&>::type Reference() const;
                                                          ##    template<bool Condition>
                                                          ##   typename
                                                          ## opencascade::std::enable_if<Condition, const ItemType&>::type Reference() const
                                                          ##   {
                                                          ##     return myIterator.Value();
                                                          ##   }
                                                          ## ! @name methods related to forward STL iterator
                                                          ## ! Test for equality
                                                          ## ! @name methods related to bidirectional STL iterator
                                                          ## ! Prefix decrement
                                                          ## ! @name methods related to random access STL iterator
                                                          ## ! Move forward
                                                          ##
                                                          ## NCollection_StlIterator& operator+= (typename
                                                          ## NCollection_StlIterator::difference_type theOffset)
                                                          ##   {
                                                          ##
                                                          ## Standard_STATIC_ASSERT((opencascade::std::is_same<std::random_access_iterator_tag,Category>::value));
                                                          ##     myIterator.Offset (theOffset);
                                                          ##     return *this;
                                                          ##   }
                                                          ## ! Addition
                                                          ##
                                                          ## NCollection_StlIterator operator+ (typename
                                                          ## NCollection_StlIterator::difference_type theOffset) const;
                                                          ## ! Move backward
                                                          ##
                                                          ## NCollection_StlIterator& operator-= (typename
                                                          ## NCollection_StlIterator::difference_type theOffset)
                                                          ##   {
                                                          ##     return *this += -theOffset;
                                                          ##   }
                                                          ## ! Decrease
                                                          ##
                                                          ## NCollection_StlIterator operator- (typename
                                                          ## NCollection_StlIterator::difference_type theOffset) const
                                                          ##   {
                                                          ##
                                                          ## NCollection_StlIterator aTemp (*this);
                                                          ##     return aTemp += -theOffset;
                                                          ##   }
                                                          ## ! Difference
                                                          ##    typename
                                                          ## NCollection_StlIterator::difference_type operator- (const
                                                          ## NCollection_StlIterator& theOther) const
                                                          ##   {
                                                          ##
                                                          ## Standard_STATIC_ASSERT((opencascade::std::is_same<std::random_access_iterator_tag,Category>::value));
                                                          ##     return myIterator.Differ (theOther.myIterator);
                                                          ##   }
                                                          ## ! Get item at offset from current
                                                          ##    typename
                                                          ## NCollection_StlIterator::reference operator[] (typename
                                                          ## NCollection_StlIterator::difference_type theOffset) const
                                                          ##   {
                                                          ##     return *(*this + theOffset);
                                                          ##   }
                                                          ## ! Comparison
                                                          ## ! NCollection iterator


proc constructNCollection_StlIterator*[Category; BaseIterator; ItemType;
                                      IsConstant: static[bool]](): NCollection_StlIterator[
    Category, BaseIterator, ItemType, IsConstant] {.constructor,
    importcpp: "NCollection_StlIterator<\'*0,\'*1,\'*2,\'*3>(@)",
    header: "NCollection_StlIterator.hxx".}
proc constructNCollection_StlIterator*[Category; BaseIterator; ItemType;
                                      IsConstant: static[bool]](
    theIterator: BaseIterator): NCollection_StlIterator[Category, BaseIterator,
    ItemType, IsConstant] {.constructor, importcpp: "NCollection_StlIterator<\'*0,\'*1,\'*2,\'*3>(@)",
                          header: "NCollection_StlIterator.hxx".}
proc constructNCollection_StlIterator*[Category; BaseIterator; ItemType;
                                      IsConstant: static[bool]](theIterator: NCollection_StlIterator[
    Category, BaseIterator, ItemType, false]): NCollection_StlIterator[Category,
    BaseIterator, ItemType, IsConstant] {.constructor, importcpp: "NCollection_StlIterator<\'*0,\'*1,\'*2,\'*3>(@)",
                                       header: "NCollection_StlIterator.hxx".}
proc Iterator*[Category; BaseIterator; ItemType; IsConstant: static[bool]](
    this: NCollection_StlIterator[Category, BaseIterator, ItemType, IsConstant]): BaseIterator {.
    noSideEffect, importcpp: "Iterator", header: "NCollection_StlIterator.hxx".}
proc ChangeIterator*[Category; BaseIterator; ItemType; IsConstant: static[bool]](this: var NCollection_StlIterator[
    Category, BaseIterator, ItemType, IsConstant]): var BaseIterator {.
    importcpp: "ChangeIterator", header: "NCollection_StlIterator.hxx".}
proc `==`*[Category; BaseIterator; ItemType; IsConstant: static[bool]](this: NCollection_StlIterator[
    Category, BaseIterator, ItemType, IsConstant]; theOther: NCollection_StlIterator): bool {.
    noSideEffect, importcpp: "(# == #)", header: "NCollection_StlIterator.hxx".}
proc `++`*[Category; BaseIterator; ItemType; IsConstant: static[bool]](this: var NCollection_StlIterator[
    Category, BaseIterator, ItemType, IsConstant]): var NCollection_StlIterator {.
    importcpp: "(++ #)", header: "NCollection_StlIterator.hxx".}
proc `++`*[Category; BaseIterator; ItemType; IsConstant: static[bool]](this: var NCollection_StlIterator[
    Category, BaseIterator, ItemType, IsConstant]; a2: cint): NCollection_StlIterator {.
    importcpp: "(++ #)", header: "NCollection_StlIterator.hxx".}
proc `--`*[Category; BaseIterator; ItemType; IsConstant: static[bool]](this: var NCollection_StlIterator[
    Category, BaseIterator, ItemType, IsConstant]): var NCollection_StlIterator {.
    importcpp: "(-- #)", header: "NCollection_StlIterator.hxx".}
proc `--`*[Category; BaseIterator; ItemType; IsConstant: static[bool]](this: var NCollection_StlIterator[
    Category, BaseIterator, ItemType, IsConstant]; a2: cint): NCollection_StlIterator {.
    importcpp: "(-- #)", header: "NCollection_StlIterator.hxx".}
proc `<`*[Category; BaseIterator; ItemType; IsConstant: static[bool]](this: NCollection_StlIterator[
    Category, BaseIterator, ItemType, IsConstant]; theOther: NCollection_StlIterator): bool {.
    noSideEffect, importcpp: "(# < #)", header: "NCollection_StlIterator.hxx".}
proc `<=`*[Category; BaseIterator; ItemType; IsConstant: static[bool]](this: NCollection_StlIterator[
    Category, BaseIterator, ItemType, IsConstant]; theOther: NCollection_StlIterator): bool {.
    noSideEffect, importcpp: "(# <= #)", header: "NCollection_StlIterator.hxx".}