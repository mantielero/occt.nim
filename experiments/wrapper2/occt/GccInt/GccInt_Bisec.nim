##  Created on: 1991-10-04
##  Created by: Remi GILET
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
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of GccInt_Bisec"
discard "forward decl of GccInt_Bisec"
type
  HandleGccIntBisec* = Handle[GccIntBisec]

## ! The deferred class GccInt_Bisec is the root class for
## ! elementary bisecting loci between two simple geometric
## ! objects (i.e. circles, lines or points).
## ! Bisecting loci between two geometric objects are such
## ! that each of their points is at the same distance from the
## ! two geometric objects. It is typically a curve, such as a
## ! line, circle or conic.
## ! Generally there is more than one elementary object
## ! which is the solution to a bisecting loci problem: each
## ! solution is described with one elementary bisecting
## ! locus. For example, the bisectors of two secant straight
## ! lines are two perpendicular straight lines.
## ! The GccInt package provides concrete implementations
## ! of the following elementary derived bisecting loci:
## ! -   lines, circles, ellipses, hyperbolas and parabolas, and
## ! -   points (not used in this context).
## ! The GccAna package provides numerous algorithms for
## ! computing the bisecting loci between circles, lines or
## ! points, whose solutions are these types of elementary bisecting locus.

type
  GccIntBisec* {.importcpp: "GccInt_Bisec", header: "GccInt_Bisec.hxx", bycopy.} = object of StandardTransient ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## the
                                                                                                     ## type
                                                                                                     ## of
                                                                                                     ## bisecting
                                                                                                     ## object
                                                                                                     ## (line,
                                                                                                     ## circle,
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## parabola,
                                                                                                     ## hyperbola,
                                                                                                     ## ellipse,
                                                                                                     ## point).


proc arcType*(this: GccIntBisec): GccIntIType {.noSideEffect, importcpp: "ArcType",
    header: "GccInt_Bisec.hxx".}
proc point*(this: GccIntBisec): Pnt2d {.noSideEffect, importcpp: "Point",
                                    header: "GccInt_Bisec.hxx".}
proc line*(this: GccIntBisec): Lin2d {.noSideEffect, importcpp: "Line",
                                   header: "GccInt_Bisec.hxx".}
proc circle*(this: GccIntBisec): Circ2d {.noSideEffect, importcpp: "Circle",
                                      header: "GccInt_Bisec.hxx".}
proc hyperbola*(this: GccIntBisec): Hypr2d {.noSideEffect, importcpp: "Hyperbola",
    header: "GccInt_Bisec.hxx".}
proc parabola*(this: GccIntBisec): Parab2d {.noSideEffect, importcpp: "Parabola",
    header: "GccInt_Bisec.hxx".}
proc ellipse*(this: GccIntBisec): Elips2d {.noSideEffect, importcpp: "Ellipse",
                                        header: "GccInt_Bisec.hxx".}
type
  GccIntBisecbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "GccInt_Bisec::get_type_name(@)",
                            header: "GccInt_Bisec.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GccInt_Bisec::get_type_descriptor(@)", header: "GccInt_Bisec.hxx".}
proc dynamicType*(this: GccIntBisec): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GccInt_Bisec.hxx".}
