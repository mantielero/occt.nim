import standard_types

##  Created on: 2013-01-17
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## ! This class intended to temporary switch C locale and logically equivalent to setlocale(LC_ALL, "C").
## ! It is intended to format text regardless of user locale settings (for import/export functionality).
## ! Thus following calls to sprintf, atoi and other functions will use "C" locale.
## ! Destructor of this class will return original locale.
## !
## ! Notice that this functionality is platfrom dependent and intended only to workaround alien code
## ! that doesn't setup locale correctly.
## !
## ! Internally you should prefer more portable C++ locale interfaces
## ! or OCCT wrappers to some C functions like Sprintf, Atof, Strtod.



proc constructStandardCLocaleSentry*(): StandardCLocaleSentry {.cdecl, constructor,
    importcpp: "Standard_CLocaleSentry(@)", header: "Standard_CLocaleSentry.hxx".}
proc destroyStandardCLocaleSentry*(this: var StandardCLocaleSentry) {.cdecl,
    importcpp: "#.~Standard_CLocaleSentry()", header: "Standard_CLocaleSentry.hxx".}
#proc getCLocale*(): ClocaleT {.cdecl,
#                            importcpp: "Standard_CLocaleSentry::GetCLocale(@)",
#                            header: "Standard_CLocaleSentry.hxx".}
