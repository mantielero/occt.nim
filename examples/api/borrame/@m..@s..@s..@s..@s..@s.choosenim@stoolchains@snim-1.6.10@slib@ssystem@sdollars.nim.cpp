/* Generated by Nim Compiler v1.6.10 */
/* Compiled for: Linux, amd64, gcc */
/* Command for C compiler:
   g++ -c -std=gnu++14 -funsigned-char  -w -fmax-errors=3 -fpermissive -I/usr/include/opencascade/ -I/usr/import/opencascade/ -O3 -fno-strict-aliasing -fno-ident   -I/home/jose/.choosenim/toolchains/nim-1.6.10/lib -I/home/jose/src/nimlang/occt.nim/examples/api -o /home/jose/src/nimlang/occt.nim/examples/api/borrame/@m..@s..@s..@s..@s..@s.choosenim@stoolchains@snim-1.6.10@slib@ssystem@sdollars.nim.cpp.o /home/jose/src/nimlang/occt.nim/examples/api/borrame/@m..@s..@s..@s..@s..@s.choosenim@stoolchains@snim-1.6.10@slib@ssystem@sdollars.nim.cpp */
#define NIM_INTBITS 64

#include "nimbase.h"
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
struct NimStringDesc;
struct TGenericSeq;
struct TGenericSeq {
NI len;
NI reserved;
};
struct NimStringDesc : public TGenericSeq {
NIM_CHAR data[SEQ_DECL_SIZE];
};
N_LIB_PRIVATE N_NIMCALL(void, addInt__stdZprivateZdigitsutils_167)(NimStringDesc*& result, NI64 x);
static N_INLINE(void, addInt__stdZprivateZdigitsutils_189)(NimStringDesc*& result, NI x);
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, dollar___systemZdollars_6)(NI64 x) {
	NimStringDesc* result;
	result = NIM_NIL;
	addInt__stdZprivateZdigitsutils_167(result, x);
	return result;
}
static N_INLINE(void, addInt__stdZprivateZdigitsutils_189)(NimStringDesc*& result, NI x) {
	addInt__stdZprivateZdigitsutils_167(result, ((NI64) (x)));
}
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, dollar___systemZdollars_3)(NI x) {
	NimStringDesc* result;
	result = NIM_NIL;
	addInt__stdZprivateZdigitsutils_189(result, x);
	return result;
}
