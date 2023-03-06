import gce_types
import ../gp/gp_types





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



proc newGceMakeParab*(a2: gp_Ax2; focal: cfloat): GceMakeParab {.cdecl, constructor,
    importcpp: "gce_MakeParab(@)", header: "gce_MakeParab.hxx".}
proc newGceMakeParab*(d: gp_Ax1; f: gp_Pnt): GceMakeParab {.cdecl, constructor,
    importcpp: "gce_MakeParab(@)", header: "gce_MakeParab.hxx".}
proc value*(this: GceMakeParab): gp_Parab {.noSideEffect, cdecl, importcpp: "Value",
                                     header: "gce_MakeParab.hxx".}
proc operator*(this: GceMakeParab): gp_Parab {.noSideEffect, cdecl,
                                        importcpp: "Operator", header: "gce_MakeParab.hxx".}
converter `parab`*(this: GceMakeParab): gp_Parab {.noSideEffect, cdecl,
    importcpp: "gce_MakeParab::operator gp_Parab", header: "gce_MakeParab.hxx".}


