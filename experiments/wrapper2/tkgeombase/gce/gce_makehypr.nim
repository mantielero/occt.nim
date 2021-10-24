##  Created on: 1992-08-26
##  Created by: Remi GILET
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Hypr"
type
  GceMakeHypr* {.importcpp: "gce_MakeHypr", header: "gce_MakeHypr.hxx", bycopy.} = object of GceRoot ##
                                                                                           ## !
                                                                                           ## A2
                                                                                           ## is
                                                                                           ## the
                                                                                           ## local
                                                                                           ## coordinate
                                                                                           ## system
                                                                                           ## of
                                                                                           ## the
                                                                                           ## hyperbola.
                                                                                           ##
                                                                                           ## !
                                                                                           ## In
                                                                                           ## the
                                                                                           ## local
                                                                                           ## coordinates
                                                                                           ## system
                                                                                           ## A2
                                                                                           ## the
                                                                                           ## equation
                                                                                           ## of
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## hyperbola
                                                                                           ## is
                                                                                           ## :
                                                                                           ##
                                                                                           ## !
                                                                                           ## X*X
                                                                                           ## /
                                                                                           ## MajorRadius*MajorRadius
                                                                                           ## -
                                                                                           ## Y*Y
                                                                                           ## /
                                                                                           ## MinorRadius*MinorRadius
                                                                                           ## =
                                                                                           ## 1.0
                                                                                           ##
                                                                                           ## !
                                                                                           ## It
                                                                                           ## is
                                                                                           ## not
                                                                                           ## forbidden
                                                                                           ## to
                                                                                           ## create
                                                                                           ## an
                                                                                           ## Hyperbola
                                                                                           ## with
                                                                                           ## MajorRadius
                                                                                           ## =
                                                                                           ##
                                                                                           ## !
                                                                                           ## MinorRadius.
                                                                                           ##
                                                                                           ## !
                                                                                           ## For
                                                                                           ## the
                                                                                           ## hyperbola
                                                                                           ## the
                                                                                           ## MajorRadius
                                                                                           ## can
                                                                                           ## be
                                                                                           ## lower
                                                                                           ## than
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## MinorRadius.
                                                                                           ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## status
                                                                                           ## is
                                                                                           ## "NegativeRadius"
                                                                                           ## if
                                                                                           ## MajorRadius
                                                                                           ## <
                                                                                           ## 0.0
                                                                                           ## and
                                                                                           ##
                                                                                           ## !
                                                                                           ## "InvertRadius"
                                                                                           ## if
                                                                                           ## MinorRadius
                                                                                           ## >
                                                                                           ## MajorRadius.


proc newGceMakeHypr*(a2: Ax2; majorRadius: cfloat; minorRadius: cfloat): GceMakeHypr {.
    cdecl, constructor, importcpp: "gce_MakeHypr(@)", dynlib: tkgeombase.}
proc newGceMakeHypr*(s1: Pnt; s2: Pnt; center: Pnt): GceMakeHypr {.cdecl, constructor,
    importcpp: "gce_MakeHypr(@)", dynlib: tkgeombase.}
proc value*(this: GceMakeHypr): Hypr {.noSideEffect, cdecl, importcpp: "Value",
                                   dynlib: tkgeombase.}
proc operator*(this: GceMakeHypr): Hypr {.noSideEffect, cdecl, importcpp: "Operator",
                                      dynlib: tkgeombase.}
converter `hypr`*(this: GceMakeHypr): Hypr {.noSideEffect, cdecl,
    importcpp: "gce_MakeHypr::operator gp_Hypr", dynlib: tkgeombase.}