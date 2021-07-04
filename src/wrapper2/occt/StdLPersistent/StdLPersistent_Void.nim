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

## !!!Ignored construct:  # _StdLPersistent_Void_HeaderFile [NewLine] # _StdLPersistent_Void_HeaderFile [NewLine] # ../StdObjMgt/StdObjMgt_Attribute.hxx [NewLine] # ../TDataStd/TDataStd_Directory.hxx [NewLine] # ../TDataStd/TDataStd_Tick.hxx [NewLine] # ../TDataStd/TDataStd_NoteBook.hxx [NewLine] class StdLPersistent_Void { protected : template < class AttribClass > [end of template] class instance : public StdObjMgt_Attribute < AttribClass > [end of template] :: Static { public : ! Read persistent data from a file. virtual void Read ( StdObjMgt_ReadData & ) { } ! Write persistent data to a file. virtual void Write ( StdObjMgt_WriteData & ) const { } ! Gets persistent child objects inline void PChildren ( StdObjMgt_Persistent :: SequenceOfPersistent & ) const { } ! Returns persistent type name Standard_CString PName ( ) const ; ! Import transient attribuite from the persistent data virtual void ImportAttribute ( ) { } } ; public : typedef instance < TDataStd_Directory > [end of template] Directory ; typedef instance < TDataStd_Tick > [end of template] Tick ; typedef instance < TDataStd_NoteBook > [end of template] NoteBook ; } ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] inline Standard_CString StdLPersistent_Void :: instance < TDataStd_Directory > :: PName ( ) const { return PDataStd_Directory ; } template < > inline Standard_CString StdLPersistent_Void :: instance < TDataStd_Tick > :: PName ( ) const { return PDataStd_Tick ; } template < > inline Standard_CString StdLPersistent_Void :: instance < TDataStd_NoteBook > :: PName ( ) const { return PDataStd_Notebook ; } # [NewLine]
## Error: token expected: ( but got: <!!!