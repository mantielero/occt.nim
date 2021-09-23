##  Created on: 1996-03-29
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  Law_Laws, ../Standard/Standard_Boolean, Law_Function, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfReal

discard "forward decl of Law_Function"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Law_Composite"
discard "forward decl of Law_Composite"
type
  Handle_Law_Composite* = handle[Law_Composite]

## ! Loi  composite constituee  d une liste  de lois de
## ! ranges consecutifs.
## ! Cette implementation un peu lourde permet de reunir
## ! en une seule loi des portions de loi construites de
## ! facon independantes (par exemple en interactif) et
## ! de lancer le walking d un coup a l echelle d une
## ! ElSpine.
## ! CET OBJET REPOND DONC A UN PROBLEME D IMPLEMENTATION
## ! SPECIFIQUE AUX CONGES!!!

type
  Law_Composite* {.importcpp: "Law_Composite", header: "Law_Composite.hxx", bycopy.} = object of Law_Function ##
                                                                                                    ## !
                                                                                                    ## Construct
                                                                                                    ## an
                                                                                                    ## empty
                                                                                                    ## Law
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Set
                                                                                                    ## the
                                                                                                    ## current
                                                                                                    ## function.


proc constructLaw_Composite*(): Law_Composite {.constructor,
    importcpp: "Law_Composite(@)", header: "Law_Composite.hxx".}
proc constructLaw_Composite*(First: Standard_Real; Last: Standard_Real;
                            Tol: Standard_Real): Law_Composite {.constructor,
    importcpp: "Law_Composite(@)", header: "Law_Composite.hxx".}
proc Continuity*(this: Law_Composite): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Law_Composite.hxx".}
proc NbIntervals*(this: Law_Composite; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Law_Composite.hxx".}
proc Intervals*(this: Law_Composite; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    noSideEffect, importcpp: "Intervals", header: "Law_Composite.hxx".}
proc Value*(this: var Law_Composite; X: Standard_Real): Standard_Real {.
    importcpp: "Value", header: "Law_Composite.hxx".}
proc D1*(this: var Law_Composite; X: Standard_Real; F: var Standard_Real;
        D: var Standard_Real) {.importcpp: "D1", header: "Law_Composite.hxx".}
proc D2*(this: var Law_Composite; X: Standard_Real; F: var Standard_Real;
        D: var Standard_Real; D2: var Standard_Real) {.importcpp: "D2",
    header: "Law_Composite.hxx".}
proc Trim*(this: Law_Composite; PFirst: Standard_Real; PLast: Standard_Real;
          Tol: Standard_Real): handle[Law_Function] {.noSideEffect,
    importcpp: "Trim", header: "Law_Composite.hxx".}
proc Bounds*(this: var Law_Composite; PFirst: var Standard_Real;
            PLast: var Standard_Real) {.importcpp: "Bounds",
                                     header: "Law_Composite.hxx".}
proc ChangeElementaryLaw*(this: var Law_Composite; W: Standard_Real): var handle[
    Law_Function] {.importcpp: "ChangeElementaryLaw", header: "Law_Composite.hxx".}
proc ChangeLaws*(this: var Law_Composite): var Law_Laws {.importcpp: "ChangeLaws",
    header: "Law_Composite.hxx".}
proc IsPeriodic*(this: Law_Composite): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Law_Composite.hxx".}
proc SetPeriodic*(this: var Law_Composite) {.importcpp: "SetPeriodic",
    header: "Law_Composite.hxx".}
type
  Law_Compositebase_type* = Law_Function

proc get_type_name*(): cstring {.importcpp: "Law_Composite::get_type_name(@)",
                              header: "Law_Composite.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Law_Composite::get_type_descriptor(@)",
    header: "Law_Composite.hxx".}
proc DynamicType*(this: Law_Composite): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Law_Composite.hxx".}