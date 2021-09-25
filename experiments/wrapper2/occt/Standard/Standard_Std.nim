##  Created on: 2019-03-27
##  Created by: Timur Izmaylov
##  Copyright (c) 2019 OPEN CASCADE SAS
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

## ! Namespace opencascade is intended for low-level template classes and functions

## ! Namespace opencascade::std includes templates from C++11 std namespace used by
## ! OCCT classes. These definitions are imported from std namespace, plus (on older
## ! compilers) from std::tr1, or implemented by custom code where neither std
## ! not std::tr1 provide necessary definitions.

##  import all available standard stuff from std namespace

## using statement

##  for old MSVC compiler, some standard templates are defined in std::tr1 namespace,
##  and some missing ones are implemented here

## !!!Ignored construct:  # ( defined ( _MSC_VER ) && ( _MSC_VER < 1600 ) ) [NewLine] using namespace :: std :: tr1 ;
## Error: token expected: > [end of template] but got: =!!!

##  C++11 template class enable_if

## !!!Ignored construct:  template < bool Test , class Type = void > [end of template] struct enable_if {  type is undefined for assumed !_Test } ;
## Error: token expected: > [end of template] but got: =!!!

## !!!Ignored construct:  template < class _Type > [end of template] struct enable_if < true , _Type > {  type is _Type for _Test typedef _Type type ; } ;
## Error: identifier expected, but got: <!!!

type
  EnableIfconditional*[Condition: static[bool]; TypeTrue; TypeFalse] {.
      importcpp: "opencascade::std::enable_if<\'0>::conditional<\'1,\'2,\'3>",
      header: "Standard_Std.hxx", bycopy.} = object

  EnableIfconditionaltype*[TypeTrue] = TypeTrue

## !!!Ignored construct:  template < typename TypeTrue , typename TypeFalse > [end of template] struct conditional < false , TypeTrue , TypeFalse > { typedef TypeFalse type ; } ;
## Error: identifier expected, but got: <!!!

##  namespace std
## ! Trait yielding true if class T1 is base of T2 but not the same

## !!!Ignored construct:  template < class T1 , class T2 , class Dummy = void > [end of template] struct is_base_but_not_same : opencascade :: std :: is_base_of < T1 , T2 > { } ;
## Error: token expected: > [end of template] but got: =!!!

## ! Explicit specialization of is_base_of trait to workaround the
## ! requirement of type to be complete when T1 and T2 are the same.

## !!!Ignored construct:  template < class T1 , class T2 > [end of template] struct is_base_but_not_same < T1 , T2 , typename opencascade :: std :: enable_if < opencascade :: std :: is_same < T1 , T2 > :: value > :: type > : opencascade :: std :: false_type { } ;
## Error: identifier expected, but got: <!!!

## ! The type trait that checks if the passed type is integer (it must be integral and not boolean)
## ! @tparam TheInteger the checked type

## !!!Ignored construct:  template < typename TheInteger > [end of template] struct is_integer : std :: integral_constant < bool , opencascade :: std :: is_integral < TheInteger > :: value && ! opencascade :: std :: is_same < TheInteger , bool > :: value > { } ;
## Error: token expected: { but got: <!!!

## ! The auxiliary template that is used for template argument deduction in function templates. A function argument
## ! which type is a template type parameter and it is not needed to be deducted must be declared using this class
## ! template based on the type of some other template type parameter of a function template
## ! @tparam TheType the type that is used as a function argument type to prevent its deduction

type
  EnableIfconditionalisBaseButNotSameisIntegerdisableDeduction*[TheType] {.importcpp: "opencascade::enable_if<\'0>::conditional<\'1,\'2>::is_base_but_not_same<\'3,\'4>::is_integer<\'5>::disable_deduction<\'6>",
      header: "Standard_Std.hxx", bycopy.} = object

  EnableIfconditionalisBaseButNotSameisIntegerdisableDeductiontype*[TheType] = TheType

##  namespace opencascade

