##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_DomainError"
type
  StandardDomainError* {.importcpp: "Standard_DomainError",
                        header: "Standard_DomainError.hxx", bycopy.} = object of StandardFailure  
type
  HandleStandardDomainError* = Handle[StandardDomainError]

when not defined(noException) and not defined(noStandardDomainError):
  template standardDomainErrorRaiseIf*(condition, message: untyped): void =
    if condition:
      proc standardDomainError*(a1: Message): Throw {.
          importcpp: "Standard_DomainError(@)", header: "Standard_DomainError.hxx".}

else:
  discard


