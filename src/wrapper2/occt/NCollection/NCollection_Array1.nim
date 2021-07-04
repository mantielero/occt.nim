##  Created on: 2002-04-15
##  Created by: Alexander Kartomin (akm)
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_DimensionMismatch, ../Standard/Standard_OutOfMemory,
  ../Standard/Standard_OutOfRange, NCollection_DefineAlloc,
  NCollection_StlIterator

##  *********************************************** Template for Array1 class
## *
##  Purpose:     The class Array1 represents unidimensional arrays
##               of fixed size known at run time.
##               The range of the index is user defined.
##               An array1 can be constructed with a "C array".
##               This functionality is useful to call methods expecting
##               an Array1. It allows to carry the bounds inside the arrays.
##
##  Examples:    Item tab[100]; //  An example with a C array
##               Array1OfItem ttab (tab[0],1,100);
##
##               Array1OfItem tttab (ttab(10),10,20); // a slice of ttab
##
##               If you want to reindex an array from 1 to Length do :
##
##               Array1 tab1(tab(tab.Lower()),1,tab.Length());
##
##  Warning:     Programs client of such a class must be independant
##               of the range of the first element. Then, a C++ for
##               loop must be written like this
##
##               for (i = A.Lower(); i <= A.Upper(); i++)
##
##  Changes:     In  comparison  to  TCollection  the  flag  isAllocated  was
##               renamed into myDeletable (alike in  the Array2).  For naming
##               compatibility the method IsAllocated remained in class along
##               with IsDeletable.
##

