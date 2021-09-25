##  Created on: 1997-02-28
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1997-1999 Matra Datavision
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

## !!!Ignored construct:  # _Plugin_Failure_HeaderFile [NewLine] # _Plugin_Failure_HeaderFile [NewLine] # < Standard_Type . hxx > [NewLine] # < Standard_DefineException . hxx > [NewLine] # < Standard_SStream . hxx > [NewLine] # < Standard_Failure . hxx > [NewLine] class Plugin_Failure ;
## Error: expected ';'!!!

discard "forward decl of Plugin_Failure"
type
  HandlePluginFailurePluginFailure* = Handle[PluginFailure]

## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Plugin_Failure [NewLine] # if ( CONDITION ) throw Plugin_Failure ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Plugin_Failure , Standard_Failure ) #  _Plugin_Failure_HeaderFile
## Error: did not expect [NewLine]!!!

