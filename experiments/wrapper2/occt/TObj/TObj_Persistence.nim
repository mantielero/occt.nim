##  Created on: 2004-11-23
##  Created by: Pavel TELKOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
##  The original implementation Copyright: (C) RINA S.p.A

## !!!Ignored construct:  # TObj_Persistence_HeaderFile [NewLine] # TObj_Persistence_HeaderFile [NewLine] # < TObj_Container . hxx > [NewLine] class TDF_Label ;
## Error: did not expect :!!!

## * This class is intended to be a root of tools (one per class)
##    to manage persistence of objects inherited from TObj_Object
##    It provides a mechanism to recover correctly typed
##    objects (subtypes of TObj_Object) out of their persistent names
##
##    This is a special kind of object, it automatically registers itself
##    in a global map when created, and the only thing it does is to
##    create a new object of the type that it manages, by request
##

type
  TObjPersistence* {.importcpp: "TObj_Persistence", header: "TObj_Persistence.hxx",
                    bycopy.} = object ## *
                                   ##  Public methods, to be called externally
                                   ##
                                   ## ! Creates and returns a new object of the registered type
                                   ## ! If the type is not registered, returns Null handle
                                   ## *
                                   ##  Protected methods, to be used or defined by descendants
                                   ##
                                   ## ! The constructor registers the object
    ## !< Name of managed type (recorded for unregistering)


proc createNewObject*(theType: StandardCString; theLabel: TDF_Label): Handle[
    TObjObject] {.importcpp: "TObj_Persistence::CreateNewObject(@)",
                 header: "TObj_Persistence.hxx".}
proc dumpTypes*(theOs: var StandardOStream) {.
    importcpp: "TObj_Persistence::DumpTypes(@)", header: "TObj_Persistence.hxx".}
## ! Declare subclass and methods of the class inherited from TObj_Object
## ! necessary for implementation of persistence
## ! This declaration should be put inside class declaration, under 'protected' modifier

## !!!Ignored construct:  # SOLARIS [NewLine] ! Workaround on SUN to avoid stupid warnings # _TOBJOCAF_PERSISTENCE_ACCESS_ public : [NewLine] # [NewLine] # _TOBJOCAF_PERSISTENCE_ACCESS_ [NewLine] # [NewLine] # DECLARE_TOBJOCAF_PERSISTENCE ( name , ancestor ) name ( const TObj_Persistence * p , const TDF_Label & aLabel ) : ancestor ( p , aLabel ) { initFields ( ) ; }  give the object a chance to initialize its fields  Creates an object of a proper type  First argument is used just to avoid possible conflict with other constructors _TOBJOCAF_PERSISTENCE_ACCESS_ class Persistence_ : public TObj_Persistence {  Friend private class of name, is a tool providing persistence public : Persistence_ ( ) : TObj_Persistence ( # ) { }  register the tool virtual opencascade :: handle < TObj_Object > [end of template] New ( const TDF_Label & aLabel ) const ;  Creates an object of a proper type } ;
## Error: did not expect :!!!

## !!!Ignored construct:  friend class Persistence_ ;
## Error: token expected: ; but got: [identifier]!!!

var myPersistence* {.importcpp: "myPersistence_", header: "TObj_Persistence.hxx".}: Persistence

##  Static field implementing persistsnce tool

## !!!Ignored construct:  [NewLine] ! Implement mechanism for registration the type for persistence
## ! This should not be used for abstract classes (while DECLARE should) # IMPLEMENT_TOBJOCAF_PERSISTENCE ( name ) name :: Persistence_ name :: myPersistence_ ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  opencascade :: handle < TObj_Object > [end of template] name :: Persistence_ :: New ( const TDF_Label & aLabel ) const { return new name ( ( const TObj_Persistence * ) 0 , aLabel ) ; } [NewLine] # [NewLine] # _MSC_VER [NewLine] # once [NewLine] # [NewLine]
## Error: token expected: ( but got: ::!!!















































