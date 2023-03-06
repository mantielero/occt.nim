{.passL:"-lTKService".}
{.passC:"-I/usr/include/opencascade/" .}
when defined(linux):
  {.passL:"-lX11" .}

import xw_types
import xw_window

export xw_types
export xw_window