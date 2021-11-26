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


proc newLawComposite*(): LawComposite {.cdecl, constructor,
                                     importcpp: "Law_Composite(@)",
                                     dynlib: tkgeomalgo.}
proc newLawComposite*(first: cfloat; last: cfloat; tol: cfloat): LawComposite {.cdecl,
    constructor, importcpp: "Law_Composite(@)", dynlib: tkgeomalgo.}
proc continuity*(this: LawComposite): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkgeomalgo.}
proc nbIntervals*(this: LawComposite; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", dynlib: tkgeomalgo.}
proc intervals*(this: LawComposite; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkgeomalgo.}
proc value*(this: var LawComposite; x: cfloat): cfloat {.cdecl, importcpp: "Value",
    dynlib: tkgeomalgo.}
proc d1*(this: var LawComposite; x: cfloat; f: var cfloat; d: var cfloat) {.cdecl,
    importcpp: "D1", dynlib: tkgeomalgo.}
proc d2*(this: var LawComposite; x: cfloat; f: var cfloat; d: var cfloat; d2: var cfloat) {.
    cdecl, importcpp: "D2", dynlib: tkgeomalgo.}
proc trim*(this: LawComposite; pFirst: cfloat; pLast: cfloat; tol: cfloat): Handle[
    LawFunction] {.noSideEffect, cdecl, importcpp: "Trim", dynlib: tkgeomalgo.}
proc bounds*(this: var LawComposite; pFirst: var cfloat; pLast: var cfloat) {.cdecl,
    importcpp: "Bounds", dynlib: tkgeomalgo.}
proc changeElementaryLaw*(this: var LawComposite; w: cfloat): var Handle[LawFunction] {.
    cdecl, importcpp: "ChangeElementaryLaw", dynlib: tkgeomalgo.}
proc changeLaws*(this: var LawComposite): var LawLaws {.cdecl, importcpp: "ChangeLaws",
    dynlib: tkgeomalgo.}
proc isPeriodic*(this: LawComposite): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkgeomalgo.}
proc setPeriodic*(this: var LawComposite) {.cdecl, importcpp: "SetPeriodic",
                                        dynlib: tkgeomalgo.}