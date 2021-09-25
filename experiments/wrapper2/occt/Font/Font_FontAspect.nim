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

## ! Specifies aspect of system font.

type
  FontFontAspect* {.size: sizeof(cint), importcpp: "Font_FontAspect",
                   header: "Font_FontAspect.hxx".} = enum
    FontFontAspectUNDEFINED = -1, ## !< special value reserved for undefined aspect
    FontFontAspectRegular = 0,  ## !< normal (regular) aspect
    FontFontAspectBold,       ## !< bold aspect
    FontFontAspectItalic,     ## !< italic aspect
    FontFontAspectBoldItalic, ## !< bold+italic aspect
                             ##  old aliases
    FontFA_Undefined = fontFontAspectUNDEFINED,
    FontFA_Regular = fontFontAspectRegular, FontFA_Bold = fontFontAspectBold,
    FontFA_Italic = fontFontAspectItalic,
    FontFA_BoldItalic = fontFontAspectBoldItalic


const
  FontFontAspectNB* = fontFontAspectBoldItalic + 1

