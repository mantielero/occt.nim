##  Created on: 1991-03-12
##  Created by: Michel CHAUVAT
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Mat"
discard "forward decl of GProp_GProps"
discard "forward decl of GProp_PGProps"
discard "forward decl of GProp_CelGProps"
discard "forward decl of GProp_SelGProps"
discard "forward decl of GProp_VelGProps"
discard "forward decl of GProp_PrincipalProps"
discard "forward decl of GProp_PEquation"
type
  GProp* {.importcpp: "GProp", header: "GProp.hxx", bycopy.} = object ## ! methods of package
                                                              ## ! Computes the matrix Operator, referred to as the
                                                              ## ! "Huyghens Operator" of a geometric system at the
                                                              ## ! point Q of the space, using the following data :
                                                              ## ! - Mass, i.e. the mass of the system,
                                                              ## ! - G, the center of mass of the system.
                                                              ## ! The "Huyghens Operator" is used to compute
                                                              ## ! Inertia/Q, the matrix of inertia of the system at
                                                              ## ! the point Q using Huyghens' theorem :
                                                              ## ! Inertia/Q = Inertia/G + HOperator (Q, G, Mass)
                                                              ## ! where Inertia/G is the matrix of inertia of the
                                                              ## ! system relative to its center of mass as returned by
                                                              ## ! the function MatrixOfInertia on any GProp_GProps object.


proc hOperator*(g: Pnt; q: Pnt; mass: float; operator: var Mat) {.
    importcpp: "GProp::HOperator(@)", header: "GProp.hxx".}
