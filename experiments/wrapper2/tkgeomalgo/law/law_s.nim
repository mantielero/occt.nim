##  Created on: 1993-12-24
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Law_S"
type
  HandleLawS* = Handle[LawS]

## ! Describes an "S" evolution law.

type
  LawS* {.importcpp: "Law_S", header: "Law_S.hxx", bycopy.} = object of LawBSpFunc ## !
                                                                         ## Constructs an empty "S"
                                                                         ## evolution law.


proc newLawS*(): LawS {.cdecl, constructor, importcpp: "Law_S(@)", dynlib: tkgeomalgo.}
proc set*(this: var LawS; pdeb: cfloat; valdeb: cfloat; pfin: cfloat; valfin: cfloat) {.
    cdecl, importcpp: "Set", dynlib: tkgeomalgo.}
proc set*(this: var LawS; pdeb: cfloat; valdeb: cfloat; ddeb: cfloat; pfin: cfloat;
         valfin: cfloat; dfin: cfloat) {.cdecl, importcpp: "Set", dynlib: tkgeomalgo.}