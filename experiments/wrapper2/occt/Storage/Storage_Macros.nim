##  Copyright (c) 1998-1999 Matra Datavision
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

## !!!Ignored construct:  # _Storage_Macros_HeaderFile [NewLine] # _Storage_Macros_HeaderFile 1 [NewLine] # < Storage_SolveMode . hxx > [NewLine]  PROTOTYPES # Storage_DECLARE_SCHEMA_METHODS ( schema ) public : opencascade :: handle < Storage_CallBack > CallBackSelection ( const TCollection_AsciiString & ) const ;
## Error: did not expect :!!!

proc addTypeSelection*(a1: Handle[StandardPersistent]): Handle[StorageCallBack] {.
    noSideEffect, importcpp: "AddTypeSelection(@)", header: "Storage_Macros.hxx".}
proc schemaKnownTypes*(): var TColStdSequenceOfAsciiString {.noSideEffect,
    importcpp: "SchemaKnownTypes(@)", header: "Storage_Macros.hxx".}
## !!!Ignored construct:  [NewLine]  Read_TypeSelection
##  # Storage_BEGIN_READ_SELECTION ( schema ) opencascade :: handle < Storage_CallBack > [end of template] schema :: CallBackSelection ( const TCollection_AsciiString & rt ) const { opencascade :: handle < Standard_Persistent > [end of template] p ; opencascade :: handle < Storage_CallBack > [end of template] cback ; [NewLine] # Storage_READ_SELECTION ( schema , classe , callback ) if ( strcmp ( rt . ToCString ( ) , # ) == 0 ) { cback = new callback ; return cback ; } [NewLine] # Storage_END_READ_SELECTION ( schema ) cback = ResolveUnknownType ( rt , p , Storage_WriteSolve ) ; return cback ; } [NewLine]  SchemaKnownTypes
##  # Storage_BEGIN_SCHEMA_TYPES ( schema ) const TColStd_SequenceOfAsciiString & schema :: SchemaKnownTypes ( ) const { static TColStd_SequenceOfAsciiString aSeq ; static Standard_Boolean jsuidjaalai = Standard_False ; if ( ! jsuidjaalai ) { jsuidjaalai = Standard_True ; [NewLine] # Storage_SCHEMA_TYPES ( classe ) aSeq . Append ( # ) ; [NewLine] # Storage_END_SCHEMA_TYPES ( schema ) } return aSeq ; } [NewLine]  ADD_TypeSelection
##  # Storage_BEGIN_ADD_TYPES ( schema ) opencascade :: handle < Storage_CallBack > [end of template] schema :: AddTypeSelection ( const opencascade :: handle < Standard_Persistent > [end of template] & p ) const { opencascade :: handle < Storage_CallBack > [end of template] cback ; if ( ! p . IsNull ( ) ) { const opencascade :: handle < Standard_Type > [end of template] & t = p -> DynamicType ( ) ; static TCollection_AsciiString theTypeName ; theTypeName = t -> Name ( ) ; if ( HasTypeBinding ( theTypeName ) ) { cback = TypeBinding ( theTypeName ) ; cback -> Add ( p , this ) ; return cback ; } [NewLine] # Storage_ADD_TYPES ( schema , classe , callback ) if ( t == classe :: get_type_descriptor ( ) ) { cback = new callback ; BindType ( theTypeName , cback ) ; cback -> Add ( p , this ) ; return cback ; } [NewLine] # Storage_END_ADD_TYPES ( schema ) cback = ResolveUnknownType ( theTypeName , p , Storage_AddSolve ) ; if ( ! cback . IsNull ( ) ) { cback -> Add ( p , this ) ; } return cback ; } return cback ; } [NewLine] # [NewLine]
## Error: did not expect [NewLine]!!!

