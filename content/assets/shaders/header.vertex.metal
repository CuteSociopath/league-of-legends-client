cbuffer PerFrameVertexCB {
float4x4 mProj;
float3 vCamera;
float4 vLightColor;
float4 vLightVec1;
float4 TIME;
float4 TERRAIN_XFORM;
float4x4 VIEW_PROJECTION_MATRIX;
float4x4 SHADOW_PROJECTION_MATRIX;
float4x4 SCREEN_MATRIX;
float4 c_fogData[2];
float4 FOG_OF_WAR_PARAMS;
float4 FOG_OF_WAR_ALWAYS_BELOW_Y;
float4 FOW_HEIGHT_FADE;
};
cbuffer CharacterPerDrawVertexCB {
float4x4 mWorld;
float4 LIGHTGRID_COLORS[6];
};
cbuffer BonesCB : register(b0) {
float4x3 BONES[256];
};
cbuffer FontVertexCB {
float4x4 FONT_MATRIX;
};
cbuffer ShadowPassVS {
float4x4 mShadowProj;
float4 c_smFade;
};
cbuffer UIPerPassVS {
float4x4 UI_ELEMENT_MATRIX;
float4 UI_USER_PARAMS;
};
cbuffer GrassDisortVS {
float4 GrassDistortSpheres[10];
};
cbuffer EnvironmentTransitionVertexCB {
float2 TransitionFactorAndDirection;
};
