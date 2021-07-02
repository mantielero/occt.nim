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

type
  MyDirectPolynomialRoots* {.importcpp: "MyDirectPolynomialRoots",
                            header: "IntAna2d_Outils.hxx", bycopy.} = object


proc constructMyDirectPolynomialRoots*(a4: StandardReal; a3: StandardReal;
                                      a2: StandardReal; a1: StandardReal;
                                      a0: StandardReal): MyDirectPolynomialRoots {.
    constructor, importcpp: "MyDirectPolynomialRoots(@)",
    header: "IntAna2d_Outils.hxx".}
proc constructMyDirectPolynomialRoots*(a2: StandardReal; a1: StandardReal;
                                      a0: StandardReal): MyDirectPolynomialRoots {.
    constructor, importcpp: "MyDirectPolynomialRoots(@)",
    header: "IntAna2d_Outils.hxx".}
proc nbSolutions*(this: MyDirectPolynomialRoots): StandardInteger {.noSideEffect,
    importcpp: "NbSolutions", header: "IntAna2d_Outils.hxx".}
proc value*(this: MyDirectPolynomialRoots; i: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Value", header: "IntAna2d_Outils.hxx".}
proc isDone*(this: MyDirectPolynomialRoots): StandardReal {.noSideEffect,
    importcpp: "IsDone", header: "IntAna2d_Outils.hxx".}
proc infiniteRoots*(this: MyDirectPolynomialRoots): StandardBoolean {.noSideEffect,
    importcpp: "InfiniteRoots", header: "IntAna2d_Outils.hxx".}
proc pointsConfondus*(xa: StandardReal; ya: StandardReal; xb: StandardReal;
                     yb: StandardReal): StandardBoolean {.
    importcpp: "Points_Confondus(@)", header: "IntAna2d_Outils.hxx".}
proc traitementPointsConfondus*(nbPts: var StandardInteger;
                               pts: ptr IntAna2dIntPoint) {.
    importcpp: "Traitement_Points_Confondus(@)", header: "IntAna2d_Outils.hxx".}
proc coordAncienRepere*(ancienX: var StandardReal; ancienY: var StandardReal;
                       axeNouveauRepere: GpAx2d) {.
    importcpp: "Coord_Ancien_Repere(@)", header: "IntAna2d_Outils.hxx".}

