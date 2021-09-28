##  Copyright (c) 2018 OPEN CASCADE SAS
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
## !@file
## ! Supresses compiler warnings.
## !
## ! Standard_WarningsDisable.hxx disables all compiler warnings.
## ! Standard_WarningsRestore.hxx restore the previous state of warnings.
## !
## ! Use these headers to wrap include directive containing external (non-OCCT)
## ! header files to avoid compiler warnings to be generated for these files.
## ! They should always be used in pair:
## !
## ! @code
## ! #include <Standard_WarningsDisable.hxx>
## ! #include <dirty_header.h> // some header that can generate warnings
## ! #include <Standard_WarningsRestore.hxx>
## ! @endcode

# # # when defined(clang):
# # # elif defined(msc_Ver):
# # #   discard
# # # elif defined(gnuc) and (gnuc > 4 or (gnuc == 4 and gnuc_Minor >= 6)):
# # #   ##  -Wall does not work here for GCC, so the only way is to list all most important warnings...
# # #   when defined(gnuc) and (gnuc > 4 or (gnuc == 4 and gnuc_Minor >= 8)):
# # #     discard


