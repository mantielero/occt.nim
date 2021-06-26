# /usr/include/opencascade/Standard_Type.hxx --> occt/standard/Standard_Type.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardtype = "/usr/include/opencascade/Standard_Type.hxx"
type
  DirectBaseClassAsTuple*[T] {.importcpp: "opencascade::direct_base_class_as_tuple<\'0>",
                              header: headerStandardtype, bycopy.} = object


## !!!Ignored construct:  template < typename ... Ts > [end of template] struct direct_base_class_as_tuple < std :: tr2 :: __reflection_typelist < Ts ... > > { typedef std :: tuple < Ts ... > type ; } ;
## Error: identifier expected, but got: ...!!!

discard "forward decl of has_type"
## !!!Ignored construct:  template < typename T > [end of template] struct has_type < T , std :: tuple < > > : std :: false_type { } ;
## Error: identifier expected, but got: <!!!

## !!!Ignored construct:  template < typename T , typename U , typename ... Ts > [end of template] struct has_type < T , std :: tuple < U , Ts ... > > : has_type < T , std :: tuple < Ts ... > > { } ;
## Error: identifier expected, but got: ...!!!

## !!!Ignored construct:  template < typename T , typename ... Ts > [end of template] struct has_type < T , std :: tuple < T , Ts ... > > : std :: true_type { } ;
## Error: identifier expected, but got: ...!!!

discard "forward decl of type_instance"
type
  HasTypeStandardType* {.importcpp: "has_type<\'0>::Standard_Type",
                        header: headerStandardtype, bycopy.} = object of StandardTransient


proc systemName*(this: HasTypeStandardType): StandardCString {.noSideEffect,
    importcpp: "SystemName", header: headerStandardtype.}
proc name*(this: HasTypeStandardType): StandardCString {.noSideEffect,
    importcpp: "Name", header: headerStandardtype.}
proc size*(this: HasTypeStandardType): StandardSize {.noSideEffect,
    importcpp: "Size", header: headerStandardtype.}
proc parent*(this: HasTypeStandardType): Handle[HasTypeStandardType] {.noSideEffect,
    importcpp: "Parent", header: headerStandardtype.}
proc subType*(this: HasTypeStandardType; theOther: Handle[HasTypeStandardType]): StandardBoolean {.
    noSideEffect, importcpp: "SubType", header: headerStandardtype.}
proc subType*(this: HasTypeStandardType; theOther: StandardCString): StandardBoolean {.
    noSideEffect, importcpp: "SubType", header: headerStandardtype.}
proc print*(this: HasTypeStandardType; theStream: var StandardOStream) {.noSideEffect,
    importcpp: "Print", header: headerStandardtype.}
proc instance*[T](): Handle[HasTypeStandardType] {.
    importcpp: "Standard_Type::Instance(@)", header: headerStandardtype.}
proc register*(theSystemName: cstring; theName: cstring; theSize: StandardSize;
              theParent: Handle[HasTypeStandardType]): ptr HasTypeStandardType {.
    importcpp: "Standard_Type::Register(@)", header: headerStandardtype.}
proc destroyHasTypeStandardType*(this: var HasTypeStandardType) {.
    importcpp: "#.~Standard_Type()", header: headerStandardtype.}
type
  HasTypeStandardTypebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Standard_Type::get_type_name(@)",
                            header: headerStandardtype.}
proc getTypeDescriptor*(): Handle[HasTypeStandardType] {.
    importcpp: "Standard_Type::get_type_descriptor(@)", header: headerStandardtype.}
proc dynamicType*(this: HasTypeStandardType): Handle[HasTypeStandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerStandardtype.}
type
  HasTypetypeInstance*[T] {.importcpp: "opencascade::has_type<\'0>::type_instance<\'1>",
                           header: headerStandardtype, bycopy.} = object


proc get*[T](): Handle[HasTypeStandardType] {.
    importcpp: "opencascade::type_instance::get(@)", header: headerStandardtype.}
## !!!Ignored construct:  template < > [end of template] class type_instance < void > { public : static opencascade :: handle < Standard_Type > get ( ) { return 0 ; } } ;
## Error: token expected: ; but got: <!!!

## !!!Ignored construct:  template < typename T > [end of template] const opencascade :: handle < Standard_Type > [end of template] & type_instance < T > :: get ( ) { static opencascade :: handle < Standard_Type > anInstance = Standard_Type :: Register ( typeid ( T ) . name ( ) , T :: get_type_name ( ) , sizeof ( T ) , type_instance < typename T :: base_type > :: get ( ) ) ; return anInstance ; } }
## Error: token expected: ; but got: <!!!

proc `<<`*(theStream: var StandardOStream; theType: Handle[HasTypeStandardType]): var StandardOStream {.
    importcpp: "(# << #)", header: headerStandardtype.}
discard "forward decl of Standard_Type"
type
  HasTypetypeInstanceHandleStandardType* = Handle[HasTypetypeInstanceStandardType]
