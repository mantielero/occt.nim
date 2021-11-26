##  Created on: 1992-04-06
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

## !!!Ignored construct:  # _IGESData_NodeOfWriterLib_HeaderFile [NewLine] # _IGESData_NodeOfWriterLib_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] class IGESData_GlobalNodeOfWriterLib ;
## Error: expected ';'!!!

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_ReadWriteModule"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_WriterLib"
discard "forward decl of IGESData_NodeOfWriterLib"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( IGESData_NodeOfWriterLib , Standard_Transient ) class IGESData_NodeOfWriterLib : public Standard_Transient { public : ! Creates an empty Node, with no Next IGESData_NodeOfWriterLib ( ) ; ! Adds a couple (Module,Protocol), that is, stores it into
## ! itself if not yet done, else creates a Next Node to do it void AddNode ( const Handle ( IGESData_GlobalNodeOfWriterLib ) & anode ) ; ! Returns the Module designated by a precise Node const Handle ( IGESData_ReadWriteModule ) & Module ( ) const ; ! Returns the Protocol designated by a precise Node const Handle ( IGESData_Protocol ) & Protocol ( ) const ; ! Returns the Next Node. If none was defined, returned value
## ! is a Null Handle const Handle ( IGESData_NodeOfWriterLib ) & Next ( ) const ; public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return IGESData_NodeOfWriterLib ; ( IGESData_NodeOfWriterLib , Standard_Transient ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < IGESData_NodeOfWriterLib > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : private : Handle ( IGESData_GlobalNodeOfWriterLib ) thenode ; Handle ( IGESData_NodeOfWriterLib ) thenext ; } ;
## Error: expected ';'!!!














































