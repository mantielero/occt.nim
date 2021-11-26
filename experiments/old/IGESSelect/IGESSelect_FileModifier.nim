##  Created on: 1994-05-31
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

## !!!Ignored construct:  # _IGESSelect_FileModifier_HeaderFile [NewLine] # _IGESSelect_FileModifier_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < IFSelect_GeneralModifier . hxx > [NewLine] class IGESData_IGESWriter ;
## Error: expected ';'!!!

discard "forward decl of IFSelect_ContextWrite"
discard "forward decl of IGESSelect_FileModifier"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( IGESSelect_FileModifier , IFSelect_GeneralModifier ) class IGESSelect_FileModifier : public IFSelect_GeneralModifier { public : ! Perform the action specific to each class of File Modifier
## ! <ctx> is the ContextWrite, which brings : the model, the
## ! protocol, the file name, plus the object AppliedModifiers
## ! (not used here) and the CheckList
## ! Remark that the model has to be casted for specific access
## !
## ! <writer> is the Writer and is specific to each norm, on which
## ! to act virtual void Perform ( IFSelect_ContextWrite & ctx , IGESData_IGESWriter & writer ) const = 0 ; public : typedef IFSelect_GeneralModifier base_type ; static const char * get_type_name ( ) { return IGESSelect_FileModifier ; ( IGESSelect_FileModifier , IFSelect_GeneralModifier ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < IGESSelect_FileModifier > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : ! Sets a File Modifier to keep the graph of dependences
## ! unchanges (because it works on the model already produced) IGESSelect_FileModifier ( ) ; private : } ;
## Error: expected ';'!!!














































