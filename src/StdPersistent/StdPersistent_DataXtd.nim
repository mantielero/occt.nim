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

## !!!Ignored construct:  # _StdPersistent_DataXtd_HeaderFile [NewLine] # _StdPersistent_DataXtd_HeaderFile [NewLine] # < StdObjMgt_Attribute . hxx > [NewLine] # < StdLPersistent_Void . hxx > [NewLine] # < StdObject_gp_Vectors . hxx > [NewLine] # < TDataXtd_Shape . hxx > [NewLine] # < TDataXtd_Point . hxx > [NewLine] # < TDataXtd_Axis . hxx > [NewLine] # < TDataXtd_Plane . hxx > [NewLine] # < TDataXtd_Placement . hxx > [NewLine] # < TDataXtd_Geometry . hxx > [NewLine] # < TDataXtd_Position . hxx > [NewLine] class StdPersistent_DataXtd { class _void : private StdLPersistent_Void { public : template < class AttribClass > [end of template] struct Instance : instance < AttribClass > [end of template] { } ; } ; public : typedef _void :: Instance < TDataXtd_Shape > [end of template] Shape ; typedef _void :: Instance < TDataXtd_Point > [end of template] Point ; typedef _void :: Instance < TDataXtd_Axis > [end of template] Axis ; typedef _void :: Instance < TDataXtd_Plane > [end of template] Plane ; typedef _void :: Instance < TDataXtd_Placement > [end of template] Placement ; class Geometry : public StdObjMgt_Attribute < TDataXtd_Geometry > [end of template] :: SingleInt { public : ! Import transient attribuite from the persistent data. virtual void ImportAttribute ( ) ; } ; class Position : public StdObjMgt_Attribute < TDataXtd_Position > [end of template] :: Simple < gp_Pnt > { public : ! Import transient attribuite from the persistent data. virtual void ImportAttribute ( ) ; } ; } ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] inline Standard_CString StdLPersistent_Void :: instance < TDataXtd_Shape > :: PName ( ) const { return PDataXtd_Shape ; } template < > inline Standard_CString StdLPersistent_Void :: instance < TDataXtd_Point > :: PName ( ) const { return PDataXtd_Point ; } template < > inline Standard_CString StdLPersistent_Void :: instance < TDataXtd_Axis > :: PName ( ) const { return PDataXtd_Axis ; } template < > inline Standard_CString StdLPersistent_Void :: instance < TDataXtd_Plane > :: PName ( ) const { return PDataXtd_Plane ; } template < > inline Standard_CString StdLPersistent_Void :: instance < TDataXtd_Placement > :: PName ( ) const { return PDataXtd_Placement ; } template < > template < > inline Standard_CString StdObjMgt_Attribute < TDataXtd_Geometry > :: Simple < Standard_Integer > :: PName ( ) const { return PDataXtd_Geometry ; } template < > template < > inline Standard_CString StdObjMgt_Attribute < TDataXtd_Position > :: Simple < gp_Pnt > :: PName ( ) const { return PDataXtd_Position ; } # [NewLine]
## Error: token expected: ( but got: <!!!















































