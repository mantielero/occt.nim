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

discard "forward decl of Law_Function"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Law_Composite"
discard "forward decl of Law_Composite"
type
  HandleLawComposite* = Handle[LawComposite]

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
  LawComposite* {.importcpp: "Law_Composite", header: "Law_Composite.hxx", bycopy.} = object of LawFunction ##
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


proc constructLawComposite*(): LawComposite {.constructor,
    importcpp: "Law_Composite(@)", header: "Law_Composite.hxx".}
proc constructLawComposite*(first: StandardReal; last: StandardReal;
                           tol: StandardReal): LawComposite {.constructor,
    importcpp: "Law_Composite(@)", header: "Law_Composite.hxx".}
proc continuity*(this: LawComposite): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Law_Composite.hxx".}
proc nbIntervals*(this: LawComposite; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "Law_Composite.hxx".}
proc intervals*(this: LawComposite; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "Law_Composite.hxx".}
proc value*(this: var LawComposite; x: StandardReal): StandardReal {.
    importcpp: "Value", header: "Law_Composite.hxx".}
proc d1*(this: var LawComposite; x: StandardReal; f: var StandardReal;
        d: var StandardReal) {.importcpp: "D1", header: "Law_Composite.hxx".}
proc d2*(this: var LawComposite; x: StandardReal; f: var StandardReal;
        d: var StandardReal; d2: var StandardReal) {.importcpp: "D2",
    header: "Law_Composite.hxx".}
proc trim*(this: LawComposite; pFirst: StandardReal; pLast: StandardReal;
          tol: StandardReal): Handle[LawFunction] {.noSideEffect, importcpp: "Trim",
    header: "Law_Composite.hxx".}
proc bounds*(this: var LawComposite; pFirst: var StandardReal; pLast: var StandardReal) {.
    importcpp: "Bounds", header: "Law_Composite.hxx".}
proc changeElementaryLaw*(this: var LawComposite; w: StandardReal): var Handle[
    LawFunction] {.importcpp: "ChangeElementaryLaw", header: "Law_Composite.hxx".}
proc changeLaws*(this: var LawComposite): var LawLaws {.importcpp: "ChangeLaws",
    header: "Law_Composite.hxx".}
proc isPeriodic*(this: LawComposite): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Law_Composite.hxx".}
proc setPeriodic*(this: var LawComposite) {.importcpp: "SetPeriodic",
                                        header: "Law_Composite.hxx".}
type
  LawCompositebaseType* = LawFunction

proc getTypeName*(): cstring {.importcpp: "Law_Composite::get_type_name(@)",
                            header: "Law_Composite.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Law_Composite::get_type_descriptor(@)",
    header: "Law_Composite.hxx".}
proc dynamicType*(this: LawComposite): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Law_Composite.hxx".}

