//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//
///
// Buffer Definitions: 
//
// cbuffer CB
// {
//
//   uint g_iLevel;                     // Offset:    0 Size:     4
//   uint g_iLevelMask;                 // Offset:    4 Size:     4
//   uint g_iWidth;                     // Offset:    8 Size:     4 [unused]
//   uint g_iHeight;                    // Offset:   12 Size:     4 [unused]
//
// }
//
// Resource bind info for Data
// {
//
//   uint $Element;                     // Offset:    0 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// Data                                  UAV  struct         r/w    0        1
// CB                                cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[1], immediateIndexed
dcl_uav_structured u0, 4
dcl_input vThreadIDInGroupFlattened
dcl_input vThreadID.x
dcl_temps 2
dcl_tgsm_structured g0, 4, 512
dcl_thread_group 512, 1, 1
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r0.x, vThreadID.x, l(0), u0.xxxx
store_structured g0.x, vThreadIDInGroupFlattened.x, l(0), r0.x
sync_g_t
ushr r0.x, cb0[0].x, l(1)
and r0.y, vThreadID.x, cb0[0].y
ine r0.y, r0.y, l(0)
mov r0.z, r0.x
loop 
  uge r0.w, l(0), r0.z
  breakc_nz r0.w
  not r0.w, r0.z
  and r0.w, r0.w, vThreadIDInGroupFlattened.x
  ld_structured r0.w, r0.w, l(0), g0.xxxx
  or r1.x, r0.z, vThreadIDInGroupFlattened.x
  ld_structured r1.x, r1.x, l(0), g0.xxxx
  uge r0.w, r1.x, r0.w
  ieq r0.w, r0.y, r0.w
  xor r1.x, r0.z, vThreadIDInGroupFlattened.x
  ld_structured r1.x, r1.x, l(0), g0.xxxx
  ld_structured r1.y, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  movc r0.w, r0.w, r1.x, r1.y
  sync_g_t
  store_structured g0.x, vThreadIDInGroupFlattened.x, l(0), r0.w
  sync_g_t
  ushr r0.z, r0.z, l(1)
endloop 
ld_structured r0.x, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
store_structured u0.x, vThreadID.x, l(0), r0.x
ret 
// Approximately 29 instruction slots used
