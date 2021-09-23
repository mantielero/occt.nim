##  Created on: 1994-04-13
##  Created by: Eric BONNARDEL
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean, GeomFill_Trihedron,
  ../TColGeom/TColGeom_SequenceOfCurve, ../GeomAbs/GeomAbs_Shape

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Geom_Surface"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Dir"
type
  GeomFill_Pipe* {.importcpp: "GeomFill_Pipe", header: "GeomFill_Pipe.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Constructs
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## algorithm
                                                                                      ## for
                                                                                      ## building
                                                                                      ## pipes.
                                                                                      ## Use
                                                                                      ##
                                                                                      ## !
                                                                                      ## the
                                                                                      ## function
                                                                                      ## Init
                                                                                      ## to
                                                                                      ## initialize
                                                                                      ## it.


proc constructGeomFill_Pipe*(): GeomFill_Pipe {.constructor,
    importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFill_Pipe*(Path: handle[Geom_Curve]; Radius: Standard_Real): GeomFill_Pipe {.
    constructor, importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFill_Pipe*(Path: handle[Geom_Curve];
                            FirstSect: handle[Geom_Curve]; Option: GeomFill_Trihedron = GeomFill_IsCorrectedFrenet): GeomFill_Pipe {.
    constructor, importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFill_Pipe*(Path: handle[Geom2d_Curve];
                            Support: handle[Geom_Surface];
                            FirstSect: handle[Geom_Curve]): GeomFill_Pipe {.
    constructor, importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFill_Pipe*(Path: handle[Geom_Curve];
                            FirstSect: handle[Geom_Curve]; Dir: gp_Dir): GeomFill_Pipe {.
    constructor, importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFill_Pipe*(Path: handle[Geom_Curve];
                            FirstSect: handle[Geom_Curve];
                            LastSect: handle[Geom_Curve]): GeomFill_Pipe {.
    constructor, importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFill_Pipe*(Path: handle[Geom_Curve];
                            NSections: TColGeom_SequenceOfCurve): GeomFill_Pipe {.
    constructor, importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFill_Pipe*(Path: handle[Geom_Curve]; Curve1: handle[Geom_Curve];
                            Curve2: handle[Geom_Curve]; Radius: Standard_Real): GeomFill_Pipe {.
    constructor, importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFill_Pipe*(Path: handle[Adaptor3d_HCurve];
                            Curve1: handle[Adaptor3d_HCurve];
                            Curve2: handle[Adaptor3d_HCurve];
                            Radius: Standard_Real): GeomFill_Pipe {.constructor,
    importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc constructGeomFill_Pipe*(Path: handle[Geom_Curve];
                            Guide: handle[Adaptor3d_HCurve];
                            FirstSect: handle[Geom_Curve];
                            ByACR: Standard_Boolean; rotat: Standard_Boolean): GeomFill_Pipe {.
    constructor, importcpp: "GeomFill_Pipe(@)", header: "GeomFill_Pipe.hxx".}
proc Init*(this: var GeomFill_Pipe; Path: handle[Geom_Curve]; Radius: Standard_Real) {.
    importcpp: "Init", header: "GeomFill_Pipe.hxx".}
proc Init*(this: var GeomFill_Pipe; Path: handle[Geom_Curve];
          FirstSect: handle[Geom_Curve];
          Option: GeomFill_Trihedron = GeomFill_IsCorrectedFrenet) {.
    importcpp: "Init", header: "GeomFill_Pipe.hxx".}
proc Init*(this: var GeomFill_Pipe; Path: handle[Geom2d_Curve];
          Support: handle[Geom_Surface]; FirstSect: handle[Geom_Curve]) {.
    importcpp: "Init", header: "GeomFill_Pipe.hxx".}
proc Init*(this: var GeomFill_Pipe; Path: handle[Geom_Curve];
          FirstSect: handle[Geom_Curve]; Dir: gp_Dir) {.importcpp: "Init",
    header: "GeomFill_Pipe.hxx".}
proc Init*(this: var GeomFill_Pipe; Path: handle[Geom_Curve];
          FirstSect: handle[Geom_Curve]; LastSect: handle[Geom_Curve]) {.
    importcpp: "Init", header: "GeomFill_Pipe.hxx".}
proc Init*(this: var GeomFill_Pipe; Path: handle[Geom_Curve];
          NSections: TColGeom_SequenceOfCurve) {.importcpp: "Init",
    header: "GeomFill_Pipe.hxx".}
proc Init*(this: var GeomFill_Pipe; Path: handle[Adaptor3d_HCurve];
          Curve1: handle[Adaptor3d_HCurve]; Curve2: handle[Adaptor3d_HCurve];
          Radius: Standard_Real) {.importcpp: "Init", header: "GeomFill_Pipe.hxx".}
proc Init*(this: var GeomFill_Pipe; Path: handle[Geom_Curve];
          Guide: handle[Adaptor3d_HCurve]; FirstSect: handle[Geom_Curve];
          ByACR: Standard_Boolean; rotat: Standard_Boolean) {.importcpp: "Init",
    header: "GeomFill_Pipe.hxx".}
proc Perform*(this: var GeomFill_Pipe;
             WithParameters: Standard_Boolean = Standard_False;
             myPolynomial: Standard_Boolean = Standard_False) {.
    importcpp: "Perform", header: "GeomFill_Pipe.hxx".}
proc Perform*(this: var GeomFill_Pipe; Tol: Standard_Real;
             Polynomial: Standard_Boolean; Conti: GeomAbs_Shape = GeomAbs_C1;
             MaxDegree: Standard_Integer = 11; NbMaxSegment: Standard_Integer = 30) {.
    importcpp: "Perform", header: "GeomFill_Pipe.hxx".}
proc Surface*(this: GeomFill_Pipe): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface", header: "GeomFill_Pipe.hxx".}
proc ExchangeUV*(this: GeomFill_Pipe): Standard_Boolean {.noSideEffect,
    importcpp: "ExchangeUV", header: "GeomFill_Pipe.hxx".}
proc GenerateParticularCase*(this: var GeomFill_Pipe; B: Standard_Boolean) {.
    importcpp: "GenerateParticularCase", header: "GeomFill_Pipe.hxx".}
proc GenerateParticularCase*(this: GeomFill_Pipe): Standard_Boolean {.noSideEffect,
    importcpp: "GenerateParticularCase", header: "GeomFill_Pipe.hxx".}
proc ErrorOnSurf*(this: GeomFill_Pipe): Standard_Real {.noSideEffect,
    importcpp: "ErrorOnSurf", header: "GeomFill_Pipe.hxx".}
proc IsDone*(this: GeomFill_Pipe): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomFill_Pipe.hxx".}