##  Created on: 1993-08-25
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Plane"
discard "forward decl of gp_Dir"
type
  GeomProjLib* {.importcpp: "GeomProjLib", header: "GeomProjLib.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## gives
                                                                                ## the
                                                                                ## 2d-curve
                                                                                ## of
                                                                                ## a
                                                                                ## 3d-curve
                                                                                ## lying
                                                                                ## on
                                                                                ## a
                                                                                ##
                                                                                ## !
                                                                                ## surface
                                                                                ## (
                                                                                ## uses
                                                                                ## GeomProjLib_ProjectedCurve
                                                                                ## )
                                                                                ##
                                                                                ## !
                                                                                ## The
                                                                                ## 3dCurve
                                                                                ## is
                                                                                ## taken
                                                                                ## between
                                                                                ## the
                                                                                ## parametrization
                                                                                ##
                                                                                ## !
                                                                                ## range
                                                                                ## [First,
                                                                                ## Last]
                                                                                ##
                                                                                ## !
                                                                                ## <Tolerance>
                                                                                ## is
                                                                                ## used
                                                                                ## as
                                                                                ## input
                                                                                ## if
                                                                                ## the
                                                                                ## projection
                                                                                ## needs
                                                                                ##
                                                                                ## !
                                                                                ## an
                                                                                ## approximation.
                                                                                ## In
                                                                                ## this
                                                                                ## case,
                                                                                ## the
                                                                                ## reached
                                                                                ##
                                                                                ## !
                                                                                ## tolerance
                                                                                ## is
                                                                                ## set
                                                                                ## in
                                                                                ## <Tolerance>
                                                                                ## as
                                                                                ## output.
                                                                                ##
                                                                                ## !
                                                                                ## WARNING
                                                                                ## :
                                                                                ## if
                                                                                ## the
                                                                                ## projection
                                                                                ## has
                                                                                ## failed,
                                                                                ## this
                                                                                ##
                                                                                ## !
                                                                                ## method
                                                                                ## returns
                                                                                ## a
                                                                                ## null
                                                                                ## Handle.


proc Curve2d*(C: handle[Geom_Curve]; First: Standard_Real; Last: Standard_Real;
             S: handle[Geom_Surface]; UFirst: Standard_Real; ULast: Standard_Real;
             VFirst: Standard_Real; VLast: Standard_Real;
             Tolerance: var Standard_Real): handle[Geom2d_Curve] {.
    importcpp: "GeomProjLib::Curve2d(@)", header: "GeomProjLib.hxx".}
proc Curve2d*(C: handle[Geom_Curve]; First: Standard_Real; Last: Standard_Real;
             S: handle[Geom_Surface]; Tolerance: var Standard_Real): handle[
    Geom2d_Curve] {.importcpp: "GeomProjLib::Curve2d(@)", header: "GeomProjLib.hxx".}
proc Curve2d*(C: handle[Geom_Curve]; First: Standard_Real; Last: Standard_Real;
             S: handle[Geom_Surface]): handle[Geom2d_Curve] {.
    importcpp: "GeomProjLib::Curve2d(@)", header: "GeomProjLib.hxx".}
proc Curve2d*(C: handle[Geom_Curve]; S: handle[Geom_Surface]): handle[Geom2d_Curve] {.
    importcpp: "GeomProjLib::Curve2d(@)", header: "GeomProjLib.hxx".}
proc Curve2d*(C: handle[Geom_Curve]; S: handle[Geom_Surface]; UDeb: Standard_Real;
             UFin: Standard_Real; VDeb: Standard_Real; VFin: Standard_Real): handle[
    Geom2d_Curve] {.importcpp: "GeomProjLib::Curve2d(@)", header: "GeomProjLib.hxx".}
proc Curve2d*(C: handle[Geom_Curve]; S: handle[Geom_Surface]; UDeb: Standard_Real;
             UFin: Standard_Real; VDeb: Standard_Real; VFin: Standard_Real;
             Tolerance: var Standard_Real): handle[Geom2d_Curve] {.
    importcpp: "GeomProjLib::Curve2d(@)", header: "GeomProjLib.hxx".}
proc Project*(C: handle[Geom_Curve]; S: handle[Geom_Surface]): handle[Geom_Curve] {.
    importcpp: "GeomProjLib::Project(@)", header: "GeomProjLib.hxx".}
proc ProjectOnPlane*(Curve: handle[Geom_Curve]; Plane: handle[Geom_Plane];
                    Dir: gp_Dir; KeepParametrization: Standard_Boolean): handle[
    Geom_Curve] {.importcpp: "GeomProjLib::ProjectOnPlane(@)",
                 header: "GeomProjLib.hxx".}