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

when not defined(_Standard_Macro_HeaderFile):
  import
    Standard_Macro

when defined(_MSC_VER):
  ##  MSVC versions prior to 12 did not provided acosh, asinh, atanh functions in standard library
  when _MSC_VER < 1800:
    proc acosh*(a1: cdouble): cdouble {.cdecl, importcpp: "acosh(@)",
                                    header: "Standard_math.hxx".}
    proc asinh*(a1: cdouble): cdouble {.cdecl, importcpp: "asinh(@)",
                                    header: "Standard_math.hxx".}
    proc atanh*(a1: cdouble): cdouble {.cdecl, importcpp: "atanh(@)",
                                    header: "Standard_math.hxx".}