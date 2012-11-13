//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//
///
// Buffer Definitions: 
//
// cbuffer cbPS
// {
//
//   uint4 g_param;                     // Offset:    0 Size:    16
//
// }
//
// Resource bind info for buffer
// {
//
//   float4 $Element;                   // Offset:    0 Size:    16
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// buffer                            texture  struct         r/o    0        1
// cbPS                              cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xy  
// TEXCOORD                 0   xy          1     NONE   float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[1], immediateIndexed
dcl_resource_structured t0, 16 
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_output o0.xyzw
dcl_temps 1
add r0.xy, v0.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
utof r0.z, cb0[0].x
mad r0.x, r0.y, r0.z, r0.x
ftou r0.x, r0.x
ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) o0.xyzw, r0.x, l(0), t0.xyzw
ret 
// Approximately 6 instruction slots used
