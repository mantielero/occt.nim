



##  Created on: 1996-09-30
##  Created by: Arnaud BOUZY
##  Copyright (c) 1996-1999 Matra Datavision
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

##  extern "C" {

proc resourceSjisToUnicode*(ph: ptr cuint; pl: ptr cuint) {.cdecl,
    importcpp: "Resource_sjis_to_unicode(@)",
    header: "Resource_ConvertUnicode.hxx".}
proc resourceUnicodeToSjis*(ph: ptr cuint; pl: ptr cuint) {.cdecl,
    importcpp: "Resource_unicode_to_sjis(@)",
    header: "Resource_ConvertUnicode.hxx".}
proc resourceUnicodeToEuc*(ph: ptr cuint; pl: ptr cuint) {.cdecl,
    importcpp: "Resource_unicode_to_euc(@)", header: "Resource_ConvertUnicode.hxx".}
proc resourceEucToUnicode*(ph: ptr cuint; pl: ptr cuint) {.cdecl,
    importcpp: "Resource_euc_to_unicode(@)", header: "Resource_ConvertUnicode.hxx".}
proc resourceGbToUnicode*(ph: ptr cuint; pl: ptr cuint) {.cdecl,
    importcpp: "Resource_gb_to_unicode(@)", header: "Resource_ConvertUnicode.hxx".}
proc resourceUnicodeToGb*(ph: ptr cuint; pl: ptr cuint) {.cdecl,
    importcpp: "Resource_unicode_to_gb(@)", header: "Resource_ConvertUnicode.hxx".}
##  }


