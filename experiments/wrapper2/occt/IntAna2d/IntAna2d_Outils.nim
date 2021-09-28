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


proc constructMyDirectPolynomialRoots*(a4: cfloat; a3: cfloat; a2: cfloat; a1: cfloat;
                                      a0: cfloat): MyDirectPolynomialRoots {.
    constructor, importcpp: "MyDirectPolynomialRoots(@)",
    header: "IntAna2d_Outils.hxx".}
proc constructMyDirectPolynomialRoots*(a2: cfloat; a1: cfloat; a0: cfloat): MyDirectPolynomialRoots {.
    constructor, importcpp: "MyDirectPolynomialRoots(@)",
    header: "IntAna2d_Outils.hxx".}
proc nbSolutions*(this: MyDirectPolynomialRoots): cint {.noSideEffect,
    importcpp: "NbSolutions", header: "IntAna2d_Outils.hxx".}
proc value*(this: MyDirectPolynomialRoots; i: cint): cfloat {.noSideEffect,
    importcpp: "Value", header: "IntAna2d_Outils.hxx".}
proc isDone*(this: MyDirectPolynomialRoots): cfloat {.noSideEffect,
    importcpp: "IsDone", header: "IntAna2d_Outils.hxx".}
proc infiniteRoots*(this: MyDirectPolynomialRoots): bool {.noSideEffect,
    importcpp: "InfiniteRoots", header: "IntAna2d_Outils.hxx".}
proc pointsConfondus*(xa: cfloat; ya: cfloat; xb: cfloat; yb: cfloat): bool {.
    importcpp: "Points_Confondus(@)", header: "IntAna2d_Outils.hxx".}
proc traitementPointsConfondus*(nbPts: var cint; pts: ptr IntAna2dIntPoint) {.
    importcpp: "Traitement_Points_Confondus(@)", header: "IntAna2d_Outils.hxx".}
proc coordAncienRepere*(ancienX: var cfloat; ancienY: var cfloat;
                       axeNouveauRepere: Ax2d) {.
    importcpp: "Coord_Ancien_Repere(@)", header: "IntAna2d_Outils.hxx".}

























