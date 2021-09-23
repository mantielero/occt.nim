##  Created on: 1995-03-08
##  Created by: Laurent BUCHARD
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Address,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../TColgp/TColgp_Array1OfPnt2d, ../NCollection/NCollection_Handle,
  ../TColStd/TColStd_Array1OfReal, ../TColgp/TColgp_SequenceOfPnt2d

discard "forward decl of gp_Pnt2d"
type
  CSLib_Class2d* {.importcpp: "CSLib_Class2d", header: "CSLib_Class2d.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Constructs
                                                                                      ## the
                                                                                      ## 2D-polygon.
                                                                                      ##
                                                                                      ## !
                                                                                      ## thePnts2d
                                                                                      ## is
                                                                                      ## the
                                                                                      ## set
                                                                                      ## of
                                                                                      ## the
                                                                                      ## vertices
                                                                                      ## (closed
                                                                                      ## polygon
                                                                                      ##
                                                                                      ## !
                                                                                      ## will
                                                                                      ## always
                                                                                      ## be
                                                                                      ## created
                                                                                      ## inside
                                                                                      ## of
                                                                                      ## this
                                                                                      ## constructor;
                                                                                      ##
                                                                                      ## !
                                                                                      ## consequently,
                                                                                      ## there
                                                                                      ## is
                                                                                      ## no
                                                                                      ## point
                                                                                      ## in
                                                                                      ## repeating
                                                                                      ## first
                                                                                      ## and
                                                                                      ##
                                                                                      ## !
                                                                                      ## last
                                                                                      ## point
                                                                                      ## in
                                                                                      ## thePnts2d).
                                                                                      ##
                                                                                      ## !
                                                                                      ## theTolu
                                                                                      ## and
                                                                                      ## theTolv
                                                                                      ## are
                                                                                      ## tolerances.
                                                                                      ##
                                                                                      ## !
                                                                                      ## theUmin,
                                                                                      ## theVmin,
                                                                                      ## theUmax,
                                                                                      ## theVmax
                                                                                      ## are
                                                                                      ##
                                                                                      ## !
                                                                                      ## UV-bounds
                                                                                      ## of
                                                                                      ## the
                                                                                      ## polygon.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Initializes
                                                                                      ## theObj


proc constructCSLib_Class2d*(thePnts2d: TColgp_Array1OfPnt2d;
                            theTolU: Standard_Real; theTolV: Standard_Real;
                            theUMin: Standard_Real; theVMin: Standard_Real;
                            theUMax: Standard_Real; theVMax: Standard_Real): CSLib_Class2d {.
    constructor, importcpp: "CSLib_Class2d(@)", header: "CSLib_Class2d.hxx".}
proc constructCSLib_Class2d*(thePnts2d: TColgp_SequenceOfPnt2d;
                            theTolU: Standard_Real; theTolV: Standard_Real;
                            theUMin: Standard_Real; theVMin: Standard_Real;
                            theUMax: Standard_Real; theVMax: Standard_Real): CSLib_Class2d {.
    constructor, importcpp: "CSLib_Class2d(@)", header: "CSLib_Class2d.hxx".}
proc SiDans*(this: CSLib_Class2d; P: gp_Pnt2d): Standard_Integer {.noSideEffect,
    importcpp: "SiDans", header: "CSLib_Class2d.hxx".}
proc SiDans_OnMode*(this: CSLib_Class2d; P: gp_Pnt2d; Tol: Standard_Real): Standard_Integer {.
    noSideEffect, importcpp: "SiDans_OnMode", header: "CSLib_Class2d.hxx".}
proc InternalSiDans*(this: CSLib_Class2d; X: Standard_Real; Y: Standard_Real): Standard_Integer {.
    noSideEffect, importcpp: "InternalSiDans", header: "CSLib_Class2d.hxx".}
proc InternalSiDansOuOn*(this: CSLib_Class2d; X: Standard_Real; Y: Standard_Real): Standard_Integer {.
    noSideEffect, importcpp: "InternalSiDansOuOn", header: "CSLib_Class2d.hxx".}