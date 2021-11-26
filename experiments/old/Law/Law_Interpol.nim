##  Created on: 1995-02-03
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Law_Interpol"
discard "forward decl of Law_Interpol"
type
  HandleC1C1* = Handle[LawInterpol]

## ! Provides an evolution law that interpolates a set
## ! of parameter and value pairs (wi, radi)

type
  LawInterpol* {.importcpp: "Law_Interpol", header: "Law_Interpol.hxx", bycopy.} = object of LawBSpFunc ##
                                                                                              ## !
                                                                                              ## Constructs
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## interpolative
                                                                                              ## evolution
                                                                                              ## law.
                                                                                              ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## function
                                                                                              ## Set
                                                                                              ## is
                                                                                              ## used
                                                                                              ## to
                                                                                              ## define
                                                                                              ## the
                                                                                              ## law.


proc constructLawInterpol*(): LawInterpol {.constructor,
    importcpp: "Law_Interpol(@)", header: "Law_Interpol.hxx".}
proc set*(this: var LawInterpol; parAndRad: TColgpArray1OfPnt2d;
         periodic: bool = false) {.importcpp: "Set", header: "Law_Interpol.hxx".}
proc setInRelative*(this: var LawInterpol; parAndRad: TColgpArray1OfPnt2d; ud: cfloat;
                   uf: cfloat; periodic: bool = false) {.importcpp: "SetInRelative",
    header: "Law_Interpol.hxx".}
proc set*(this: var LawInterpol; parAndRad: TColgpArray1OfPnt2d; dd: cfloat; df: cfloat;
         periodic: bool = false) {.importcpp: "Set", header: "Law_Interpol.hxx".}
proc setInRelative*(this: var LawInterpol; parAndRad: TColgpArray1OfPnt2d; ud: cfloat;
                   uf: cfloat; dd: cfloat; df: cfloat; periodic: bool = false) {.
    importcpp: "SetInRelative", header: "Law_Interpol.hxx".}
type
  LawInterpolbaseType* = LawBSpFunc

proc getTypeName*(): cstring {.importcpp: "Law_Interpol::get_type_name(@)",
                            header: "Law_Interpol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Law_Interpol::get_type_descriptor(@)", header: "Law_Interpol.hxx".}
proc dynamicType*(this: LawInterpol): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Law_Interpol.hxx".}

























