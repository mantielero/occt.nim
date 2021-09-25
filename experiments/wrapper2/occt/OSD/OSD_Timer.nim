##  Created on: 2018-03-15
##  Created by: Stephan GARNAUD (ARM)
##  Copyright (c) 1998-1999 Matra Datavision
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

## ! Working on heterogeneous platforms
## ! we need to use the system call gettimeofday.
## ! This function is portable and it measures ELAPSED
## ! time and CPU time in seconds and microseconds.
## ! Example: OSD_Timer aTimer;
## ! aTimer.Start();   // Start  the timers (t1).
## ! .....            // Do something.
## ! aTimer.Stop();    // Stop the timers (t2).
## ! aTimer.Show();    // Give the elapsed time between t1 and t2.
## ! // Give also the process CPU time between
## ! // t1 and t2.

type
  OSD_Timer* {.importcpp: "OSD_Timer", header: "OSD_Timer.hxx", bycopy.} = object of OSD_Chronometer ##
                                                                                           ## !
                                                                                           ## Builds
                                                                                           ## a
                                                                                           ## Chronometer
                                                                                           ## initialized
                                                                                           ## and
                                                                                           ## stopped.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theThisThreadOnly
                                                                                           ## when
                                                                                           ## TRUE,
                                                                                           ## measured
                                                                                           ## CPU
                                                                                           ## time
                                                                                           ## will
                                                                                           ## account
                                                                                           ## time
                                                                                           ## of
                                                                                           ## the
                                                                                           ## current
                                                                                           ## thread
                                                                                           ## only;
                                                                                           ##
                                                                                           ## !
                                                                                           ## otherwise
                                                                                           ## CPU
                                                                                           ## of
                                                                                           ## the
                                                                                           ## process
                                                                                           ## (all
                                                                                           ## threads,
                                                                                           ## and
                                                                                           ## completed
                                                                                           ## children)
                                                                                           ## is
                                                                                           ## measured;
                                                                                           ##
                                                                                           ## !
                                                                                           ## this
                                                                                           ## flag
                                                                                           ## does
                                                                                           ## NOT
                                                                                           ## affect
                                                                                           ## ElapsedTime()
                                                                                           ## value,
                                                                                           ## only
                                                                                           ## values
                                                                                           ## returned
                                                                                           ## by
                                                                                           ## OSD_Chronometer


proc constructOSD_Timer*(theThisThreadOnly: bool = false): OSD_Timer {.constructor,
    importcpp: "OSD_Timer(@)", header: "OSD_Timer.hxx".}
proc reset*(this: var OSD_Timer; theTimeElapsedSec: float) {.importcpp: "Reset",
    header: "OSD_Timer.hxx".}
proc reset*(this: var OSD_Timer) {.importcpp: "Reset", header: "OSD_Timer.hxx".}
proc restart*(this: var OSD_Timer) {.importcpp: "Restart", header: "OSD_Timer.hxx".}
proc show*(this: OSD_Timer) {.noSideEffect, importcpp: "Show", header: "OSD_Timer.hxx".}
proc show*(this: OSD_Timer; os: var StandardOStream) {.noSideEffect, importcpp: "Show",
    header: "OSD_Timer.hxx".}
proc show*(this: OSD_Timer; theSeconds: var float; theMinutes: var int;
          theHours: var int; theCPUtime: var float) {.noSideEffect, importcpp: "Show",
    header: "OSD_Timer.hxx".}
proc stop*(this: var OSD_Timer) {.importcpp: "Stop", header: "OSD_Timer.hxx".}
proc start*(this: var OSD_Timer) {.importcpp: "Start", header: "OSD_Timer.hxx".}
proc elapsedTime*(this: OSD_Timer): float {.noSideEffect, importcpp: "ElapsedTime",
                                        header: "OSD_Timer.hxx".}
