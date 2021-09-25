##  Created on: 1992-10-14
##  Created by: Christophe MARION
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

discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of HLRBRep_TheCurveLocatorOfTheProjPCurOfCInter"
discard "forward decl of HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter"
discard "forward decl of HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter"
discard "forward decl of gp_Pnt2d"
type
  HLRBRepTheProjPCurOfCInter* {.importcpp: "HLRBRep_TheProjPCurOfCInter",
                               header: "HLRBRep_TheProjPCurOfCInter.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## the
                                                                                       ## parameter
                                                                                       ## V
                                                                                       ## of
                                                                                       ## the
                                                                                       ## point
                                                                                       ## on
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## parametric
                                                                                       ## curve
                                                                                       ## corresponding
                                                                                       ## to
                                                                                       ## the
                                                                                       ## Point
                                                                                       ## Pnt.
                                                                                       ##
                                                                                       ## !
                                                                                       ## The
                                                                                       ## Correspondance
                                                                                       ## between
                                                                                       ## Pnt
                                                                                       ## and
                                                                                       ## the
                                                                                       ## point
                                                                                       ## P(V)
                                                                                       ##
                                                                                       ## !
                                                                                       ## on
                                                                                       ## the
                                                                                       ## parametric
                                                                                       ## curve
                                                                                       ## must
                                                                                       ## be
                                                                                       ## coherent
                                                                                       ## with
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## way
                                                                                       ## of
                                                                                       ## determination
                                                                                       ## of
                                                                                       ## the
                                                                                       ## signed
                                                                                       ## distance
                                                                                       ##
                                                                                       ## !
                                                                                       ## between
                                                                                       ## a
                                                                                       ## point
                                                                                       ## and
                                                                                       ## the
                                                                                       ## implicit
                                                                                       ## curve.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Tol
                                                                                       ## is
                                                                                       ## the
                                                                                       ## tolerance
                                                                                       ## on
                                                                                       ## the
                                                                                       ## distance
                                                                                       ## between
                                                                                       ## a
                                                                                       ## point
                                                                                       ##
                                                                                       ## !
                                                                                       ## and
                                                                                       ## the
                                                                                       ## parametrised
                                                                                       ## curve.
                                                                                       ##
                                                                                       ## !
                                                                                       ## In
                                                                                       ## that
                                                                                       ## case,
                                                                                       ## no
                                                                                       ## bounds
                                                                                       ## are
                                                                                       ## given.
                                                                                       ## The
                                                                                       ## research
                                                                                       ## of
                                                                                       ##
                                                                                       ## !
                                                                                       ## the
                                                                                       ## rigth
                                                                                       ## parameter
                                                                                       ## has
                                                                                       ## to
                                                                                       ## be
                                                                                       ## made
                                                                                       ## on
                                                                                       ## the
                                                                                       ## natural
                                                                                       ##
                                                                                       ## !
                                                                                       ## parametric
                                                                                       ## domain
                                                                                       ## of
                                                                                       ## the
                                                                                       ## curve.


proc findParameter*(c: StandardAddress; pnt: Pnt2d; tol: float): float {.
    importcpp: "HLRBRep_TheProjPCurOfCInter::FindParameter(@)",
    header: "HLRBRep_TheProjPCurOfCInter.hxx".}
proc findParameter*(c: StandardAddress; pnt: Pnt2d; lowParameter: float;
                   highParameter: float; tol: float): float {.
    importcpp: "HLRBRep_TheProjPCurOfCInter::FindParameter(@)",
    header: "HLRBRep_TheProjPCurOfCInter.hxx".}
