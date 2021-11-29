##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

##  Auxiliary tools to check at compile time that class declared as base in
##  DEFINE_STANDARD_RTTI* macro is actually a base class.
## ! Helper macro to get instance of a type descriptor for a class in a legacy way.

template standard_Type*(theType: untyped): untyped =
  getTypeDescriptor()

## ! Helper macro to be included in definition of the classes inheriting
## ! Standard_Transient to enable use of OCCT RTTI.
## !
## ! Inline version, does not require IMPLEMENT_STANDARD_RTTIEXT, but when used
### ! for big hierarchies of classes may cause considerable increase of size of binaries.
### ! This class provides legacy interface (type descriptor) to run-time type
## ! information (RTTI) for OCCT classes inheriting from Standard_Transient.
## !
## ! In addition to features provided by standard C++ RTTI (type_info),
## ! Standard_Type allows passing descriptor as an object and using it for
## ! analysis of the type:
## ! - get descriptor of a parent class
## ! - get user-defined name of the class
## ! - get size of the object
## !
## ! Use static template method Instance() to get descriptor for a given type.
## ! Objects supporting OCCT RTTI return their type descriptor by method DynamicType().
## !
## ! To be usable with OCCT type system, the class should provide:
## ! - typedef base_type to its base class in the hierarchy
## ! - method get_type_name() returning programmer-defined name of the class
## !   (as a statically allocated constant C string or string literal)
## !
## ! Note that user-defined name is used since typeid.name() is usually mangled in
## ! compiler-dependent way.
## !
## ! Only single chain of inheritance is supported, with a root base class Standard_Transient.

type
  StandardType* {.importcpp: "Standard_Type", header: "Standard_Type.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## the
                                                                                                        ## system
                                                                                                        ## type
                                                                                                        ## name
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## class
                                                                                                        ## (typeinfo.name)
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Constructor
                                                                                                        ## is
                                                                                                        ## private
    ## !< System name of the class (typeinfo.name)
    ## !< Given name of the class
    ## !< Size of the class instance, in bytes
    ## !< Type descriptor of parent class


proc systemName*(this: StandardType): cstring {.noSideEffect, cdecl,
    importcpp: "SystemName", header: "Standard_Type.hxx".}
proc name*(this: StandardType): cstring {.noSideEffect, cdecl, importcpp: "Name",
                                      header: "Standard_Type.hxx".}
proc size*(this: StandardType): csize_t {.noSideEffect, cdecl, importcpp: "Size",
                                      header: "Standard_Type.hxx".}
proc parent*(this: StandardType): Handle[StandardType] {.noSideEffect, cdecl,
    importcpp: "Parent", header: "Standard_Type.hxx".}
proc subType*(this: StandardType; theOther: Handle[StandardType]): bool {.
    noSideEffect, cdecl, importcpp: "SubType", header: "Standard_Type.hxx".}
proc subType*(this: StandardType; theOther: cstring): bool {.noSideEffect, cdecl,
    importcpp: "SubType", header: "Standard_Type.hxx".}
proc print*(this: StandardType; theStream: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Print", header: "Standard_Type.hxx".}
proc instance*[T](): Handle[StandardType] {.cdecl,
    importcpp: "Standard_Type::Instance(@)", header: "Standard_Type.hxx".}
proc register*(theSystemName: cstring; theName: cstring; theSize: csize_t;
              theParent: Handle[StandardType]): ptr StandardType {.cdecl,
    importcpp: "Standard_Type::Register(@)", header: "Standard_Type.hxx".}
proc destroyStandardType*(this: var StandardType) {.cdecl,
    importcpp: "#.~Standard_Type()", header: "Standard_Type.hxx".}
## ! Template class providing instantiation of type descriptors as singletons.
## ! The descriptors are defined as static variables in function get(), which
## ! is essential to ensure that they are initialized in correct sequence.
## !
## ! For compilers that do not provide thread-safe initialization of static
## ! variables (C++11 feature, N2660), additional global variable is
## ! defined for each type to hold its type descriptor. These globals ensure
## ! that all types get initialized during the library loading and thus no
## ! concurrency occurs when type system is accessed from multiple threads.

type
  TypeInstance*[T] {.importcpp: "opencascade::type_instance<\'0>",
                    header: "Standard_Type.hxx", bycopy.} = object


proc get*[T](): Handle[StandardType] {.cdecl, importcpp: "opencascade::type_instance::get(@)",
                                    header: "Standard_Type.hxx".}
## ! Specialization of type descriptor instance for void; returns null handle
##  Implementation of static function returning instance of the
##  type descriptor
##  Static class field is defined to ensure initialization of all type
##  descriptors at load time of the library on compilers not supporting N2660:
##  - VC++ below 14 (VS 2015)
##  - GCC below 4.3
##  Intel compiler reports itself as GCC on Linux and VC++ on Windows,
##  and is claimed to support N2660 on Linux and on Windows "in VS2015 mode".
##  CLang should support N2660 since version 2.9, but it is not clear how to
##  check its version reliably (on Linux it says it is GCC 4.2).

## ! Operator printing type descriptor to stream

proc `<<`*(theStream: var StandardOStream; theType: Handle[StandardType]): var StandardOStream {.
    cdecl, importcpp: "(# << #)", header: "Standard_Type.hxx".}
## ! Definition of Handle_Standard_Type as typedef for compatibility

type
  HandleStandardType* = Handle[StandardType]
