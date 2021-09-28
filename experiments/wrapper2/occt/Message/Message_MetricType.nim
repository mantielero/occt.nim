##  Copyright (c) 2020 OPEN CASCADE SAS
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

## ! Specifies kind of report information to collect

type
  MessageMetricType* {.size: sizeof(cint), importcpp: "Message_MetricType",
                      header: "Message_MetricType.hxx".} = enum
    MessageMetricTypeNone,    ## !< no computation
    MessageMetricTypeThreadCPUUserTime, ## !< OSD_Chronometer::GetThreadCPU user time
    MessageMetricTypeThreadCPUSystemTime, ## !< OSD_Chronometer::GetThreadCPU system time
    MessageMetricTypeProcessCPUUserTime, ## !< OSD_Chronometer::GetProcessCPU user time
    MessageMetricTypeProcessCPUSystemTime, ## !< OSD_Chronometer::GetProcessCPU system time
    MessageMetricTypeMemPrivate, ## !< OSD_MemInfo::MemPrivate
    MessageMetricTypeMemVirtual, ## !< OSD_MemInfo::MemVirtual
    MessageMetricTypeMemWorkingSet, ## !< OSD_MemInfo::MemWorkingSet
    MessageMetricTypeMemWorkingSetPeak, ## !< OSD_MemInfo::MemWorkingSetPeak
    MessageMetricTypeMemSwapUsage, ## !< OSD_MemInfo::MemSwapUsage
    MessageMetricTypeMemSwapUsagePeak, ## !< OSD_MemInfo::MemSwapUsagePeak
    MessageMetricTypeMemHeapUsage ## !< OSD_MemInfo::MemHeapUsage



























