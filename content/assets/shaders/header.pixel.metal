cbuffer PerFramePixelCB {
float3 vCamera;
float4 TIME;
float4 TERRAIN_XFORM;
float4 TERRAIN_BLEND_DATA;
float3 SHADOW_COLOR;
float3 SHADOW_COLOR_COMPLEMENT;
float4 cDepthConversionParams;
float3 SUN_LIGHT_COLOR;
float3 SUN_LIGHT_DIRECTION;
float LIGHT_MAP_COLOR_SCALE;
float3 ENV_FOG_COLOR;
float3 ENV_FOG_ALT_COLOR;
float4 ENV_FOG_START_END_SCALE_EMISSIVE_REMAP;
float4 FOG_COLOR;
float4 FOG_OVERLAY_UV_ANIMATE;
float4 FOW_EDGE_CONTROL;
float4 AMBIENT_COLOR;
float3 SUN_LIGHT_DIRECTION_FOR_SPEC;
};
cbuffer CharacterPerDrawPS {
float4 DEPTH_SCALE_OFFSET;
float3 SELF_ILLUMINATION;
float4 OUTLINE_MOD;
float4 TINT_COLOR;
float4 kGrassFade;
float2 LIGHTGRID_SCALE;
};
cbuffer CharacterPerRenderPassPS {
float4 mSolidColor;
};
cbuffer PostEffectPixelCB {
float4 COLOR_OVERRIDE_PARAMS;
float4 MAP_COLORIZATION_COLOR;
float POST_EFFECT_STRENGTH;
};
cbuffer DebugPixelCB {
float2 MAIN_TEX_SIZE;
float4 cClipToUVsScaleAndBias;
};
cbuffer UIPerPassPS {
float4 UI_COLOR;
};
cbuffer CloudsFeaturePS {
float3 CloudsSunColor;
float4 CloudsScaleBias[3];
};
cbuffer EnvironmentTransitionPixelCB {
float2 TransitionFactorAndDirection;
};
sampler2D sDepthTexture;
sampler2D SAMPLER_BACK_BUFFER_COPY;
sampler2D BLOOM_TEXTURE;
sampler2D SAMPLER_GAMMA_LOOK_UP;
sampler2D TERRAIN_BLEND;
samplerCUBE ENV_CUBE;
sampler2D FOGLIGHTING;
sampler2D MIP_COLORS_TEX;
sampler2D UI_PRIMARY_TEXTURE;
sampler2D FOW_MAP : register(s14);
sampler2D CLOUDS_TEXTURE;
sampler2D SHADOW_MAP : register(s12);
sampler2D COLORMAP;
sampler2D ShadowMapBlurInput;
