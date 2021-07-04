##  Created on: 1992-02-03
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

## !!!Ignored construct:  # _Interface_CheckFailure_HeaderFile [NewLine] # _Interface_CheckFailure_HeaderFile [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # ../Standard/Standard_DefineException.hxx [NewLine] # ../Standard/Standard_SStream.hxx [NewLine] # Interface_InterfaceError.hxx [NewLine] class Interface_CheckFailure ;
## Error: expected ';'!!!

discard "forward decl of Interface_CheckFailure"
type
  Handle_Interface_CheckFailureInterface_CheckFailure* = handle[
      Interface_CheckFailure]

## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Interface_CheckFailure [NewLine] # if ( CONDITION ) throw Interface_CheckFailure ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Interface_CheckFailure , Interface_InterfaceError ) #  _Interface_CheckFailure_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!