type
  NCollection_Array1*[TheItemType] {.importcpp: "NCollection_Array1<\'0>",
                                    header: "NCollection_Array1.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## STL-compliant
                                                                                   ## typedef
                                                                                   ## for
                                                                                   ## value
                                                                                   ## type
                                                                                   ##
                                                                                   ## !
                                                                                   ## Implementation
                                                                                   ## of
                                                                                   ## the
                                                                                   ## Iterator
                                                                                   ## interface.
                                                                                   ##
                                                                                   ## ----------
                                                                                   ## PUBLIC
                                                                                   ## METHODS
                                                                                   ## ------------
                                                                                   ##
                                                                                   ## !
                                                                                   ## Empty
                                                                                   ## constructor;
                                                                                   ## should
                                                                                   ## be
                                                                                   ## used
                                                                                   ## with
                                                                                   ## caution.
                                                                                   ##
                                                                                   ## !
                                                                                   ## @sa
                                                                                   ## methods
                                                                                   ## Resize()
                                                                                   ## and
                                                                                   ## Move().
    myUpperBound* {.importc: "myUpperBound".}: Standard_Integer
    myDeletable* {.importc: "myDeletable".}: Standard_Boolean ## !< Flag showing who allocated the array
    myData* {.importc: "myData".}: ptr TheItemType ## !< Pointer to '0'th array item

  NCollection_Array1value_type*[TheItemType] = TheItemType
  NCollection_Array1Iterator*[TheItemType] {.
      importcpp: "NCollection_Array1<\'0>::Iterator",
      header: "NCollection_Array1.hxx", bycopy.} = object ## ! Empty constructor - for later Init
    ## !< Pointer to the current element in the array
    ## !< Pointer to the past-the-end element in the array


proc constructNCollection_Array1Iterator*[TheItemType](): NCollection_Array1Iterator[
    TheItemType] {.constructor,
                  importcpp: "NCollection_Array1<\'*0>::Iterator(@)",
                  header: "NCollection_Array1.hxx".}
proc constructNCollection_Array1Iterator*[TheItemType](
    theArray: NCollection_Array1; theToEnd: Standard_Boolean = Standard_False): NCollection_Array1Iterator[
    TheItemType] {.constructor,
                  importcpp: "NCollection_Array1<\'*0>::Iterator(@)",
                  header: "NCollection_Array1.hxx".}
proc Init*[TheItemType](this: var NCollection_Array1Iterator[TheItemType];
                       theArray: NCollection_Array1) {.importcpp: "Init",
    header: "NCollection_Array1.hxx".}
proc More*[TheItemType](this: NCollection_Array1Iterator[TheItemType]): Standard_Boolean {.
    noSideEffect, importcpp: "More", header: "NCollection_Array1.hxx".}
proc Next*[TheItemType](this: var NCollection_Array1Iterator[TheItemType]) {.
    importcpp: "Next", header: "NCollection_Array1.hxx".}
proc Previous*[TheItemType](this: var NCollection_Array1Iterator[TheItemType]) {.
    importcpp: "Previous", header: "NCollection_Array1.hxx".}
proc Offset*[TheItemType](this: var NCollection_Array1Iterator[TheItemType];
                         theOffset: ptrdiff_t) {.importcpp: "Offset",
    header: "NCollection_Array1.hxx".}
proc Differ*[TheItemType](this: NCollection_Array1Iterator[TheItemType];
                         theOther: NCollection_Array1Iterator): ptrdiff_t {.
    noSideEffect, importcpp: "Differ", header: "NCollection_Array1.hxx".}
proc Value*[TheItemType](this: NCollection_Array1Iterator[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Value", header: "NCollection_Array1.hxx".}
proc ChangeValue*[TheItemType](this: NCollection_Array1Iterator[TheItemType]): var TheItemType {.
    noSideEffect, importcpp: "ChangeValue", header: "NCollection_Array1.hxx".}
proc IsEqual*[TheItemType](this: NCollection_Array1Iterator[TheItemType];
                          theOther: NCollection_Array1Iterator): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "NCollection_Array1.hxx".}
type
  NCollection_Array1iterator* = NCollection_StlIterator[
      random_access_iterator_tag, NCollection_Array1Iterator, TheItemType, false]
  NCollection_Array1const_iterator* = NCollection_StlIterator[
      random_access_iterator_tag, NCollection_Array1Iterator, TheItemType, true]

proc begin*[TheItemType](this: NCollection_Array1[TheItemType]): NCollection_Array1iterator {.
    noSideEffect, importcpp: "begin", header: "NCollection_Array1.hxx".}
proc `end`*[TheItemType](this: NCollection_Array1[TheItemType]): NCollection_Array1iterator {.
    noSideEffect, importcpp: "end", header: "NCollection_Array1.hxx".}
proc cbegin*[TheItemType](this: NCollection_Array1[TheItemType]): NCollection_Array1const_iterator {.
    noSideEffect, importcpp: "cbegin", header: "NCollection_Array1.hxx".}
proc cend*[TheItemType](this: NCollection_Array1[TheItemType]): NCollection_Array1const_iterator {.
    noSideEffect, importcpp: "cend", header: "NCollection_Array1.hxx".}
proc constructNCollection_Array1*[TheItemType](): NCollection_Array1[TheItemType] {.
    constructor, importcpp: "NCollection_Array1<\'*0>(@)",
    header: "NCollection_Array1.hxx".}
proc constructNCollection_Array1*[TheItemType](theLower: Standard_Integer;
    theUpper: Standard_Integer): NCollection_Array1[TheItemType] {.constructor,
    importcpp: "NCollection_Array1<\'*0>(@)", header: "NCollection_Array1.hxx".}
proc constructNCollection_Array1*[TheItemType](theOther: NCollection_Array1): NCollection_Array1[
    TheItemType] {.constructor, importcpp: "NCollection_Array1<\'*0>(@)",
                  header: "NCollection_Array1.hxx".}
## !!!Ignored construct:  # OCCT_NO_RVALUE_REFERENCE [NewLine] ! Move constructor NCollection_Array1 ( NCollection_Array1 && theOther ) : myLowerBound ( theOther . myLowerBound ) , myUpperBound ( theOther . myUpperBound ) , myDeletable ( theOther . myDeletable ) , myData ( theOther . myData ) { theOther . myDeletable = false ; } # [NewLine] ! C array-based constructor.
## !
## ! Makes this array to use the buffer pointed by theBegin
## ! instead of allocating it dynamically.
## ! Argument theBegin should be a reference to the first element
## ! of the pre-allocated buffer (usually local C array buffer),
## ! with size at least theUpper - theLower + 1 items.
## !
## ! Warning: returning array object created using this constructor
## ! from function by value will result in undefined behavior
## ! if compiler performs return value optimization (this is likely
## ! to be true for all modern compilers in release mode).
## ! The same happens if array is copied using Move() function
## ! or move constructor and target object's lifespan is longer
## ! than that of the buffer. NCollection_Array1 ( const TheItemType & theBegin , const Standard_Integer theLower , const Standard_Integer theUpper ) : myLowerBound ( theLower ) , myUpperBound ( theUpper ) , myDeletable ( Standard_False ) { Standard_RangeError_Raise_if ( theUpper < theLower , NCollection_Array1::Create ) ; # ( defined ( __GNUC__ ) && __GNUC__ > 4 || ( __GNUC__ == 4 && __GNUC_MINOR__ >= 6 ) ) [NewLine]  gcc emits -Warray-bounds warning when NCollection_Array1 is initialized
##  from local array with lower index 1 (so that (&theBegin - 1) points out of array bounds).
##  NCollection_Array1 initializes myData with a shift to avoid this shift within per-element access.
##  It is undesired changing this logic, and -Warray-bounds is not useful here. # GCC diagnostic push [NewLine] # GCC diagnostic ignored -Warray-bounds [NewLine] # [NewLine] myData = ( TheItemType * ) & theBegin - theLower ; # ( defined ( __GNUC__ ) && __GNUC__ > 4 || ( __GNUC__ == 4 && __GNUC_MINOR__ >= 6 ) ) [NewLine] # GCC diagnostic pop [NewLine] # [NewLine] } ! Initialise the items with theValue void Init ( const TheItemType & theValue ) { TheItemType * pCur = & myData [ myLowerBound ] , * pEnd = & myData [ myUpperBound ] ; for ( ; pCur <= pEnd ; pCur ++ ) * pCur = ( TheItemType & ) theValue ; } ! Size query Standard_Integer Size ( void ) const { return Length ( ) ; } ! Length query (the same) Standard_Integer Length ( void ) const { return ( myUpperBound - myLowerBound + 1 ) ; } ! Return TRUE if array has zero length. Standard_Boolean IsEmpty ( ) const { return myUpperBound < myLowerBound ; } ! Lower bound Standard_Integer Lower ( void ) const { return myLowerBound ; } ! Upper bound Standard_Integer Upper ( void ) const { return myUpperBound ; } ! myDeletable flag Standard_Boolean IsDeletable ( void ) const { return myDeletable ; } ! IsAllocated flag - for naming compatibility Standard_Boolean IsAllocated ( void ) const { return myDeletable ; } ! Copies data of theOther array to this.
## ! This array should be pre-allocated and have the same length as theOther;
## ! otherwise exception Standard_DimensionMismatch is thrown. NCollection_Array1 & Assign ( const NCollection_Array1 & theOther ) { if ( & theOther == this ) return * this ; Standard_DimensionMismatch_Raise_if ( Length ( ) != theOther . Length ( ) , NCollection_Array1::operator= ) ; if ( myData == NULL ) { return * this ; } TheItemType * pMyItem = & myData [ myLowerBound ] ; TheItemType * const pEndItem = & ( theOther . myData ) [ theOther . myUpperBound ] ; TheItemType * pItem = & ( theOther . myData ) [ theOther . myLowerBound ] ; while ( pItem <= pEndItem ) * pMyItem ++ = * pItem ++ ; return * this ; } ! Move assignment.
## ! This array will borrow all the data from theOther.
## ! The moved object will keep pointer to the memory buffer and
## ! range, but it will not free the buffer on destruction. NCollection_Array1 & Move ( NCollection_Array1 & theOther ) { if ( & theOther == this ) { return * this ; } if ( myDeletable ) { delete [ ] & myData [ myLowerBound ] ; } myLowerBound = theOther . myLowerBound ; myUpperBound = theOther . myUpperBound ; myDeletable = theOther . myDeletable ; myData = theOther . myData ; theOther . myDeletable = Standard_False ; return * this ; } ! Assignment operator; @sa Assign() NCollection_Array1 & operator = ( const NCollection_Array1 & theOther ) { return Assign ( theOther ) ; } # OCCT_NO_RVALUE_REFERENCE [NewLine] ! Move assignment operator; @sa Move() NCollection_Array1 & operator = ( NCollection_Array1 && theOther ) { return Move ( theOther ) ; } # [NewLine] ! @return first element const TheItemType & First ( ) const { return myData [ myLowerBound ] ; } ! @return first element TheItemType & ChangeFirst ( ) { return myData [ myLowerBound ] ; } ! @return last element const TheItemType & Last ( ) const { return myData [ myUpperBound ] ; } ! @return last element TheItemType & ChangeLast ( ) { return myData [ myUpperBound ] ; } ! Constant value access const TheItemType & Value ( const Standard_Integer theIndex ) const { Standard_OutOfRange_Raise_if ( theIndex < myLowerBound || theIndex > myUpperBound , NCollection_Array1::Value ) ; return myData [ theIndex ] ; } ! operator() - alias to Value const TheItemType & operator ( ) ( const Standard_Integer theIndex ) const { return Value ( theIndex ) ; } ! operator[] - alias to Value const TheItemType & operator [ ] ( Standard_Integer theIndex ) const { return Value ( theIndex ) ; } ! Variable value access TheItemType & ChangeValue ( const Standard_Integer theIndex ) { Standard_OutOfRange_Raise_if ( theIndex < myLowerBound || theIndex > myUpperBound , NCollection_Array1::ChangeValue ) ; return myData [ theIndex ] ; } ! operator() - alias to ChangeValue TheItemType & operator ( ) ( const Standard_Integer theIndex ) { return ChangeValue ( theIndex ) ; } ! operator[] - alias to ChangeValue TheItemType & operator [ ] ( Standard_Integer theIndex ) { return ChangeValue ( theIndex ) ; } ! Set value void SetValue ( const Standard_Integer theIndex , const TheItemType & theItem ) { Standard_OutOfRange_Raise_if ( theIndex < myLowerBound || theIndex > myUpperBound , NCollection_Array1::SetValue ) ; myData [ theIndex ] = theItem ; } ! Resizes the array to specified bounds.
## ! No re-allocation will be done if length of array does not change,
## ! but existing values will not be discarded if theToCopyData set to FALSE.
## ! @param theLower new lower bound of array
## ! @param theUpper new upper bound of array
## ! @param theToCopyData flag to copy existing data into new array void Resize ( const Standard_Integer theLower , const Standard_Integer theUpper , const Standard_Boolean theToCopyData ) { Standard_RangeError_Raise_if ( theUpper < theLower , NCollection_Array1::Resize ) ; const Standard_Integer anOldLen = Length ( ) ; const Standard_Integer aNewLen = theUpper - theLower + 1 ; const Standard_Integer aLowerOld = myLowerBound ; TheItemType * aBeginOld = & myData [ aLowerOld ] ; myLowerBound = theLower ; myUpperBound = theUpper ; if ( aNewLen == anOldLen ) { myData = aBeginOld - theLower ; return ; } if ( ! theToCopyData && myDeletable ) { delete [ ] aBeginOld ; } TheItemType * aBeginNew = new TheItemType [ aNewLen ] ; Standard_OutOfMemory_Raise_if ( aBeginNew == NULL , NCollection_Array1 : Allocation failed ) ; myData = aBeginNew - theLower ; if ( ! theToCopyData ) { myDeletable = Standard_True ; return ; } const Standard_Integer aLenCopy = Min ( anOldLen , aNewLen ) ; for ( Standard_Integer anIter = 0 ; anIter < aLenCopy ; ++ anIter ) { aBeginNew [ anIter ] = aBeginOld [ anIter ] ; } if ( myDeletable ) { delete [ ] aBeginOld ; } myDeletable = Standard_True ; } ! Destructor - releases the memory ~ NCollection_Array1 ( void ) { if ( myDeletable ) delete [ ] & ( myData [ myLowerBound ] ) ; } protected :  ---------- PROTECTED FIELDS ----------- Standard_Integer myLowerBound ;
## Error: identifier expected, but got: ! Move constructor!!!
