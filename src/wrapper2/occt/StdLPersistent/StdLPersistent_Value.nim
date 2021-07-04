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

## !!!Ignored construct:  # _StdLPersistent_Value_HeaderFile [NewLine] # _StdLPersistent_Value_HeaderFile [NewLine] # ../StdObjMgt/StdObjMgt_Attribute.hxx [NewLine] # StdLPersistent_HString.hxx [NewLine] # ../TDataStd/TDataStd_Integer.hxx [NewLine] # ../TDF/TDF_TagSource.hxx [NewLine] # ../TDF/TDF_Reference.hxx [NewLine] # ../TDataStd/TDataStd_UAttribute.hxx [NewLine] # ../TDataStd/TDataStd_Name.hxx [NewLine] # ../TDataStd/TDataStd_Comment.hxx [NewLine] # ../TDataStd/TDataStd_AsciiString.hxx [NewLine] class StdLPersistent_Value { template < class AttribClass > [end of template] class integer : public StdObjMgt_Attribute < AttribClass > [end of template] :: SingleInt { public : ! Import transient attribuite from the persistent data. virtual void ImportAttribute ( ) ; } ; template < class AttribClass , class HStringClass = StdLPersistent_HString :: Extended > [end of template] class string : public StdObjMgt_Attribute < AttribClass > :: SingleRef { public : ! Import transient attribuite from the persistent data. virtual void ImportAttribute ( ) ; } ; public : class TagSource : public integer < TDF_TagSource > [end of template] { public : Standard_CString PName ( ) const { return PDF_TagSource ; } } ; class Reference : public string < TDF_Reference > [end of template] { public : Standard_CString PName ( ) const { return PDF_Reference ; } } ; class Comment : public string < TDataStd_Comment > [end of template] { public : Standard_CString PName ( ) const { return PDF_Comment ; } } ; class UAttribute : public string < TDataStd_UAttribute > [end of template] { public : ! Create an empty transient attribuite virtual opencascade :: handle < TDF_Attribute > [end of template] CreateAttribute ( ) ; Standard_CString PName ( ) const { return PDataStd_UAttribute ; } } ; class Integer : public integer < TDataStd_Integer > [end of template] { public : ! Create an empty transient attribuite virtual opencascade :: handle < TDF_Attribute > [end of template] CreateAttribute ( ) ; Standard_CString PName ( ) const { return PDataStd_Integer ; } } ; class Name : public string < TDataStd_Name > [end of template] { public : ! Create an empty transient attribuite virtual opencascade :: handle < TDF_Attribute > [end of template] CreateAttribute ( ) ; Standard_CString PName ( ) const { return PDataStd_Name ; } } ; class AsciiString : public string < TDataStd_AsciiString , StdLPersistent_HString :: Ascii > [end of template] { public : ! Create an empty transient attribuite virtual opencascade :: handle < TDF_Attribute > [end of template] CreateAttribute ( ) ; Standard_CString PName ( ) const { return PDataStd_AsciiString ; } } ; } ;
## Error: did not expect > [end of template]!!!

## !!!Ignored construct:  template < > [end of template] template < > [end of template] inline Standard_CString StdObjMgt_Attribute < TDF_TagSource > :: Simple < Standard_Integer > :: PName ( ) const { return PDF_TagSource ; } template < > template < > inline Standard_CString StdObjMgt_Attribute < TDF_Reference > :: Simple < opencascade :: handle < StdObjMgt_Persistent > [end of template] > :: PName ( ) const { return PDF_Reference ; } template < > template < > inline Standard_CString StdObjMgt_Attribute < TDataStd_Comment > :: Simple < opencascade :: handle < StdObjMgt_Persistent > [end of template] > :: PName ( ) const { return PDataStd_Comment ; } # [NewLine]
## Error: did not expect > [end of template]!!!