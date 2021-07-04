##  Created on: 1991-07-18
##  Created by: Arnaud BOUZY
##  Copyright (c) 1991-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean

discard "forward decl of ExprIntrp_Generator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of ExprIntrp_Generator"
discard "forward decl of ExprIntrp_GenExp"
discard "forward decl of ExprIntrp_GenFct"
discard "forward decl of ExprIntrp_GenRel"
discard "forward decl of ExprIntrp_Analysis"
type
  ExprIntrp* {.importcpp: "ExprIntrp", header: "ExprIntrp.hxx", bycopy.} = object
