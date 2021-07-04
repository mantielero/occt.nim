##  Copyright (c) 2020 OPEN CASCADE SAS
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

## !!!Ignored construct:  # _TDF_DerivedAttribute_HeaderFile [NewLine] # _TDF_DerivedAttribute_HeaderFile [NewLine] # ../NCollection/NCollection_List.hxx [NewLine] # TDF_Attribute.hxx [NewLine] class TCollection_AsciiString ;
## Error: did not expect :!!!

## ! @def DEFINE_DERIVED_ATTRIBUTE
## ! Defines declaration of Handle method and declares methods for serialization
## ! of derived attribute

template DEFINE_DERIVED_ATTRIBUTE*(Class, Base: untyped): untyped =
  public

## !!!Ignored construct:  : typedef Base base_type ;
## Error: did not expect :!!!

proc get_type_name*(): cstring =
  discard

proc get_type_descriptor*(): var handle[Standard_Type] {.
    importcpp: "get_type_descriptor(@)", header: "TDF_DerivedAttribute.hxx".}
## !!!Ignored construct:  virtual const opencascade :: handle < Standard_Type > [end of template] & DynamicType ( ) const ;
## Error: token expected: ( but got: <!!!

## ignored statement

proc NewEmpty*(): handle[TDF_Attribute] {.noSideEffect, importcpp: "NewEmpty(@)",
                                       header: "TDF_DerivedAttribute.hxx".}
## !!!Ignored construct:  [NewLine] ! @def IMPLEMENT_DERIVED_ATTRIBUTE
## ! Defines implementation of Handle method, serialization methods and registers the derived attribute # IMPLEMENT_DERIVED_ATTRIBUTE ( Class , Base ) IMPLEMENT_STANDARD_RTTIEXT ( Class , Base ) static opencascade :: handle < TDF_Attribute > [end of template] TDF_DERIVED_New ## Class ( ) { return new Class ( ) ; } static TDF_DerivedAttribute :: NewDerived TDF_DERIVED_ ## Class ( TDF_DerivedAttribute :: Register ( TDF_DERIVED_New ## Class ) ) ;
## Error: did not expect [NewLine]!!!

proc NewEmpty*(): handle[TDF_Attribute] {.noSideEffect, importcpp: "::NewEmpty(@)",
                                       header: "TDF_DerivedAttribute.hxx".}
## !!!Ignored construct:  [NewLine] ! @def IMPLEMENT_DERIVED_ATTRIBUTE_WITH_TYPE
## ! Defines implementation of Handle method and registers the derived attribute # IMPLEMENT_DERIVED_ATTRIBUTE_WITH_TYPE ( Class , Base , NameSpace , TypeName ) IMPLEMENT_STANDARD_RTTIEXT ( Class , Base ) static opencascade :: handle < TDF_Attribute > [end of template] TDF_DERIVED_New ## Class ( ) { return new Class ( ) ; } static TDF_DerivedAttribute :: NewDerived TDF_DERIVED_ ## Class ( TDF_DerivedAttribute :: Register ( TDF_DERIVED_New ## Class , NameSpace , TypeName ) ) ;
## Error: did not expect [NewLine]!!!

proc NewEmpty*(): handle[TDF_Attribute] {.noSideEffect, importcpp: "::NewEmpty(@)",
                                       header: "TDF_DerivedAttribute.hxx".}
## !!!Ignored construct:  [NewLine] ! Class provides global access (through static methods) to all derived attributres information.
## ! It is used internally by macros for registration of derived attributes and driver-tables
## ! for getting this data. class TDF_DerivedAttribute { public : / A function of derived attribute that returns a new attribute instance typedef opencascade :: handle < TDF_Attribute > [end of template] ( * NewDerived ) ( ) ; ! Registers a derived by the pointer to a method that creates a new derived attribute instance static NewDerived Register ( NewDerived theNewAttributeFunction , Standard_CString theNameSpace = NULL , Standard_CString theTypeName = NULL ) ; ! Returns the derived registered attribute by its type. static opencascade :: handle < TDF_Attribute > [end of template] Attribute ( Standard_CString theType ) ; ! Returns the type name of the registered attribute by its type. static const TCollection_AsciiString & TypeName ( Standard_CString theType ) ; ! Returns all the derived registered attributes list. static void Attributes ( NCollection_List < opencascade :: handle < TDF_Attribute > [end of template] > & theList ) ; } ;
## Error: did not expect [NewLine]!!!
