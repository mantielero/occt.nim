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
  StdObjMgtSharedObject* {.importcpp: "StdObjMgt_SharedObject",
                          header: "StdObjMgt_SharedObject.hxx", bycopy.} = object

  StdObjMgtSharedObjectAbstractPersistentBase*[Transient] {.
      importcpp: "StdObjMgt_SharedObject::AbstractPersistentBase<\'0>",
      header: "StdObjMgt_SharedObject.hxx", bycopy.} = object of StandardTransient


proc `import`*[Transient](this: StdObjMgtSharedObjectAbstractPersistentBase[
    Transient]): Handle[Transient] {.noSideEffect, importcpp: "Import",
                                   header: "StdObjMgt_SharedObject.hxx".}
## !!!Ignored construct:  template < class TransientT , class Base = StdObjMgt_Persistent > [end of template] class SharedBase : public Base { public : ! Changes transient object inline void Transient ( const opencascade :: handle < TransientT > [end of template] & theTransient ) { myTransient = theTransient ; } ! Import transient object from the persistent data. inline const opencascade :: handle < TransientT > [end of template] & Import ( ) { return myTransient ; } protected : opencascade :: handle < TransientT > [end of template] myTransient ; } ;
## Error: token expected: > [end of template] but got: =!!!

## !!!Ignored construct:  template < class Base , class Transient , class Persistent = AbstractPersistentBase < Transient > > [end of template] class DelayedBase : public Base { public : typedef Transient TransientBase ; typedef Persistent PersistentBase ; ! Import transient object from the persistent data. virtual opencascade :: handle < Transient > [end of template] Import ( ) { return myTransient ; } public : opencascade :: handle < Transient > [end of template] myTransient ; } ;
## Error: token expected: > [end of template] but got: =!!!

## !!!Ignored construct:  template < class Base , class PersistentData , class Transient = typename Base :: TransientBase > [end of template] class IgnoreData : public Base { public : ! Read persistent data from a file. virtual void Read ( StdObjMgt_ReadData & theReadData ) { PersistentData ( ) . Read ( theReadData ) ; } ! Write persistent data to a file. virtual void Write ( StdObjMgt_WriteData & theWriteData ) const { PersistentData ( ) . Write ( theWriteData ) ; } ! Gets persistent child objects virtual void PChildren ( StdObjMgt_Persistent :: SequenceOfPersistent & theChildren ) const { PersistentData ( ) . PChildren ( theChildren ) ; } ! Returns persistent type name virtual Standard_CString PName ( ) const { return PersistentData ( ) . PName ( ) ; } ! Import transient object from the persistent data. virtual opencascade :: handle < Transient > [end of template] Import ( ) { return NULL ; } } ;
## Error: token expected: > [end of template] but got: =!!!

## !!!Ignored construct:  public : template < class Base , class Persistent = typename Base :: PersistentBase > [end of template] class Delayed : public delayedSubBase < Base > { private : template < class T1 , class T2 > struct DownCast { static opencascade :: handle < T1 > [end of template] make ( const opencascade :: handle < T2 > [end of template] & theT2 ) { return opencascade :: handle < T1 > [end of template] :: DownCast ( theT2 ) ; } } ; template < class T > struct DownCast < T , T > { static opencascade :: handle < T > [end of template] make ( const opencascade :: handle < T > [end of template] & theT ) { return theT ; } } ; public : ! Read persistent data from a file. virtual void Read ( StdObjMgt_ReadData & theReadData ) { opencascade :: handle < Persistent > [end of template] aPersistent = new Persistent ; aPersistent -> Read ( theReadData ) ; this -> myPersistent = aPersistent ; } ! Write persistent data to a file. virtual void Write ( StdObjMgt_WriteData & theWriteData ) const { opencascade :: handle < Persistent > [end of template] aPersistent = DownCast < Persistent , typename Base :: PersistentBase > :: make ( this -> myPersistent ) ; Standard_NoSuchObject_Raise_if ( aPersistent . IsNull ( ) , StdObjMgt_SharedObject::Delayed::Write - persistent object wasn't set for writing! ) ; aPersistent -> Write ( theWriteData ) ; } ! Gets persistent child objects virtual void PChildren ( StdObjMgt_Persistent :: SequenceOfPersistent & theChildren ) const { opencascade :: handle < Persistent > [end of template] aPersistent = DownCast < Persistent , typename Base :: PersistentBase > :: make ( this -> myPersistent ) ; Standard_NoSuchObject_Raise_if ( aPersistent . IsNull ( ) , StdObjMgt_SharedObject::Delayed::PChildren - persistent object wasn't set for writing! ) ; aPersistent -> PChildren ( theChildren ) ; } ! Returns persistent type name virtual Standard_CString PName ( ) const { opencascade :: handle < Persistent > [end of template] aPersistent = DownCast < Persistent , typename Base :: PersistentBase > :: make ( this -> myPersistent ) ; Standard_NoSuchObject_Raise_if ( aPersistent . IsNull ( ) , StdObjMgt_SharedObject::Delayed::PName - persistent object wasn't set for writing! ) ; return aPersistent -> PName ( ) ; } } ;
## Error: token expected: > [end of template] but got: =!!!

