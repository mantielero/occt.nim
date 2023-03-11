/* Generated by Nim Compiler v1.6.10 */
/* Compiled for: Linux, amd64, gcc */
/* Command for C compiler:
   g++ -c -std=gnu++14 -funsigned-char  -w -fmax-errors=3 -fpermissive -I/usr/include/opencascade/ -I/usr/import/opencascade/ -O3 -fno-strict-aliasing -fno-ident   -I/home/jose/.choosenim/toolchains/nim-1.6.10/lib -I/home/jose/src/nimlang/occt.nim/examples/api -o /home/jose/src/nimlang/occt.nim/examples/api/borrame/@m..@s..@ssrc@slib@sgeom@sgeom.nim.cpp.o /home/jose/src/nimlang/occt.nim/examples/api/borrame/@m..@s..@ssrc@slib@sgeom@sgeom.nim.cpp */
#define NIM_INTBITS 64

#include "nimbase.h"
#include "gp_Pnt.hxx"
#include "Standard_Handle.hxx"
#include "Geom_Plane.hxx"
#include "Geom_ElementarySurface.hxx"
#include "Geom_Surface.hxx"
#include "Geom_Geometry.hxx"
#include "Standard_Transient.hxx"
#undef LANGUAGE_C
#undef MIPSEB
#undef MIPSEL
#undef PPC
#undef R3000
#undef R4000
#undef i386
#undef linux
#undef mips
#undef near
#undef far
#undef powerpc
#undef unix
#define nimfr_(x, y)
#define nimln_(x, y)
typedef opencascade::handle<Geom_Plane> TY__N31bfHM17sbp19byE9cYw8hw;
typedef opencascade::handle<Geom_Surface> TY__Nv8CuwQI9bu9bXCzGbZytEGw;
N_LIB_PRIVATE N_NIMCALL(gp_Pnt, location__OOZOOZsrcZlibZgeomZgeom_42)(TY__N31bfHM17sbp19byE9cYw8hw aPlane) {
	gp_Pnt result;
	result = (* aPlane).Location();
	return result;
}
N_LIB_PRIVATE N_NIMCALL(TY__N31bfHM17sbp19byE9cYw8hw, toPlane__OOZOOZsrcZlibZgeomZgeom_33)(TY__Nv8CuwQI9bu9bXCzGbZytEGw aSurface) {
	TY__N31bfHM17sbp19byE9cYw8hw result;
{	result = TY__N31bfHM17sbp19byE9cYw8hw::DownCast(aSurface);
	goto BeforeRet_;
	}BeforeRet_: ;
	return result;
}
