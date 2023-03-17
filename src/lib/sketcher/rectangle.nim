import ../../wrapper/occt_wrapper
import sketcher2d

proc rectangle*[A,B:SomeNumber](a: A; b: B):TopoDS_Wire =
  start(-a/2, -b/2).hline(a).vline(b).hline(-a).vline(-b)