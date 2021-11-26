##  Copyright (c) 2015 OPEN CASCADE SAS
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

type
  StdLPersistentCollection* {.importcpp: "StdLPersistent_Collection",
                             header: "StdLPersistent_Collection.hxx", bycopy.} = object ##  Converters
                                                                                   ##  Final specialization


## !!!Ignored construct:   Instance templates template < template < class > class BaseT , class HArrayClass , class AttribClass , class Converter > [end of template] class instance : public BaseT < typename StdObjMgt_Attribute < AttribClass > :: SingleRef > { public : ! Import transient attribuite from the persistent data. virtual void ImportAttribute ( ) ; } ;
## Error: token expected: > [end of template] but got: [identifier]!!!

## !!!Ignored construct:   Collection type specialization template < class HArrayClass , class AttribClass , class Converter = noConversion > [end of template] struct booleanArrayT : instance < booleanArrayBase , HArrayClass , AttribClass , Converter > { } ;
## Error: token expected: > [end of template] but got: =!!!

## !!!Ignored construct:  template < class HArrayClass , class AttribClass , class Converter = noConversion > [end of template] struct directArrayT : instance < directArrayBase , HArrayClass , AttribClass , Converter > { } ;
## Error: token expected: > [end of template] but got: =!!!

## !!!Ignored construct:  template < class HArrayClass , class AttribClass , class Converter = noConversion > [end of template] struct arrayT : instance < arrayBase , HArrayClass , AttribClass , Converter > { } ;
## Error: token expected: > [end of template] but got: =!!!

## !!!Ignored construct:  template < class HArrayClass , class AttribClass , class Converter = noConversion > [end of template] struct listT : instance < listBase , HArrayClass , AttribClass , Converter > { } ;
## Error: token expected: > [end of template] but got: =!!!

## !!!Ignored construct:  template < class HArrayClass , class AttribClass , class Converter = noConversion > [end of template] struct mapT : instance < mapBase , HArrayClass , AttribClass , Converter > { } ;
## Error: token expected: > [end of template] but got: =!!!

type
  StdLPersistentCollectionBooleanArray* = booleanArrayT[
      StdLPersistentCollectioninteger, TDataStdBooleanArray,
      StdLPersistentCollectionbyteConverter]
  StdLPersistentCollectionIntegerArray* = DirectArrayT[
      StdLPersistentCollectioninteger, TDataStdIntegerArray]
  StdLPersistentCollectionRealArray* = DirectArrayT[StdLPersistentCollectionreal,
      TDataStdRealArray]
  StdLPersistentCollectionByteArray* = arrayT[StdLPersistentCollectioninteger,
      TDataStdByteArray, StdLPersistentCollectionbyteConverter]
  StdLPersistentCollectionExtStringArray* = arrayT[
      StdLPersistentCollectionpersistent, TDataStdExtStringArray,
      StdLPersistentCollectionstringConverter]
  StdLPersistentCollectionReferenceArray* = arrayT[
      StdLPersistentCollectionpersistent, TDataStdReferenceArray,
      StdLPersistentCollectionreferenceConverter]
  StdLPersistentCollectionIntegerList* = ListT[StdLPersistentCollectioninteger,
      TDataStdIntegerList]
  StdLPersistentCollectionRealList* = ListT[StdLPersistentCollectionreal,
      TDataStdRealList]
  StdLPersistentCollectionBooleanList* = ListT[StdLPersistentCollectioninteger,
      TDataStdBooleanList, StdLPersistentCollectionboolConverter]
  StdLPersistentCollectionExtStringList* = ListT[
      StdLPersistentCollectionpersistent, TDataStdExtStringList,
      StdLPersistentCollectionstringConverter]
  StdLPersistentCollectionReferenceList* = ListT[
      StdLPersistentCollectionpersistent, TDataStdReferenceList,
      StdLPersistentCollectionreferenceConverter]
  StdLPersistentCollectionIntPackedMap* = MapT[StdLPersistentCollectioninteger,
      TDataStdIntPackedMap]
  StdLPersistentCollectionIntegerArray1* = StdLPersistentCollectioninstance1[
      StdLPersistentCollectionIntegerArray]
  StdLPersistentCollectionRealArray1* = StdLPersistentCollectioninstance1[
      StdLPersistentCollectionRealArray]
  StdLPersistentCollectionByteArray1* = StdLPersistentCollectioninstance1[
      StdLPersistentCollectionByteArray]
  StdLPersistentCollectionExtStringArray1* = StdLPersistentCollectioninstance1[
      StdLPersistentCollectionExtStringArray]
  StdLPersistentCollectionIntPackedMap1* = StdLPersistentCollectioninstance1[
      StdLPersistentCollectionIntPackedMap]















































