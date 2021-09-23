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

import
  ../StdObjMgt/StdObjMgt_Attribute, StdLPersistent_HArray1,
  ../TDataStd/TDataStd_IntegerArray, ../TDataStd/TDataStd_RealArray,
  ../TDataStd/TDataStd_ByteArray, ../TDataStd/TDataStd_ExtStringArray,
  ../TDataStd/TDataStd_BooleanArray, ../TDataStd/TDataStd_ReferenceArray,
  ../TDataStd/TDataStd_IntegerList, ../TDataStd/TDataStd_RealList,
  ../TDataStd/TDataStd_ExtStringList, ../TDataStd/TDataStd_BooleanList,
  ../TDataStd/TDataStd_ReferenceList, ../TDataStd/TDataStd_IntPackedMap

type
  StdLPersistent_Collection* {.importcpp: "StdLPersistent_Collection",
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
  StdLPersistent_CollectionBooleanArray* = booleanArrayT[
      StdLPersistent_Collectioninteger, TDataStd_BooleanArray,
      StdLPersistent_CollectionbyteConverter]
  StdLPersistent_CollectionIntegerArray* = directArrayT[
      StdLPersistent_Collectioninteger, TDataStd_IntegerArray]
  StdLPersistent_CollectionRealArray* = directArrayT[
      StdLPersistent_Collectionreal, TDataStd_RealArray]
  StdLPersistent_CollectionByteArray* = arrayT[StdLPersistent_Collectioninteger,
      TDataStd_ByteArray, StdLPersistent_CollectionbyteConverter]
  StdLPersistent_CollectionExtStringArray* = arrayT[
      StdLPersistent_Collectionpersistent, TDataStd_ExtStringArray,
      StdLPersistent_CollectionstringConverter]
  StdLPersistent_CollectionReferenceArray* = arrayT[
      StdLPersistent_Collectionpersistent, TDataStd_ReferenceArray,
      StdLPersistent_CollectionreferenceConverter]
  StdLPersistent_CollectionIntegerList* = listT[StdLPersistent_Collectioninteger,
      TDataStd_IntegerList]
  StdLPersistent_CollectionRealList* = listT[StdLPersistent_Collectionreal,
      TDataStd_RealList]
  StdLPersistent_CollectionBooleanList* = listT[StdLPersistent_Collectioninteger,
      TDataStd_BooleanList, StdLPersistent_CollectionboolConverter]
  StdLPersistent_CollectionExtStringList* = listT[
      StdLPersistent_Collectionpersistent, TDataStd_ExtStringList,
      StdLPersistent_CollectionstringConverter]
  StdLPersistent_CollectionReferenceList* = listT[
      StdLPersistent_Collectionpersistent, TDataStd_ReferenceList,
      StdLPersistent_CollectionreferenceConverter]
  StdLPersistent_CollectionIntPackedMap* = mapT[StdLPersistent_Collectioninteger,
      TDataStd_IntPackedMap]
  StdLPersistent_CollectionIntegerArray_1* = StdLPersistent_Collectioninstance_1[
      StdLPersistent_CollectionIntegerArray]
  StdLPersistent_CollectionRealArray_1* = StdLPersistent_Collectioninstance_1[
      StdLPersistent_CollectionRealArray]
  StdLPersistent_CollectionByteArray_1* = StdLPersistent_Collectioninstance_1[
      StdLPersistent_CollectionByteArray]
  StdLPersistent_CollectionExtStringArray_1* = StdLPersistent_Collectioninstance_1[
      StdLPersistent_CollectionExtStringArray]
  StdLPersistent_CollectionIntPackedMap_1* = StdLPersistent_Collectioninstance_1[
      StdLPersistent_CollectionIntPackedMap]
