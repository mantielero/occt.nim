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

## !!!Ignored construct:  # _StdLPersistent_Dependency_HeaderFile [NewLine] # _StdLPersistent_Dependency_HeaderFile [NewLine] # < StdObjMgt_Attribute . hxx > [NewLine] # < StdLPersistent_HString . hxx > [NewLine] # < StdLPersistent_HArray1 . hxx > [NewLine] # < TDataStd_Expression . hxx > [NewLine] # < TDataStd_Relation . hxx > [NewLine] class StdLPersistent_Dependency { template < class AttribClass > [end of template] class instance : public StdObjMgt_Attribute < AttribClass > [end of template] { public : ! Read persistent data from a file. inline void Read ( StdObjMgt_ReadData & theReadData ) { theReadData >> myName >> myVariables ; } ! Write persistent data to a file. inline void Write ( StdObjMgt_WriteData & theWriteData ) const { theWriteData << myName << myVariables ; } ! Gets persistent child objects inline void PChildren ( StdObjMgt_Persistent :: SequenceOfPersistent & theChildren ) const { theChildren . Append ( myName ) ; theChildren . Append ( myVariables ) ; } ! Returns persistent type name Standard_CString PName ( ) const ; ! Import transient attribuite from the persistent data. void Import ( const opencascade :: handle < AttribClass > [end of template] & theAttribute ) const ; private : opencascade :: handle < StdLPersistent_HString :: Extended > [end of template] myName ; opencascade :: handle < StdLPersistent_HArray1 :: Persistent > [end of template] myVariables ; } ; public : typedef instance < TDataStd_Expression > [end of template] Expression ; typedef instance < TDataStd_Relation > [end of template] Relation ; } ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] inline Standard_CString StdLPersistent_Dependency :: instance < TDataStd_Expression > :: PName ( ) const { return PDataStd_Expression ; } template < > inline Standard_CString StdLPersistent_Dependency :: instance < TDataStd_Relation > :: PName ( ) const { return PDataStd_Relation ; } # [NewLine]
## Error: token expected: ( but got: <!!!















































