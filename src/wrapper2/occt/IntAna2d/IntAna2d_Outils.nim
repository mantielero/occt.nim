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
## ============================================================================
## ======================================================= IntAna2d_Outils.hxx
## ============================================================================

import
  ../math/math_DirectPolynomialRoots, ../math/math_TrigonometricFunctionRoots,
  IntAna2d_IntPoint, ../gp/gp_Ax2d

type
  MyDirectPolynomialRoots* {.importcpp: "MyDirectPolynomialRoots",
                            header: "IntAna2d_Outils.hxx", bycopy.} = object


proc constructMyDirectPolynomialRoots*(A4: Standard_Real; A3: Standard_Real;
                                      A2: Standard_Real; A1: Standard_Real;
                                      A0: Standard_Real): MyDirectPolynomialRoots {.
    constructor, importcpp: "MyDirectPolynomialRoots(@)",
    header: "IntAna2d_Outils.hxx".}
proc constructMyDirectPolynomialRoots*(A2: Standard_Real; A1: Standard_Real;
                                      A0: Standard_Real): MyDirectPolynomialRoots {.
    constructor, importcpp: "MyDirectPolynomialRoots(@)",
    header: "IntAna2d_Outils.hxx".}
proc NbSolutions*(this: MyDirectPolynomialRoots): Standard_Integer {.noSideEffect,
    importcpp: "NbSolutions", header: "IntAna2d_Outils.hxx".}
proc Value*(this: MyDirectPolynomialRoots; i: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Value", header: "IntAna2d_Outils.hxx".}
proc IsDone*(this: MyDirectPolynomialRoots): Standard_Real {.noSideEffect,
    importcpp: "IsDone", header: "IntAna2d_Outils.hxx".}
proc InfiniteRoots*(this: MyDirectPolynomialRoots): Standard_Boolean {.noSideEffect,
    importcpp: "InfiniteRoots", header: "IntAna2d_Outils.hxx".}
proc Points_Confondus*(xa: Standard_Real; ya: Standard_Real; xb: Standard_Real;
                      yb: Standard_Real): Standard_Boolean {.
    importcpp: "Points_Confondus(@)", header: "IntAna2d_Outils.hxx".}
proc Traitement_Points_Confondus*(nb_pts: var Standard_Integer;
                                 pts: ptr IntAna2d_IntPoint) {.
    importcpp: "Traitement_Points_Confondus(@)", header: "IntAna2d_Outils.hxx".}
proc Coord_Ancien_Repere*(Ancien_X: var Standard_Real; Ancien_Y: var Standard_Real;
                         Axe_Nouveau_Repere: gp_Ax2d) {.
    importcpp: "Coord_Ancien_Repere(@)", header: "IntAna2d_Outils.hxx".}