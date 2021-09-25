# Introduction
This approach used `c2nim`.

The way of working is trying to process each header:
```bash
c2nim --cpp --header --out:gp_Pnt.nim occt.c2nim /usr/include/opencascade/gp_Pnt.hxx
```
We can inspect `gp_Pnt.nim` content to see if it is satisfying.

It is also interesting to execute:

```bash
c2nim --cpp --header --debug --strict --out:gp_Pnt.nim occt.c2nim /usr/include/opencascade/gp_Pnt.hxx
```

Modify the file `occt.c2nim` until we have a working wrapper.

